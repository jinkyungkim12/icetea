package com.class101project.modules.order;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/order/")
public class OrderController {
	
	@Autowired
	OrderServiceImpl service;
	
	public void setSearchAndPaging(OrderVo vo) throws Exception{
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "orderList")
	public String orderList(@ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNY(): " + vo.getShDelNY());
		setSearchAndPaging(vo);
		
		if (vo.getTotalRows() > 0) {
			List<Order> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return "/infra/order/xdmin/orderList";
	}
	
	@RequestMapping(value = "orderRegForm")
	public String orderRegForm(@ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Order item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		
		return "/infra/order/user/orderRegForm";
	}
	
	@RequestMapping(value = "orderRegFormOption", method = RequestMethod.GET)
	public String orderRegFormOption(Locale locale, Model model) {
		return "/infra/order/user/orderRegFormOption";
	}
	
	@RequestMapping(value = "orderViewForm", method = RequestMethod.GET)
	public String orderViewForm(Locale locale, Model model) {
		return "/infra/order/user/orderViewForm";
	}
	
	@RequestMapping(value = "orderViewFormOther", method = RequestMethod.GET)
	public String orderViewFormOther(Locale locale, Model model) {
		return "/infra/order/user/orderViewFormOther";
	}
	
	@RequestMapping(value = "orderRegFormOther", method = RequestMethod.GET)
	public String orderRegFormOther(Locale locale, Model model) {
		return "/infra/order/user/orderRegFormOther";
	}
	
}
