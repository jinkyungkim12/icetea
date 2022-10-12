package com.class101project;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.class101project.modules.product.Product;
import com.class101project.modules.product.ProductServiceImpl;
import com.class101project.modules.product.ProductVo;

@Controller
public class HomeController {
	
		@Autowired
		ProductServiceImpl serviceProduct;
	
		private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
		/**
		 * Simply selects the home view to render by returning its name.
		 */
		@RequestMapping(value = "/home")
		public String home(@ModelAttribute("vo") ProductVo vo, Locale locale, Model model) throws Exception{
			
			logger.info("Welcome home! The client locale is {}.", locale);

			System.out.println("vo.getShValue(): " + vo.getShValue());
			System.out.println("vo.getShOption(): " + vo.getShOption());
			
			List<Product> listToday = serviceProduct.selectListToday(vo);
			model.addAttribute("listToday", listToday);
			
			List<Product> listMD = serviceProduct.selectListMD(vo);
			model.addAttribute("listMD", listMD);
			
			List<Product> listDC = serviceProduct.selectListDC(vo);
			model.addAttribute("listDC", listDC);
			
//			Date date = new Date();
//			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//			String formattedDate = dateFormat.format(date);
//			model.addAttribute("serverTime", formattedDate );
			
			return "/infra/product/user/home";
		}
		

		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String main_home(Locale locale, Model model){
			
			return "infra/member/user/main_home";
		}
		
		@RequestMapping(value = "/dmin_Home", method = RequestMethod.GET)
		public String dmin_Home(Locale locale, Model model) {
			return "/infra/member/xdmin/dmin_Home";
		}
		
}
