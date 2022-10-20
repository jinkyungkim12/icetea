package com.class101project.modules.order;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDao {

	@Inject
	@Resource(name = "sqlSession") 
	
	private SqlSession sqlSession;
	
	private static String namespace = "com.class101project.modules.order.OrderMapper";
	
	public List<Order> selectList(OrderVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public List<Order> selectListOrder(OrderVo vo){ return sqlSession.selectList(namespace + ".selectListOrder", vo); }
	
	public int insert(Order dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao insert: " + result);
		return result;
	}
	
	public int orderUserInst(Order dto) {
		int result = sqlSession.insert(namespace + ".orderUserInst", dto);
		return result;
	}
	
	public int update(Order dto) {
		return sqlSession.update(namespace + ".update", dto);
	}

	
	// selectOne
	public Order selectOne(OrderVo vo) {
		Order result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Order selectOneOrder(OrderVo vo) {
		Order result = sqlSession.selectOne(namespace + ".selectOneOrder", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Order selectOneView(OrderVo vo) {
		Order result = sqlSession.selectOne(namespace + ".selectOneView", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	
	public int selectOneCount(OrderVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
	//	for cache
	public List<Order> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }

	// 이미지 업로드 상품
	public Order selectProductImg(OrderVo vo) {
		return sqlSession.selectOne(namespace + ".selectProductImg", vo);
	}
	
	
}
