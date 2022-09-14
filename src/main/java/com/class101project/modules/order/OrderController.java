package com.class101project.modules.order;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/order/")
public class OrderController {

	@RequestMapping(value = "orderList", method = RequestMethod.GET)
	public String orderList(Locale locale, Model model) {
		return "/infra/order/xdmin/orderList";
	}
	
	@RequestMapping(value = "orderRegFormOption", method = RequestMethod.GET)
	public String orderRegFormFirst(Locale locale, Model model) {
		return "/infra/order/user/orderRegFormFirst";
	}
	
	@RequestMapping(value = "orderRegForm", method = RequestMethod.GET)
	public String orderRegForm(Locale locale, Model model) {
		return "/infra/order/user/orderRegForm";
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
