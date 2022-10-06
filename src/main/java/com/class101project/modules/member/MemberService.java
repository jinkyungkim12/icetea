package com.class101project.modules.member;

import java.util.List;

public interface MemberService {

	public List<Member> selectList(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public int addInsert(Member dto) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;
	public Member selectOneAdd(MemberVo vo) throws Exception;
	
	public int update(Member dto) throws Exception;
	public int mypageUpdate(Member dto) throws Exception;
	public int addUpdate(Member dto) throws Exception;
	
	public int uelete(Member dto) throws Exception;
	public int delete(MemberVo vo) throws Exception;
	// list uelete
	public int ueleteList(String seq) throws Exception;
	
	public int selectOneCount(MemberVo vo) throws Exception;
	public int selectOneIdCheck(Member dto)throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
 	
}
