package com.class101project.modules.member;

import java.util.List;

public interface MemberService {

	
	// selectlist
	public List<Member> selectList(MemberVo vo) throws Exception;
	public List<Member> excelList(MemberVo vo) throws Exception;
	

	// selectOne
	public Member selectOne(MemberVo vo) throws Exception;
	public Member selectOneAdd(MemberVo vo) throws Exception;
	//kakao login check
	public Member snsLoginCheck(Member dto) throws Exception;
	

	// insert
	public int insert(Member dto) throws Exception;
	public int addInsert(Member dto) throws Exception;
	// kakao insert
	public int kakaoInst(Member dto) throws Exception;
	// naver insert
	public int naverInst(Member dto) throws Exception;

	
	// update
	public int update(Member dto) throws Exception;
	public int mypageUpdate(Member dto) throws Exception;
	public int addUpdate(Member dto) throws Exception;
	
	
	//uele, dele
	public int uelete(Member dto) throws Exception;
	public int delete(MemberVo vo) throws Exception;
	
	
	// list uelete
	public int ueleteList(String seq) throws Exception;


	// select 기타
	public int selectOneCount(MemberVo vo) throws Exception;
	public int selectOneIdCheck(Member dto)throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	
	
	//img upload
	public Member selectMemberImg(MemberVo vo) throws Exception;
	public int memberUploadInsert(Member dto) throws Exception;
}
