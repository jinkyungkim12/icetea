package com.class101project.modules.member.memberlist;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MemberListDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.class101project.modules.memberlist.MemberListMapper";
	
	public List<MemberList> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
}
