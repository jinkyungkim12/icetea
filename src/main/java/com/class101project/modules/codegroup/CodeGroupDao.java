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
		
		public CodeGroup selectOne(CodeGroupVo vo) {
			CodeGroup result = sqlSession.selectOne(namespace + ".selectOne", vo);
			System.out.println("dao result: " + result);
			return result;
		}
		
		public int update(CodeGroup dto) {
			return sqlSession.update(namespace + ".update", dto);
		}
		
		public int uelete(CodeGroup dto) {
			return sqlSession.update(namespace + ".uelete", dto);
		}
		
		public int delete(CodeGroupVo vo) {
			return sqlSession.delete(namespace + ".delete", vo);
		}
}
