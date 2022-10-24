package com.class101project.modules.review;

import com.class101project.common.base.Base;

public class Review extends Base{

	private String seq;
	private String classProduct_seq;
	private Integer preferenceStar;
	private String id;
	private String content;
	private Integer classProgressRate;
	private String reviewRegDate;
	private String reviewModDate;
	private Integer reviewLike;
	private Integer reviewDelNY;
	private String name;
	private Integer	member_seq;
	
	public Integer getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(Integer member_seq) {
		this.member_seq = member_seq;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getClassProduct_seq() {
		return classProduct_seq;
	}
	public void setClassProduct_seq(String classProduct_seq) {
		this.classProduct_seq = classProduct_seq;
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
	public Integer getClassProgressRate() {
		return classProgressRate;
	}
	public void setClassProgressRate(Integer classProgressRate) {
		this.classProgressRate = classProgressRate;
	}
	public String getReviewRegDate() {
		return reviewRegDate;
	}
	public void setReviewRegDate(String reviewRegDate) {
		this.reviewRegDate = reviewRegDate;
	}
	public String getReviewModDate() {
		return reviewModDate;
	}
	public void setReviewModDate(String reviewModDate) {
		this.reviewModDate = reviewModDate;
	}
	public Integer getReviewLike() {
		return reviewLike;
	}
	public void setReviewLike(Integer reviewLike) {
		this.reviewLike = reviewLike;
	}
	public Integer getReviewDelNY() {
		return reviewDelNY;
	}
	public void setReviewDelNY(Integer reviewDelNY) {
		this.reviewDelNY = reviewDelNY;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
