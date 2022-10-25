package com.class101project.modules.product;

import java.util.List;

public interface ProductService {

	// public List<Product> selectList(ProductVo vo) throws Exception;
	public List<Product> selectList(ProductVo vo) throws Exception;
	public List<Product> selectListToday(ProductVo vo) throws Exception;
	public List<Product> selectListMD(ProductVo vo) throws Exception;
	public List<Product> selectListDC(ProductVo vo) throws Exception;
	
	// 상세 이미지 리스트
	public List<Product> selectContent(ProductVo vo) throws Exception;
	
	// Review SelectList
	public List<Product> selectListRV(ProductVo vo) throws Exception;
	
	public int insert(Product dto) throws Exception;
	public int update(Product dto) throws Exception;
	public int uelete(Product dto) throws Exception;
	public int ueleteList(String seq) throws Exception;
	public int delete(ProductVo vo) throws Exception;
	
	
	// selectOne
	public Product selectOne(ProductVo vo) throws Exception;
	public int selectOneCount(ProductVo vo) throws Exception;
	
	// selectOne ReviewAvg
	public Product selectAvgReview(ProductVo vo) throws Exception;
	
	// 이미지 업로드
	
	public Product selectProductImg(ProductVo vo) throws Exception;
	public int productUploadInsert(Product dto) throws Exception;
}
