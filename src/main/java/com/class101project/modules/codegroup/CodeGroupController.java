package com.class101project.modules.codegroup;
//6. controller
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception{
			
			vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {

		System.out.println("vo.getShCgValue(): " + vo.getShCgValue());
		System.out.println("vo.getShCgOption(): " + vo.getShCgOption());
		System.out.println("vo.getShDelNY(): " + vo.getShDelNY());
		setSearchAndPaging(vo);
		
		if (vo.getTotalRows() > 0) {
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		}
		return "infra/codegroup/xdmin/codeGroupList";
		
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupForm";
	}

	
//	@SuppressWarnings(value={"all"})
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	

	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(@ModelAttribute("vo") CodeGroupVo vo, CodeGroup dto,  Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		String returnString = "";
		
		if(vo.getFormNY() == 1) {
			// form uelete
			
			service.uelete(dto);
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/codeGroup/codeGroupList";

		} else {
			// list uelete
			
			for(CodeGroupVo vItem : vo.getSeqVoList()) {
				
				service.ueleteList(vItem.getSeq());
				
				setSearchAndPaging(vo);
				
				if(vo.getTotalRows() > 0) {
					List<CodeGroup> list = service.selectList(vo);
					model.addAttribute("list", list);
				}

				returnString = "infra/codegroup/xdmin/codeGroupList";
			}
			
		}
		
		return returnString;
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupList";
	}
	
//	only for member
//	@RequestMapping(value = "codeGroupView")
//	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception {
//		
//		CodeGroup result = service.selectOne(vo);
//		model.addAttribute("item", result);
//		return "infra/codegroup/xdmin/codeGroupForm";
//	}
}
