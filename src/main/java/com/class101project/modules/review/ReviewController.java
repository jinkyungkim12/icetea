package com.class101project.modules.review;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/review/")
public class ReviewController {
	
	@RequestMapping(value = "reviewList", method = RequestMethod.GET)
	public String reviewList(Locale locale, Model model) {
		return "/infra/review/xdmin/reviewList";
	}
	
	@RequestMapping(value = "reviewForm", method = RequestMethod.GET)
	public String reviewForm(Locale locale, Model model) {
		return "/infra/review/user/reviewForm";
	}
	
	@RequestMapping(value = "reviewModForm", method = RequestMethod.GET)
	public String reviewModForm(Locale locale, Model model) {
		return "/infra/review/user/reviewModForm";
	}


}
