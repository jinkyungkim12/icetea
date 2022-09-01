package com.class101project.modules.codegroup;

public class CodeGroup {
	// 1. DTO(data transfer object) 생성
	
	// 코드그룹 데이터베이스 컬럼명
	 private Integer seq;
	 private String name;
	 private Integer useNY;
	 private Integer delNY;
	 
	 
	// getter, setter 마우스 우클릭 소스 - generate ~~~
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getUseNY() {
		return useNY;
	}
	public void setUseNY(Integer useNY) {
		this.useNY = useNY;
	}
	public Integer getDelNY() {
		return delNY;
	}
	public void setDelNY(Integer delNY) {
		this.delNY = delNY;
	}
	
	 
}
