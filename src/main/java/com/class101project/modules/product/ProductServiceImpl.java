package com.class101project.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao dao;
	
//	@Override
//	public List<Product> selectList(ProductVo vo) throws Exception {
//		return dao.selectList(vo);
//	}
	
	@Override
	public List<Product> selectList(ProductVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Product dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	

	@Override
	public int update(Product dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Product dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int ueleteList(String seq) throws Exception{
		return dao.ueleteList(seq);
	}
	
	@Override
	public int delete(ProductVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public Product selectOne(ProductVo vo) throws Exception{
		Product result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(ProductVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}
	
}
