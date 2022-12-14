package com.class101project.modules.product;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/product/")
public class ProductController {
	
	
		@Autowired
		ProductServiceImpl service;
		
		public void setSearchAndPaging(ProductVo vo) throws Exception{
			
			vo.setParamsPaging(service.selectOneCount(vo));
			vo.setShDelNY(vo.getShDelNY() == null ? 0 : vo.getShDelNY());
			
		}
		
		// product List 
		
		@RequestMapping(value = "productList")
		public String productList(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception  {
			
			System.out.println("vo.getShValue(): " + vo.getShValue());
			System.out.println("vo.getShOption(): " + vo.getShOption());
			System.out.println("vo.getShDelNY(): " + vo.getShDelNY());
			setSearchAndPaging(vo);
			
			if (vo.getTotalRows() > 0) {
			List<Product> list = service.selectList(vo);
			model.addAttribute("list", list);
			}
			
			return "infra/product/xdmin/productList";
		}
		
		// product Search
		
		@RequestMapping(value = "productSearch")
		public String productSearch(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception  {
			
			System.out.println("vo.getShValue(): " + vo.getShValue());
			System.out.println("vo.getShOption(): " + vo.getShOption());
			
			List<Product> listToday = service.selectListToday(vo);
			model.addAttribute("listToday", listToday);
			
			List<Product> listMD = service.selectListMD(vo);
			model.addAttribute("listMD", listMD);
			
			List<Product> listDC = service.selectListDC(vo);
			model.addAttribute("listDC", listDC);
			
			
			return "infra/product/user/productSearch";
		}
		
		
		// product Form
		
		@RequestMapping(value = "productForm")
		public String productForm(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
			
			System.out.println("vo.getSeq(): " + vo.getSeq());
			Product result = service.selectOne(vo);
			model.addAttribute("item", result);
			return "infra/product/xdmin/productForm";
		}
		
		// productView
		
		@RequestMapping(value = "productView")
		public String productView(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception{
			
			System.out.println("vo.getSeq(): " + vo.getSeq());
			
			Product result = service.selectOne(vo);
			model.addAttribute("item", result);
			
			// ?????? ?????????
			List<Product> listContent = service.selectContent(vo);
			model.addAttribute("listContent",listContent);
			
			// Review SelectList
			List<Product> listRV = service.selectListRV(vo);
			model.addAttribute("listRV",listRV);
			
			return "/infra/product/user/productView";
		}
	
		
		
		@RequestMapping(value = "productInst")
		public String productInst(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
			
			service.insert(dto);
			service.productUploadInsert(dto);
			
			vo.setSeq(dto.getSeq());
			redirectAttributes.addFlashAttribute("vo", vo);
			
			return "redirect:/product/productForm";
		}
		
		@RequestMapping(value = "productUpdt")
		public String productUpdt(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
			
			service.update(dto);
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/product/productForm";
		}
		
		
		
		
		@RequestMapping(value = "productUele")
		public String productUele(@ModelAttribute("vo") ProductVo vo, Product dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
			
			String returnString = "";
			
			if(vo.getFormNY() == 1) {
				// form?????? ??????
				service.uelete(dto);
				redirectAttributes.addFlashAttribute("vo", vo);
				return "redirect:/product/productList";
				
				
			} else { //??????????????? uelete
				
				for (ProductVo vItem : vo.getSeqVoList()) {
					service.ueleteList(vItem.getSeq());
					
					setSearchAndPaging(vo);
					if (vo.getTotalRows() > 0) {
						List<Product> list = service.selectList(vo);
						model.addAttribute("list", list);
					}
					
					returnString = "infra/product/xdmin/productList";
				}
			}
			 
			return returnString;
		}
		
		@RequestMapping(value = "productDele")
		public String productDele(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
			
			service.delete(vo);
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/product/productList";
		}
		
		
		@RequestMapping(value = "productView_first", method = RequestMethod.GET)
		public String productView_first(Locale locale, Model model) {
			return "/infra/product/user/productView_first";
		}
		
		@RequestMapping(value = "productView_second", method = RequestMethod.GET)
		public String productView_second(Locale locale, Model model) {
			return "/infra/product/user/productView_second";
		}
		
		@RequestMapping(value = "productView_third", method = RequestMethod.GET)
		public String productView_third(Locale locale, Model model) {
			return "/infra/product/user/productView_third";
		}
		
		@RequestMapping(value = "productView_forth", method = RequestMethod.GET)
		public String productView_forth(Locale locale, Model model) {
			return "/infra/product/user/productView_forth";
		}
		
		@RequestMapping(value = "productBestList", method = RequestMethod.GET)
		public String productBestList(Locale locale, Model model) {
			return "/infra/product/user/productBestList";
		}
		
		@RequestMapping(value = "productEvent", method = RequestMethod.GET)
		public String productEvent(Locale locale, Model model) {
			return "/infra/product/user/productEvent";
		}
		
		// excel Download
		
		@RequestMapping(value = "excelDownload")
	    public void excelDownload(ProductVo vo, HttpServletResponse httpServletResponse) throws Exception {
			
			setSearchAndPaging(vo);
			vo.setParamsPaging(service.selectOneCount(vo));

			if (vo.getTotalRows() > 0) {
				List<Product> list = service.selectList(vo);
				
//							Workbook workbook = new HSSFWorkbook();	// for xls
		        Workbook workbook = new XSSFWorkbook();	
		        Sheet sheet = workbook.createSheet("Sheet1");
		        CellStyle cellStyle = workbook.createCellStyle();        
		        Row row = null;
		        Cell cell = null;
		        int rowNum = 0;
				
//					        each column width setting	        
		        sheet.setColumnWidth(0, 2100);
		        sheet.setColumnWidth(1, 3100);

//					        Header
		        String[] tableHeader = {"Seq", "????????????", "??????", "????????????", "??????", "?????????", "??????", "???????????????", "????????????", "????????????", "????????????", "????????????", "?????????", "?????????"};

		        row = sheet.createRow(rowNum++);
		        
				for(int i=0; i<tableHeader.length; i++) {
					cell = row.createCell(i);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
					cell.setCellValue(tableHeader[i]);
				}

//					        Body
		        for (int i=0; i<list.size(); i++) {
		            row = sheet.createRow(rowNum++);
		            
//					            String type: null ?????? ????????? ok
//					            int, date type: null ??? ?????? ?????? ????????? null check
//					            String type ????????? ????????? ???????????? ????????? seq ??? ?????? ?????????	            
		            
		            cell = row.createCell(0);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
		            
		            cell = row.createCell(1);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getCategory());
		        	
		            cell = row.createCell(2);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getClassDiv());
		        	
		        	cell = row.createCell(3);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getTitle());
		        	
		        	cell = row.createCell(4);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getPrice());
		        	
		        	cell = row.createCell(5);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getDiscountRate());
		        	
		        	cell = row.createCell(6);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getPayMonth());
		        	
		        	cell = row.createCell(7);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getClassAmount());
		        	
		            cell = row.createCell(8);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getDateNY() == 0 ? "NO" : "YES");
		        	
		        	cell = row.createCell(9);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getSubtitleNY() == 0 ? "NO" : "YES");
		        	
		        	cell = row.createCell(10);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getKitNY() == 0 ? "NO" : "YES");
		        	
		        	cell = row.createCell(11);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getClassDelNY() == 0 ? "NO" : "YES");
		            
		            cell = row.createCell(12);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getClassReg());
		            
		            cell = row.createCell(13);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getClassMod());
		            
		        }

		        httpServletResponse.setContentType("ms-vnd/excel");
//					        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

		        workbook.write(httpServletResponse.getOutputStream());
		        workbook.close();
			}
	    }
			
//		@RequestMapping(value = "imgLoad")
//		public String imgLoad(Model model, Product dto) throws Exception {
//			
//			dto.setPseq("seq");
//			
//			Product item = service.productUploadInsert(dto);
//			
//			model.addAttribute("item",item);
//			
//			return "infra/product/xdmin/productFrom";
//		}
				
}