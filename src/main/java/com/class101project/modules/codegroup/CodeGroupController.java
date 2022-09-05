package com.class101project.modules.codegroup;
//6. controller
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {

		System.out.println("vo.getShCgValue(): " + vo.getShCgValue());
		System.out.println("vo.getShCgOption(): " + vo.getShCgOption());
		System.out.println("vo.getShDelNY(): " + vo.getShDelNY());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
}
