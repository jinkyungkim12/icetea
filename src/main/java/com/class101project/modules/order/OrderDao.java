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
	
	public int insert(Order dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao insert: " + result);
		return result;
	}
	
	public Order selectOne(OrderVo vo) {
		Order result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Order dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Order dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(OrderVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public int selectOneCount(OrderVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
//	for cache
	public List<Order> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }

	
}
