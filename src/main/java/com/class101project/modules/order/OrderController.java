package com.class101project.modules.order;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@RequestMapping(value = "orderForm")
	public String orderForm(@ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Order item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		
		return "/infra/order/xdmin/orderForm";
	}
	
	
	@RequestMapping(value = "orderRegForm") 
	public String orderRegForm(@ModelAttribute("vo") OrderVo vo, Model model) throws Exception{
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		
		Order item = service.selectOneOrder(vo);
		model.addAttribute("item", item);
		
		Order itemImg = service.selectProductImg(vo);
		model.addAttribute("itemImg", itemImg);
		
		return "/infra/order/user/orderRegForm";
	}

	
	@RequestMapping(value = "orderInst")
	public String orderInst(OrderVo vo, Order dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/order/orderForm";
		
//		if(Constants.INSERT_AFTER_TYPE == 1) {
//			return "redirect:/code/codeForm";
//		} else {
//			return "redirect:/code/codeList";
//		}
		
		
	}
	
	
	@RequestMapping(value = "orderUserInst")
	public String orderUserInst(@ModelAttribute("vo") OrderVo vo, Order dto, Model model) throws Exception {
		
		service.orderUserInst(dto);
		
		System.out.println("dto.getMember_seq() : " + dto.getmSeq());
		vo.setSeq(dto.getSeq());

		Order item = service.selectOneOrder(vo);
		model.addAttribute("item", item);
		
		Order itemImg = service.selectProductImg(vo);
		model.addAttribute("itemImg", itemImg);
		
		
		return "/infra/order/user/orderComplete";
		
	}
	
	
	@RequestMapping(value = "orderUpdt")
	public String orderUpdt(OrderVo vo, Order dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/order/orderForm";
	}
	
	
	
	@RequestMapping(value = "mypageOrderView")
	public String mypageOrderView(@ModelAttribute("vo") OrderVo vo, Order dto,  Model model, HttpSession httpSession) throws Exception{
		
		vo.setSeq(dto.getSeq());
		httpSession.setAttribute("sessSeq", vo.getmSeq());
		
		Order item = service.selectOneView(vo);
		model.addAttribute("item", item);
		
		return "/infra/member/user/mypageOrderView";
	}
	
	@RequestMapping(value = "mypageOrderList")
	public String mypageOrderList(@ModelAttribute("vo") OrderVo vo, Order dto,  Model model, HttpSession httpSession) throws Exception{
		
//		System.out.println("vo.getShValue(): " + dto.getmSeq());
//		System.out.println("vo.getShValue(): " + vo.getShValue());
//		System.out.println("vo.getShOption(): " + vo.getShOption());
		httpSession.setAttribute("sessSeq", vo.getmSeq());
		
		List<Order> listOrder = service.selectListOrder(vo);
		model.addAttribute("listOrder", listOrder);

		System.out.println("vo.getSeq : " + vo.getPdSeq());
		System.out.println("dto.getSeq : " + dto.getPdSeq());
		
		return "/infra/member/user/mypageOrderList";
	}
	
	
	@RequestMapping(value = "orderComplete", method = RequestMethod.GET)
	public String orderViewFormOther(Locale locale, Model model) {
		return "/infra/order/user/orderComplete";
	}
	
	
}
