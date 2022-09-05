package com.class101project.modules.code;

import java.util.List;

//4. service (interface) DAO 함수 호출
public interface CodeService {

	public List<Code> selectList(CodeVo vo) throws Exception;
}
