package com.class101project.modules.code;
//6. controller
import java.util.List;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

// import com.class101project.common.constants.Constants;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	
	public void setSearchAndPaging(CodeVo vo) throws Exception{
		
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShCodeDelNY(vo.getShCodeDelNY() == null ? 0 : vo.getShCodeDelNY());
		
	}
	
	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShCodeDelNY(): " + vo.getShCodeDelNY());
		setSearchAndPaging(vo);
		
		if (vo.getTotalRows() > 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return "infra/code/xdmin/codeList";
	}
	
		
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Code item = service.selectOne(vo);
//		model.addAttribute("item", result);
		model.addAttribute("item", item);
		return "infra/code/xdmin/codeForm";
	}
	
//	@SuppressWarnings(value={"all"})
	@RequestMapping(value = "codeInst")
	public String codeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeForm";
		
//		if(Constants.INSERT_AFTER_TYPE == 1) {
//			return "redirect:/code/codeForm";
//		} else {
//			return "redirect:/code/codeList";
//		}
		
		
	}
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeForm";
	}
	
	@RequestMapping(value = "codeUele")
	public String codeUele(@ModelAttribute("vo") CodeVo vo, Code dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		String returnString = "";
		
		if(vo.getFormNY() == 1) { 
			// form uelete
			
			service.uelete(dto);
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/code/codeList";

		} else {
			// list uelete
			
			for(CodeVo vItem : vo.getSeqVoList()) {
				
				service.ueleteList(vItem.getSeq());
				
				setSearchAndPaging(vo);
				
				if(vo.getTotalRows() > 0) {
					List<Code> list = service.selectList(vo);
					model.addAttribute("list", list);
				}

				returnString = "infra/code/xdmin/codeList";
			}
			
		}
		
		return returnString;
		
	}
	
	@RequestMapping(value = "codeDele")
	public String codeDele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeList";
	}
	
	
	// excel Download
	
		@RequestMapping(value = "excelDownload")
	    public void excelDownload(CodeVo vo, HttpServletResponse httpServletResponse) throws Exception {
			
			setSearchAndPaging(vo);
			vo.setParamsPaging(service.selectOneCount(vo));

			if (vo.getTotalRows() > 0) {
				List<Code> list = service.selectList(vo);
				
//				Workbook workbook = new HSSFWorkbook();	// for xls
		        Workbook workbook = new XSSFWorkbook();	
		        Sheet sheet = workbook.createSheet("Sheet1");
		        CellStyle cellStyle = workbook.createCellStyle();        
		        Row row = null;
		        Cell cell = null;
		        int rowNum = 0;
				
//		        each column width setting	        
		        sheet.setColumnWidth(0, 2100);
		        sheet.setColumnWidth(1, 3100);

//		        Header
		        String[] tableHeader = {"Seq", "코드그룹코드", "코드그룹 이름(한글)", "코드", "대체코드", "코드 이름(한글)", "코드 이름(영문)", "사용여부", "삭제여부", "등록일", "수정일"};

		        row = sheet.createRow(rowNum++);
		        
				for(int i=0; i<tableHeader.length; i++) {
					cell = row.createCell(i);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
					cell.setCellValue(tableHeader[i]);
				}

//		        Body
		        for (int i=0; i<list.size(); i++) {
		            row = sheet.createRow(rowNum++);
		            
//		            String type: null 전달 되어도 ok
//		            int, date type: null 시 오류 발생 하므로 null check
//		            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
		            
		            cell = row.createCell(0);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
		            
		            cell = row.createCell(1);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getCodeGroup_seq());
		        	
		            cell = row.createCell(2);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getNameKr());
		        	
		        	cell = row.createCell(3);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getSeq());
		        	
		        	cell = row.createCell(4);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getCodeAnother());
		        	
		        	cell = row.createCell(5);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getCodeNameKr());
		        	
		        	cell = row.createCell(6);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getCodeName());
		        
		            cell = row.createCell(7);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getCodeUseNY() == 0 ? "NO" : "YES");
		            
		            cell = row.createCell(8);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getCodeDelNY() == 0 ? "NO" : "YES");
		            
		            cell = row.createCell(9);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getCodeRegDate());
		            
		            cell = row.createCell(10);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getCodeModDate());
		            
		        }

		        httpServletResponse.setContentType("ms-vnd/excel");
//		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

		        workbook.write(httpServletResponse.getOutputStream());
		        workbook.close();
			}
	    }
	
//	@RequestMapping(value = "codeView")
//	public String codeView(CodeVo vo, Model model) throws Exception {
//		
//		Code result = service.selectOne(vo);
//		model.addAttribute("item", result);
//		return "infra/code/xdmin/codeForm";
//	}
}
