package com.class101project.modules.product;

import com.class101project.common.base.Base;

public class Product extends Base{

	private String seq;
	private String category;
	private Integer classDiv;
	private String title;
	private Integer discountRate;
	private Integer price;
	private Integer payMonth;
	private String classAmount;
	private Integer dateNY;
	private Integer subtitleNY;
	private String classInfo;
	private String curriculum;
	private String kitInfo;
	private String refund;
	private Integer kitNY;
	private String classReg;
	private String classMod;
	private Integer classDelNY;
	private Integer preferencestar;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Integer getClassDiv() {
		return classDiv;
	}
	public void setClassDiv(Integer classDiv) {
		this.classDiv = classDiv;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(Integer discountRate) {
		this.discountRate = discountRate;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getPayMonth() {
		return payMonth;
	}
	public void setPayMonth(Integer payMonth) {
		this.payMonth = payMonth;
	}
	
	public String getClassAmount() {
		return classAmount;
	}
	public void setClassAmount(String classAmount) {
		this.classAmount = classAmount;
	}
	public Integer getDateNY() {
		return dateNY;
	}
	public void setDateNY(Integer dateNY) {
		this.dateNY = dateNY;
	}
	public Integer getSubtitleNY() {
		return subtitleNY;
	}
	public void setSubtitleNY(Integer subtitleNY) {
		this.subtitleNY = subtitleNY;
	}
	public String getClassInfo() {
		return classInfo;
	}
	public void setClassInfo(String classInfo) {
		this.classInfo = classInfo;
	}
	public String getCurriculum() {
		return curriculum;
	}
	public void setCurriculum(String curriculum) {
		this.curriculum = curriculum;
	}
	public String getKitInfo() {
		return kitInfo;
	}
	public void setKitInfo(String kitInfo) {
		this.kitInfo = kitInfo;
	}
	public String getRefund() {
		return refund;
	}
	public void setRefund(String refund) {
		this.refund = refund;
	}
	public Integer getKitNY() {
		return kitNY;
	}
	public void setKitNY(Integer kitNY) {
		this.kitNY = kitNY;
	}
	public String getClassReg() {
		return classReg;
	}
	public void setClassReg(String classReg) {
		this.classReg = classReg;
	}
	public String getClassMod() {
		return classMod;
	}
	public void setClassMod(String classMod) {
		this.classMod = classMod;
	}
	public Integer getClassDelNY() {
		return classDelNY;
	}
	public void setClassDelNY(Integer classDelNY) {
		this.classDelNY = classDelNY;
	}
	
	
//	Review List
	
	private Integer classProduct_seq;
	private Integer member_seq;
	private Integer preferenceStar;
	private String id;
	private String content;
	private String reviewRegDate;
	private Integer reviewLike;
	private String avgStar;


	public Integer getClassProduct_seq() {
		return classProduct_seq;
	}
	public void setClassProduct_seq(Integer classProduct_seq) {
		this.classProduct_seq = classProduct_seq;
	}
	public Integer getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(Integer member_seq) {
		this.member_seq = member_seq;
	}
	public Integer getPreferenceStar() {
		return preferenceStar;
	}
	public void setPreferenceStar(Integer preferenceStar) {
		this.preferenceStar = preferenceStar;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReviewRegDate() {
		return reviewRegDate;
	}
	public void setReviewRegDate(String reviewRegDate) {
		this.reviewRegDate = reviewRegDate;
	}
	public Integer getReviewLike() {
		return reviewLike;
	}
	public void setReviewLike(Integer reviewLike) {
		this.reviewLike = reviewLike;
	}
	public Integer getPreferencestar() {
		return preferencestar;
	}
	public void setPreferencestar(Integer preferencestar) {
		this.preferencestar = preferencestar;
	}
	public String getAvgStar() {
		return avgStar;
	}
	public void setAvgStar(String avgStar) {
		this.avgStar = avgStar;
	}
	
	
	
}
