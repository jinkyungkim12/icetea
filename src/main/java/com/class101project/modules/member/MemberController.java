package com.class101project.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.class101project.modules.code.CodeServiceImpl;


@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	
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
	
	
	public void setSearchAndPaging(MemberVo vo) throws Exception{
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
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
		
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setEmail(dto.getEmailInsert() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
		System.out.println("dto.getEmail: " + dto.getEmail());
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	@RequestMapping(value = "userRegForm")
	public String userRegForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/member/user/userRegForm";
	}
	
	@RequestMapping(value = "userInst")
	public String userInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setEmail(dto.getEmailInsert() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
		System.out.println("dto.getEmail: " + dto.getEmail());
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "infra/member/user/userComplete";
	}
	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberForm";
	}
	
	@RequestMapping(value = "memberUele")
	public String memberUele(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberList";
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
	
	@RequestMapping(value = "mypageModForm")
	public String mypageModForm() throws Exception {
		
		return "infra/member/user/mypageModForm";
	}	
	
	@RequestMapping(value = "mypage")
	public String mypage() throws Exception {
		
		return "infra/member/user/mypage";
	}	
	
	@RequestMapping(value = "mypageGrade")
	public String mypageGrade() throws Exception {
		
		return "infra/member/user/mypageGrade";
	}	
	
	@RequestMapping(value = "dmin_login")
	public String dmin_login() throws Exception {
		
		return "infra/member/xdmin/dmin_login";
	}	
}
