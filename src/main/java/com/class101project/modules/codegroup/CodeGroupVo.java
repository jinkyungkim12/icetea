package com.class101project.modules.codegroup;

import java.util.List;

import com.class101project.common.constants.Constants;

public class CodeGroupVo {

	 private Integer shCgOption;
	 private String shCgValue;
	 private Integer shDelNY;
	 
	 private String shDateStart;
	 private String shDateEnd;
	 private Integer shOptionDate;
	 
	 private String nameKr;
	 private String name;
	 private Integer codeGroupCode;

	 private String seq;
	 
	 
	public Integer getShCgOption() {
		return shCgOption;
	}
	public void setShCgOption(Integer shCgOption) {
		this.shCgOption = shCgOption;
	}
	public String getShCgValue() {
		return shCgValue;
	}
	public void setShCgValue(String shCgValue) {
		this.shCgValue = shCgValue;
	}
	public Integer getShDelNY() {
		return shDelNY;
	}
	public void setShDelNY(Integer shDelNY) {
		this.shDelNY = shDelNY;
	}
	public String getShDateStart() {
		return shDateStart;
	}
	public void setShDateStart(String shDateStart) {
		this.shDateStart = shDateStart;
	}
	public String getShDateEnd() {
		return shDateEnd;
	}
	public void setShDateEnd(String shDateEnd) {
		this.shDateEnd = shDateEnd;
	}
	public Integer getShOptionDate() {
		return shOptionDate;
	}
	public void setShOptionDate(Integer shOptionDate) {
		this.shOptionDate = shOptionDate;
	}
	public String getNameKr() {
		return nameKr;
	}
	public void setNameKr(String nameKr) {
		this.nameKr = nameKr;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getCodeGroupCode() {
		return codeGroupCode;
	}
	public void setCodeGroupCode(Integer codeGroupCode) {
		this.codeGroupCode = codeGroupCode;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	 
	
//	paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0;							// 쿼리 시작 row



	public int getThisPage() {
		return thisPage;
	}
	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}
	public int getRowNumToShow() {
		return rowNumToShow;
	}
	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}
	public int getPageNumToShow() {
		return pageNumToShow;
	}
	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}
	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}
	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}
	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}
	public Integer getRNUM() {
		return RNUM;
	}
	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}
	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}
	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	
	
	public void setParamsPaging(int totalRows) {
		
		//		setThisPage(3);
		
				setTotalRows(totalRows);
		
				if (getTotalRows() == 0) {
					setTotalPages(1);
				} else {
					setTotalPages(getTotalRows() / getRowNumToShow());
				}
		
				if (getTotalRows() % getRowNumToShow() > 0) {
					setTotalPages(getTotalPages() + 1);
				}
		
				if (getTotalPages() < getThisPage()) {
					setThisPage(getTotalPages());
				}
				
				setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);
		
				setEndPage(getStartPage() + getPageNumToShow() - 1);
		
				if (getEndPage() > getTotalPages()) {
					setEndPage(getTotalPages());
				}
				
				setEndRnumForOracle((getRowNumToShow() * getThisPage()));
				setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
				if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
				
				if (thisPage == 1) {
					setStartRnumForMysql(0);
				} else {
					setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
				}
				
		//		System.out.println("getThisPage():" + getThisPage());
		//		System.out.println("getTotalRows():" + getTotalRows());
		//		System.out.println("getRowNumToShow():" + getRowNumToShow());
		//		System.out.println("getTotalPages():" + getTotalPages());
		//		System.out.println("getStartPage():" + getStartPage());
		//		System.out.println("getEndPage():" + getEndPage());		
		//		System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
		//		System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
		//		System.out.println("getStartRnumForMysql(): " + getStartRnumForMysql());
				
			}
	
		// form, List 구분
		
		private Integer formNY;


		public Integer getFormNY() {
			return formNY;
		}
		public void setFormNY(Integer formNY) {
			this.formNY = formNY;
		}
		
		
		// 리스트 체크박스 선택
		 private List<CodeGroupVo> seqVoList;

		public List<CodeGroupVo> getSeqVoList() {
			return seqVoList;
		}

		public void setSeqVoList(List<CodeGroupVo> seqVoList) {
			this.seqVoList = seqVoList;
		}
	
	
	
}
