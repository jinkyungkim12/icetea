package com.class101project.modules.codegroup;
//3.Dao
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	
		@Inject
		@Resource(name = "sqlSession")
		private SqlSession sqlSession;
		
		private static String namespace = "com.class101project.modules.codegroup.CodeGroupMapper";
		
		public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".selectList",vo); }
		
//		public List<CodeGroup> selectList(CodeGroupVo vo){
//			
//			//return sqlSession.selectList(namespace + ".selectList",vo);
//			List<CodeGroup> list = sqlSession.selectList("com.class101project.modules.codegroup.CodeGroupMapper.selectList", vo);
//			return list;
//		}
		
		public int insert(CodeGroup dto) {
			int result = sqlSession.insert(namespace + ".insert", dto);
			System.out.println("dao insert: " + result);
			return result;
		}

}
