package com.class101project.modules.order;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.class101project.modules.code.CodeServiceImpl;

@Controller
@RequestMapping(value = "/order/")
public class OrderController {
	
	@Autowired
	OrderServiceImpl service;
	
	public void setSearchAndPaging(OrderVo vo) throws Exception{
		
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShDelNY(vo.getShDelNY() == null ? 0 : vo.getShDelNY());
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
		
		Order itemC = service.selectOrderComplete(vo);
		model.addAttribute("itemC", itemC);
		
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
	
	// excel Download
	
	@RequestMapping(value = "excelDownload")
    public void excelDownload(OrderVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Order> list = service.selectList(vo);
			
//						Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();	
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//				        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//				        Header
	        String[] tableHeader = {"Seq", "이름", "아이디", "이메일", "클래스명", "정가", "할인금액", "쿠폰할인금액", "최종가격", "결제수단", "삭제여부", "주소", "주문날짜"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//				        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//				            String type: null 전달 되어도 ok
//				            int, date type: null 시 오류 발생 하므로 null check
//				            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getId());
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getEmail());
	        	
	        	cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getTitle());
	        	
	        	cell = row.createCell(5);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getPrice());
	        	
	        	cell = row.createCell(6);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getPriceDiscount());
	        	
	        	cell = row.createCell(7);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCouponDiscount());
	        	
	        	cell = row.createCell(8);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getFinalPrice());
	        	
	        	cell = row.createCell(9);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getPay() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(""+list.get(i).getPay()));
	        	
	            cell = row.createCell(10);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getDelNY() == 0 ? "NO" : "YES");
	            
	            cell = row.createCell(11);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getAddress());
	            
	            cell = row.createCell(12);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getOrderDate());
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//				        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
	
}
