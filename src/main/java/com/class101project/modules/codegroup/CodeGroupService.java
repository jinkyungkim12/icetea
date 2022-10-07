package com.class101project.modules.codegroup;
// 4. service (interface)
import java.util.List;

public interface CodeGroupService {

	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception; 
	public int insert(CodeGroup dto) throws Exception;
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception;
	public int update(CodeGroup dto) throws Exception;
	
	public int uelete(CodeGroup dto) throws Exception;
	// list uelete
	public int ueleteList(String seq) throws Exception;
	
	public int delete(CodeGroupVo vo) throws Exception;
	public int selectOneCount(CodeGroupVo vo) throws Exception;
}
