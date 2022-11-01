package com.class101project.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.class101project.common.util.UtilSecurity;
import com.class101project.modules.code.CodeServiceImpl;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.exception.NurigoMessageNotReceivedException;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.service.DefaultMessageService;



@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	
	//SMS 인증
	@ResponseBody
	@RequestMapping(value ="checkSms")
	public Map<String,Object> checkSms (Member dto) throws Exception {
		
		System.out.println("폰 번호:" + dto.getPhone());
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		//4자리 난수 생성
		String rndNo = "1234";
		
		DefaultMessageService messageService =  NurigoApp.INSTANCE.initialize("NCSFMVRNRAYTZCGQ", "C9RQ2RJERHZRDWBJHETJ7ZEHXIYEV0TI", "https://api.solapi.com");
		// Message 패키지가 중복될 경우 net.nurigo.sdk.message.model.Message로 치환하여 주세요
		Message message = new Message();
		message.setFrom("01052506950");
		message.setTo(dto.getPhone());
		message.setText("안녕하세요 진경이의 CLASS 101 인증번호 ["+ rndNo +"] 입니다. ");

		try {
		  // send 메소드로 ArrayList<Message> 객체를 넣어도 동작합니다!
		  messageService.send(message);
		} catch (NurigoMessageNotReceivedException exception) {
		  // 발송에 실패한 메시지 목록을 확인할 수 있습니다!
		  System.out.println(exception.getFailedMessageList());
		  System.out.println(exception.getMessage());
		} catch (Exception exception) {
		  System.out.println(exception.getMessage());
		}
		
		result.put("code", rndNo);
		
		return result;
	}
	
	// 아이디 중복체크 
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	
	// 페이징
	
	public void setSearchAndPaging(MemberVo vo) throws Exception{
		
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShdelNY(vo.getShdelNY() == null ? 0 : vo.getShdelNY());
	}
	
	// 로그인 세션
	
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, MemberVo vo, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		Member rtMember = service.selectOneLogin(dto);

		//Member rtMemberImg = service.selectMemberImg(dto.setSeq(null));
		vo.setSeq(rtMember.getSeq());
		
		Member rtMemberImg = service.selectMemberImg(vo);
		
		
		if (rtMember != null ) {
			httpSession.setMaxInactiveInterval(60 * 120);
			httpSession.setAttribute("sessSeq", rtMember.getSeq());
			httpSession.setAttribute("sessId", rtMember.getId());
			httpSession.setAttribute("sessName", rtMember.getName());
			httpSession.setAttribute("sessEmail", rtMember.getEmail());
			if(rtMemberImg != null)
				httpSession.setAttribute("sessUserImage", rtMemberImg.getPath()+rtMemberImg.getUuidName());
			
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
	
	// 로그아웃
	
	
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	// 마이페이지
	
	@RequestMapping(value = "mypage")
	public String mypage(Member dto, MemberVo vo, HttpSession httpSession) throws Exception {
		System.out.println("dto.getSeq() : " + dto.getSeq());
		System.out.println("vo.getSeq() : " + vo.getSeq());
		return "infra/member/user/mypage";
	}
	
	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShdelNY(): " + vo.getShdelNY());
		System.out.println("vo.getShGender(): " + vo.getShGender());
		setSearchAndPaging(vo);
		
		if (vo.getTotalRows() > 0) {
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		}
		return "infra/member/xdmin/memberList";
	}
		
	
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		Member item1 = service.selectOneAdd(vo);
		model.addAttribute("item1", item1);
		
		return "infra/member/xdmin/memberForm";
	}
	
	// 등록 
	
	@RequestMapping(value = "memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setEmail(dto.getEmailInsert() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
		System.out.println("dto.getEmail: " + dto.getEmail());
		
		service.totalInsert(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	@RequestMapping(value = "userInst")
	public String userInst(HttpSession httpSession, MemberVo vo, Member dto) throws Exception {
		
		dto.setEmail(dto.getEmailInsert() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
		System.out.println("dto.getEmail: " + dto.getEmail());
		service.totalInsert(dto);
		
		Member rtMember = service.selectOneLogin(dto);
		
		httpSession.setAttribute("sessSeq", rtMember.getSeq());
		httpSession.setAttribute("sessId", rtMember.getId());
		httpSession.setAttribute("sessName", rtMember.getName());
		httpSession.setAttribute("sessEmail", rtMember.getEmail());
		
		vo.setSeq(rtMember.getSeq());
		Member rtMemberImg = service.selectMemberImg(vo);
		
		httpSession.setAttribute("sessUserImage", rtMemberImg.getPath()+rtMemberImg.getUuidName());
		
		return "infra/member/user/userComplete";
	}
	
	
	// 업데이트
	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.totalUpdate(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberForm";
	}

	
	@RequestMapping(value = "mypageUpdt")
	public String mypageUpdt(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		String seq = (String) httpSession.getAttribute("sessSeq");
		
		dto.setSeq(seq);
		
		service.totalUpdate2(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/mypageModForm";
	}
	
	@RequestMapping(value = "mypageModForm")
	public String mypageModForm(MemberVo vo, Member dto, Model model, HttpSession httpSession) throws Exception {
		
		String seq = (String) httpSession.getAttribute("sessSeq");
		vo.setSeq(seq);
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		Member itemAdd = service.selectOneAdd(vo);
		model.addAttribute("itemAdd", itemAdd);
		
		Member itemImage = service.selectMemberImg(vo);
		model.addAttribute("itemImage",itemImage);
		
		return "infra/member/user/mypageModForm";
	}	
	
	
	// 삭제
	
	@RequestMapping(value = "memberUele")
	public String memberUele(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		String returnString = "";
		
		if(vo.getFormNY() == 1) {
			// form에서 삭제
			service.uelete(dto); 
			 redirectAttributes.addFlashAttribute("vo", vo);
			 returnString = "redirect:/member/memberList";
			
		} else { //리스트에서 uelete
			
			for (MemberVo vItem : vo.getSeqVoList()) {
				service.ueleteList(vItem.getSeq());
				
				setSearchAndPaging(vo);
				if (vo.getTotalRows() > 0) {
					List<Member> list = service.selectList(vo);
					model.addAttribute("list", list);
				}
				
				returnString = "infra/member/xdmin/memberList";
			}
		}
		 
		return returnString;
	}
	
	@RequestMapping(value = "memberDele")
	public String memberpDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberList";
	}
	
//	@RequestMapping(value = "memberView")
//	public String memberView(MemberVo vo, Model model) throws Exception {
//		
//		Member result = service.selectOne(vo);
//		model.addAttribute("item", result);
//		return "infra/member/xdmin/memberForm";
//	}
	
//	@RequestMapping(value = "main_home")
//	public String main_home() throws Exception {
//		
//		return "infra/member/user/main_home";
//	}
	
	@RequestMapping(value = "memberLogin")
	public String memberLogin() throws Exception {
		
		return "infra/member/user/login";
	}
	
	@RequestMapping(value = "memberLoginResult")
	public String memberLoginResult() throws Exception {
		
		return "infra/member/user/loginResult";
	}
	
	@RequestMapping(value = "userRegForm")
	public String userRegForm() throws Exception {
		
		return "infra/member/user/userRegForm";
	}	
	
	@RequestMapping(value = "IdPassword")
	public String IdPassword() throws Exception {
		
		return "infra/member/user/IdPassword";
	}
	
	
	@RequestMapping(value = "mypageGrade")
	public String mypageGrade() throws Exception {
		
		return "infra/member/user/mypageGrade";
	}	
	
	@RequestMapping(value = "dmin_login")
	public String dmin_login() throws Exception {
		
		return "infra/member/xdmin/dmin_login";
	}	
	
	
//	@RequestMapping(value = "imgLoad")
//	public String imgLoad(Model model, Member dto) throws Exception {
//		
//		dto.setPseq("seq");
//		
//		Member item3 = service.selectMemberImg(dto);
//		
//		model.addAttribute("item3",item3);
//		
//		return "infra/member/user/test";
//	}
}
