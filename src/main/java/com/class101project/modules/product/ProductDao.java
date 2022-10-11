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
	
	// xpublic List<Product> selectList(ProductVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public List<Product> selectList(ProductVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public List<Product> selectListToday(ProductVo vo) {
		return sqlSession.selectList(namespace + ".selectListToday", vo);
	}
	
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
	
	public int ueleteList(String seq) {
		return sqlSession.update(namespace + ".ueleteList", seq);
	}
	
	public int delete(ProductVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public int selectOneCount(ProductVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
	// 이미지 업로드 상품
	public Product selectProductImg(ProductVo vo) {
		return sqlSession.selectOne(namespace + ".selectProductImg", vo);
	}
	
	public int productUploadInsert(Product dto) {
		return sqlSession.insert(namespace + ".productUploadInsert", dto);
	}
}
