package com.class101project.modules.product;

import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/product/")
public class ProductController {
	
		@RequestMapping(value = "productView_first", method = RequestMethod.GET)
		public String productView_first(Locale locale, Model model) {
			return "/infra/classProduct/productView_first";
		}
		
		@RequestMapping(value = "productView_second", method = RequestMethod.GET)
		public String productView_second(Locale locale, Model model) {
			return "/infra/classProduct/productView_second";
		}
		
		@RequestMapping(value = "productView_third", method = RequestMethod.GET)
		public String productView_third(Locale locale, Model model) {
			return "/infra/classProduct/productView_third";
		}
		
		@RequestMapping(value = "productView_forth", method = RequestMethod.GET)
		public String productView_forth(Locale locale, Model model) {
			return "/infra/classProduct/productView_forth";
		}
					
				
}