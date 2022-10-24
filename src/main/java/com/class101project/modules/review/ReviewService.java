package com.class101project.modules.review;

import java.util.List;

public interface ReviewService {

	public List<Review> selectList(ReviewVo vo) throws Exception;
	public List<Review> selectListxdmin(ReviewVo vo) throws Exception;
	public int insert(Review dto) throws Exception;
	
//	public int update(Review dto) throws Exception;
//	public int memberUpdate(Review dto) throws Exception;
//	
//	public int uelete(Review dto) throws Exception;
//	public int delete(ReviewVo vo) throws Exception;
	
	public int selectOneCount(ReviewVo vo) throws Exception;
	
}
