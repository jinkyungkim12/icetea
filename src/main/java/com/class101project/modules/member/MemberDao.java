package com.class101project.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.class101project.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	// insert
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao insert: " + result);
		return result;
	}
	
	public int addInsert(Member dto) {
		return sqlSession.insert(namespace + ".addressInsert", dto);
	}
	
	//selectOne
	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Member selectOneAdd(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneAdd", vo);
	}
	
	//update
	public int update(Member dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int mypageUpdate(Member dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int addUpdate(Member dto) {
		return sqlSession.update(namespace + ".addressUpdate", dto);
	}
	
	
	// delete, uelete
	public int uelete(Member dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(MemberVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	// pagination
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	// 아이디 중복체크
	public int selectOneIdCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
	}
	
	// login
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
}
