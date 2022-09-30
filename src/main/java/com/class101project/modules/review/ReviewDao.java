package com.class101project.modules.review;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDao {

	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.class101project.modules.review.ReviewMapper";
	
	public List<Review> selectList(ReviewVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	
	// insert
		public int insert(Review dto) {
			int result = sqlSession.insert(namespace + ".insert", dto);
			System.out.println("dao insert: " + result);
			return result;
		}
		
		public int memberInsert(Review dto) {
			return sqlSession.insert(namespace + ".memberInsert", dto);
		}
		
	//selectOne
		public Review selectOne(ReviewVo vo) {
			Review result = sqlSession.selectOne(namespace + ".selectOne", vo);
			System.out.println("dao result: " + result);
			return result;
		}
		
		public Review memberSelectOne(ReviewVo vo) {
			return sqlSession.selectOne(namespace + ".memberSelectOne", vo);
		}

	//update
		public int update(Review dto) {
			return sqlSession.update(namespace + ".update", dto);
		}
		
		public int memberUpdate(Review dto) {
			return sqlSession.update(namespace + ".memberUpdate", dto);
		}
		
		// delete, uelete
		public int uelete(Review dto) {
			return sqlSession.update(namespace + ".uelete", dto);
		}
		
		public int delete(ReviewVo vo) {
			return sqlSession.delete(namespace + ".delete", vo);
		}
		
		// pagination
		public int selectOneCount(ReviewVo vo) {
			return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		}
}
