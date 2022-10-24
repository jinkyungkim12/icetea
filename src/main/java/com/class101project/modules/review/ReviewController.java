package com.class101project.modules.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/review/")
public class ReviewController {
	
	@Autowired
	ReviewServiceImpl service;
	
	// 페이징
	
		public void setSearchAndPaging(ReviewVo vo) throws Exception{
			
			vo.setParamsPaging(service.selectOneCount(vo));
			
		}
	
	
		@RequestMapping(value = "reviewList")
		public String reviewList(@ModelAttribute("vo") ReviewVo vo, Model model) throws Exception {
			
			System.out.println("vo.getShValue(): " + vo.getShValue());
			System.out.println("vo.getShOption(): " + vo.getShOption());
			System.out.println("vo.getShdelNY(): " + vo.getShdelNY());
			System.out.println("vo.getSeq(): " + vo.getSeq());
			setSearchAndPaging(vo);
			
			if (vo.getTotalRows() > 0) {
			List<Review> list = service.selectListxdmin(vo);
			model.addAttribute("list", list);
			}
			
			return "/infra/review/xdmin/reviewList";
		}
	
//		@RequestMapping(value = "reviewForm")
//		public String reviewForm(@ModelAttribute("vo") ReviewVo vo, Model model) throws Exception{
//			
//			System.out.println("vo.getSeq(): " + vo.getSeq());
//			
//			
//			
//			return "/infra/review/xdmin/reviewForm";
//		}
		
		@RequestMapping(value = "reviewForm")
		public String reviewForm(@ModelAttribute("vo") ReviewVo vo, Model model) throws Exception{
			
			System.out.println("vo.getSeq(): " + vo.getSeq());
			
			List<Review> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			return "infra/review/user/reviewForm";
		}
	
	// 등록 
	
		@RequestMapping(value = "reviewInst")
		public String reviewInst(ReviewVo vo, Review dto, RedirectAttributes redirectAttributes) throws Exception {
			
			service.insert(dto);
			
			vo.setSeq(dto.getSeq());
			redirectAttributes.addFlashAttribute("vo", vo);
			
			return "redirect:/review/reviewForm";
		}
//	
//		@RequestMapping(value = "reviewUpdt")
//		public String reviewUpdt(ReviewVo vo, Review dto, RedirectAttributes redirectAttributes) throws Exception {
//			
//			service.totalUpdate(dto);
//			redirectAttributes.addFlashAttribute("vo", vo);
//			return "redirect:/review/reivewForm";
//		}
//	
	// 삭제
		
//		@RequestMapping(value = "reviewUele")
//		public String reviewUele(ReviewVo vo, Review dto, RedirectAttributes redirectAttributes) throws Exception {
//			
//			service.uelete(dto);
//			redirectAttributes.addFlashAttribute("vo", vo);
//			return "redirect:/review/reviewList";
//		}
//		
//		@RequestMapping(value = "reviewDele")
//		public String reviewDele(ReviewVo vo, RedirectAttributes redirectAttributes) throws Exception {
//			
//			service.delete(vo);
//			redirectAttributes.addFlashAttribute("vo", vo);
//			return "redirect:/review/reviewList";
//		}
}
