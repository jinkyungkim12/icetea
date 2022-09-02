package com.class101project.modules.code;
//3.Dao
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.class101project.modules.code.CodeMapper";
	
	public List<Code> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
}