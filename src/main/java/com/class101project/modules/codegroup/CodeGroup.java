package com.class101project.modules.codegroup;

public class CodeGroup {
	// 1. DTO(data transfer object) 생성
	
	// 코드그룹 데이터베이스 컬럼명
	 private Integer seq;
	 private String Name;
	 private Integer UseNY;
	 private Integer DelNY;
	 
	 
	// getter, setter 마우스 우클릭 소스 - generate ~~~
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public Integer getUseNY() {
		return UseNY;
	}
	public void setUseNY(Integer useNY) {
		UseNY = useNY;
	}
	public Integer getDelNY() {
		return DelNY;
	}
	public void setDelNY(Integer delNY) {
		DelNY = delNY;
	}
	
	 
}
