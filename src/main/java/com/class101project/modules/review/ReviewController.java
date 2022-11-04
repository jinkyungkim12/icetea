package com.class101project.modules.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/review/")
public class ReviewController {
	
	@Autowired
	ReviewServiceImpl service;
	
	// 페이징
	
		public void setSearchAndPaging(ReviewVo vo) throws Exception{
			
			vo.setParamsPaging(service.selectOneCount(vo));
			vo.setShdelNY(vo.getShdelNY() == null ? 0 : vo.getShdelNY());
			
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
			vo.setClassProduct_seq(vo.getSeq());
			
			List<Review> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			Review item = service.selectAvgReview(vo);
			model.addAttribute("item", item);
			
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
		
		@RequestMapping(value = "myreview")
		public String myreview(@ModelAttribute("vo") ReviewVo vo, Model model, HttpSession httpSession) throws Exception {
			
			httpSession.setAttribute("sessSeq", vo.getmSeq());
			System.out.println("여기보세요1: " + vo.getmSeq());
			System.out.println("여기보세요2: " + vo.getSeq());
			
			List<Review> listRV = service.selectListMyReview(vo);
			model.addAttribute("listRV", listRV);
			
			return "/infra/review/user/mypageReviewList";
		}

		
		// uelete	
		/*
		 * @RequestMapping(value = "reviewUele") public String reviewUele(ReviewVo vo,
		 * Review dto, RedirectAttributes redirectAttributes) throws Exception {
		 * dto.setSeq(vo.getSeq()); System.out.println("fkjkdfjsldkjfs: " +
		 * dto.getSeq()); service.uelete(dto);
		 * 
		 * redirectAttributes.addFlashAttribute("vo", vo); return
		 * "redirect:/review/myreview"; }
		 */

		@ResponseBody
		@RequestMapping(value = "reviewUele")
		public Map<String, Object> reviewUele(ReviewVo vo, Review dto, RedirectAttributes redirectAttributes) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			service.uelete(dto);
			returnMap.put("rt", "success");
			
			return returnMap;
		}
		
		// excel Download
		
		@RequestMapping(value = "excelDownload")
	    public void excelDownload(ReviewVo vo, HttpServletResponse httpServletResponse) throws Exception {
			
			setSearchAndPaging(vo);
			vo.setParamsPaging(service.selectOneCount(vo));

			if (vo.getTotalRows() > 0) {
				List<Review> list = service.selectListxdmin(vo);
				
//									Workbook workbook = new HSSFWorkbook();	// for xls
		        Workbook workbook = new XSSFWorkbook();	
		        Sheet sheet = workbook.createSheet("Sheet1");
		        CellStyle cellStyle = workbook.createCellStyle();        
		        Row row = null;
		        Cell cell = null;
		        int rowNum = 0;
				
//							        each column width setting	        
		        sheet.setColumnWidth(0, 2100);
		        sheet.setColumnWidth(1, 3100);

//							        Header
		        String[] tableHeader = {"Seq", "아이디", "강의번호", "카테고리", "내용", "삭제여부", "등록일"};

		        row = sheet.createRow(rowNum++);
		        
				for(int i=0; i<tableHeader.length; i++) {
					cell = row.createCell(i);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
					cell.setCellValue(tableHeader[i]);
				}

//							        Body
		        for (int i=0; i<list.size(); i++) {
		            row = sheet.createRow(rowNum++);
		            
//							            String type: null 전달 되어도 ok
//							            int, date type: null 시 오류 발생 하므로 null check
//							            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
		            
		            cell = row.createCell(0);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
		            
		            cell = row.createCell(1);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getId());
		        	
		            cell = row.createCell(2);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getClassProduct_seq());
		        	
		        	cell = row.createCell(3);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getCategory());
		        	
		        	cell = row.createCell(4);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getContent());
		        	
		            cell = row.createCell(5);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getReviewDelNY() == 0 ? "NO" : "YES");
		        	
		            cell = row.createCell(6);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getReviewRegDate());
		            
		        }

		        httpServletResponse.setContentType("ms-vnd/excel");
//							        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

		        workbook.write(httpServletResponse.getOutputStream());
		        workbook.close();
			}
	    }
		
		
//		@RequestMapping(value = "reviewUpdt")
//		public String reviewUpdt(ReviewVo vo, Review dto, RedirectAttributes redirectAttributes) throws Exception {
//			
//			service.totalUpdate(dto);
//			redirectAttributes.addFlashAttribute("vo", vo);
//			return "redirect:/review/reivewForm";
//		}
//	
	// 삭제
		
		
//		@RequestMapping(value = "reviewDele")
//		public String reviewDele(ReviewVo vo, RedirectAttributes redirectAttributes) throws Exception {
//			
//			service.delete(vo);
//			redirectAttributes.addFlashAttribute("vo", vo);
//			return "redirect:/review/reviewList";
//		}
}
