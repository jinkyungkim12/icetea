package com.class101project.modules.code;

import java.util.ArrayList;
import java.util.List;

//1. DTO 
public class Code {

	private String seq;
	private Integer codeGroup_seq;
	private String nameKr;
	private Integer code;
	private String codeAnother;
	private String codeNameKr;
	private String codeName;
	private Integer codeUseNY;
	private Integer codeDelNY;
	private Integer order;
	private String codeRegDate;
	private String codeModDate;
	
	
	//for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();

	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getCodeGroup_seq() {
		return codeGroup_seq;
	}
	public void setCodeGroup_seq(Integer codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	public String getNameKr() {
		return nameKr;
	}
	public void setNameKr(String nameKr) {
		this.nameKr = nameKr;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getCodeAnother() {
		return codeAnother;
	}
	public void setCodeAnother(String codeAnother) {
		this.codeAnother = codeAnother;
	}
	public String getCodeNameKr() {
		return codeNameKr;
	}
	public void setCodeNameKr(String codeNameKr) {
		this.codeNameKr = codeNameKr;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public Integer getCodeUseNY() {
		return codeUseNY;
	}
	public void setCodeUseNY(Integer codeUseNY) {
		this.codeUseNY = codeUseNY;
	}
	public Integer getCodeDelNY() {
		return codeDelNY;
	}
	public void setCodeDelNY(Integer codeDelNY) {
		this.codeDelNY = codeDelNY;
	}
	public Integer getOrder() {
		return order;
	}
	public void setOrder(Integer order) {
		this.order = order;
	}
	public String getCodeRegDate() {
		return codeRegDate;
	}
	public void setCodeRegDate(String codeRegDate) {
		this.codeRegDate = codeRegDate;
	}
	public String getCodeModDate() {
		return codeModDate;
	}
	public void setCodeModDate(String codeModDate) {
		this.codeModDate = codeModDate;
	}
	
	
}
