package com.class101project.modules.product;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {
	
	@Inject
	@Resource(name = "sqlSession") 
	
	private SqlSession sqlSession;
	
	private static String namespace = "com.class101project.modules.product.ProductMapper";
	
	public List<Product> selectList(ProductVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public int insert(Product dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao insert: " + result);
		return result;
	}
	
	public Product selectOne(ProductVo vo) {
		Product result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Product dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Product dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(ProductVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}

}