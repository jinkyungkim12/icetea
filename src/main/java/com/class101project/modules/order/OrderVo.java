package com.class101project.modules.order;

import com.class101project.common.constants.Constants;

public class OrderVo {

	private Integer shOption;
	private String shValue;
	private Integer shDelNY;
	
	private String shDateStart;
	private String shDateEnd;
	private Integer shOptionDate;
	
	private String seq;
	private String pseq;
	private String mSeq;
	private Integer member_seq;
	private String pdSeq;
	private String classProduct_seq;
	
	public String getClassProduct_seq() {
		return classProduct_seq;
	}

	public void setClassProduct_seq(String classProduct_seq) {
		this.classProduct_seq = classProduct_seq;
	}

	public String getPdSeq() {
		return pdSeq;
	}

	public void setPdSeq(String pdSeq) {
		this.pdSeq = pdSeq;
	}

	public Integer getMember_seq() {
		return member_seq;
	}

	public void setMember_seq(Integer member_seq) {
		this.member_seq = member_seq;
	}

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getPseq() {
		return pseq;
	}

	public void setPseq(String pseq) {
		this.pseq = pseq;
	}

	public Integer getShOption() {
		return shOption;
	}

	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
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

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	
//	paging
	private int thisPage = 1;									// ?????? ?????????
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// ????????? ????????? ????????? ??? ??????
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// ????????? ????????? ????????? ?????? ??????

	private int totalRows;										// ?????? ????????? ??????
	private int totalPages;										// ?????? ????????? ??????
	private int startPage;										// ?????? ????????? ??????
	private int endPage;										// ????????? ????????? ??????
	
	private int startRnumForOracle = 1;							// ?????? ?????? row
	private int endRnumForOracle;								// ?????? ??? row
	private Integer RNUM;

	private int startRnumForMysql = 0;							// ?????? ?????? row

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
	
	}
}
