package com.class101project.modules.code;
//3.Dao
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

// dao는 SqlSession 객체에 의존한다.
@Repository
public class CodeDao {

	@Inject // @Autowired 대신에 사용함
	@Resource(name = "SqlSession") // 어떤 DB와 연결되었는지 name으로 표기 ex) SqlSessionMysql1, SqlSessionOracle~~
	private SqlSession sqlSession;
	
	private static String namespace = "com.class101project.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	// List<Code> - code 사다리(확장버전) 변수명 selectList
}
