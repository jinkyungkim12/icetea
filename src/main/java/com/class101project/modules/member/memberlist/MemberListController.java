package com.class101project.modules.member.memberlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/memberList/")
public class MemberListController {

	
		@Autowired
		MemberListServiceImpl service;
		

		@RequestMapping(value = "memberList")
		public String codeGroupList(Model model) throws Exception {

			List<MemberList> list = service.selectList();
			model.addAttribute("list", list);
			
			return "infra/member/xdmin/memberList";
		}
	
}
