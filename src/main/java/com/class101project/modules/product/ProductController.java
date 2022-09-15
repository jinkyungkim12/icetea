package com.class101project.modules.product;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/product/")
public class ProductController {
	
	
		@Autowired
		ProductServiceImpl service;
		
		
		@RequestMapping(value = "productList")
		public String productList(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
	
			System.out.println("vo.getShValue(): " + vo.getShValue());
			System.out.println("vo.getShOption(): " + vo.getShOption());
			System.out.println("vo.getShDelNY(): " + vo.getShDelNY());
			
			List<Product> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			return "infra/product/xdmin/productList";
		}
		
			
		@RequestMapping(value = "productForm")
		public String productForm(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
			
			System.out.println("vo.getSeq(): " + vo.getSeq());
			Product result = service.selectOne(vo);
			model.addAttribute("item", result);
			return "infra/product/xdmin/productForm";
		}
		
		@RequestMapping(value = "productInst")
		public String productInst(Product dto) throws Exception {
			
			int result = service.insert(dto);
			System.out.println("controller result: " + result);
			
			return "redirect:/product/productList";
		}
		
		@RequestMapping(value = "productUpdt")
		public String productUpdt(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
			
			service.update(dto);
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/product/productList";
		}
		
		@RequestMapping(value = "codeUele")
		public String productUele(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
			
			service.uelete(dto);
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/product/productList";
		}
		
		@RequestMapping(value = "codeDele")
		public String productDele(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
			
			service.delete(vo);
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/product/productList";
		}
	
	
		@RequestMapping(value = "productView_first", method = RequestMethod.GET)
		public String productView_first(Locale locale, Model model) {
			return "/infra/classProduct/user/productView_first";
		}
		
		@RequestMapping(value = "productView_second", method = RequestMethod.GET)
		public String productView_second(Locale locale, Model model) {
			return "/infra/classProduct/user/productView_second";
		}
		
		@RequestMapping(value = "productView_third", method = RequestMethod.GET)
		public String productView_third(Locale locale, Model model) {
			return "/infra/classProduct/user/productView_third";
		}
		
		@RequestMapping(value = "productView_forth", method = RequestMethod.GET)
		public String productView_forth(Locale locale, Model model) {
			return "/infra/classProduct/user/productView_forth";
		}
		
		@RequestMapping(value = "productBestList", method = RequestMethod.GET)
		public String productBestList(Locale locale, Model model) {
			return "/infra/classProduct/user/productBestList";
		}
		
		@RequestMapping(value = "productEvent", method = RequestMethod.GET)
		public String productEvent(Locale locale, Model model) {
			return "/infra/classProduct/user/productEvent";
		}
		
		@RequestMapping(value = "productList", method = RequestMethod.GET)
		public String productList(Locale locale, Model model) {
			return "/infra/classProduct/xdmin/productList";
		}
		
		@RequestMapping(value = "productForm", method = RequestMethod.GET)
		public String productRegForm(Locale locale, Model model) {
			return "/infra/classProduct/xdmin/productForm";
		}
					
				
}