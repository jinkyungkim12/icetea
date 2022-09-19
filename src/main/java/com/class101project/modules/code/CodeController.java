package com.class101project.modules.code;
//6. controller
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

// import com.class101project.common.constants.Constants;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	
	public void setSearchAndPaging(CodeVo vo) throws Exception{
		
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShCodeDelNY(vo.getShCodeDelNY() == null ? 0 : vo.getShCodeDelNY());
		
	}
	
	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShCodeDelNY(): " + vo.getShCodeDelNY());
		setSearchAndPaging(vo);
		
		if (vo.getTotalRows() > 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return "infra/code/xdmin/codeList";
	}
	
		
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Code item = service.selectOne(vo);
//		model.addAttribute("item", result);
		model.addAttribute("item", item);
		return "infra/code/xdmin/codeForm";
	}
	
//	@SuppressWarnings(value={"all"})
	@RequestMapping(value = "codeInst")
	public String codeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeForm";
		
//		if(Constants.INSERT_AFTER_TYPE == 1) {
//			return "redirect:/code/codeForm";
//		} else {
//			return "redirect:/code/codeList";
//		}
		
		
	}
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeForm";
	}
	
	@RequestMapping(value = "codeUele")
	public String codeUele(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDele")
	public String codeDele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeList";
	}
	
	
//	@RequestMapping(value = "codeView")
//	public String codeView(CodeVo vo, Model model) throws Exception {
//		
//		Code result = service.selectOne(vo);
//		model.addAttribute("item", result);
//		return "infra/code/xdmin/codeForm";
//	}
}
