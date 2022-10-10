package com.class101project.common.base;

import org.springframework.web.multipart.MultipartFile;

public class Base {

	private String seq;
	private String type;
	private String defaultNY;
	private String sort;
	private String originalName;
	private String uuidName;
	private String ext;
	private String size;
	private String uploadDelNY;
	private String pseq;
	private String regDate;
	private String path;
	
	private MultipartFile[] postImage;
	

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}


	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDefaultNY() {
		return defaultNY;
	}

	public void setDefaultNY(String defaultNY) {
		this.defaultNY = defaultNY;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getUuidName() {
		return uuidName;
	}

	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getUploadDelNY() {
		return uploadDelNY;
	}

	public void setUploadDelNY(String uploadDelNY) {
		this.uploadDelNY = uploadDelNY;
	}

	public String getPseq() {
		return pseq;
	}

	public void setPseq(String pseq) {
		this.pseq = pseq;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public MultipartFile[] getPostImage() {
		return postImage;
	}

	public void setPostImage(MultipartFile[] postImage) {
		this.postImage = postImage;
	}
	
	
}
