package com.class101project.modules.review;

import java.util.List;

public interface ReviewService {

	// 리뷰 리스트
	public List<Review> selectList(ReviewVo vo) throws Exception;
	public List<Review> selectListView(ReviewVo vo) throws Exception;
	
	// 관리자 리스트
	public List<Review> selectListxdmin(ReviewVo vo) throws Exception;
	
	// 리뷰 폼 insert
	public int insert(Review dto) throws Exception;
	
//	public int update(Review dto) throws Exception;
//	public int memberUpdate(Review dto) throws Exception;
//	
//	public int uelete(Review dto) throws Exception;
//	public int delete(ReviewVo vo) throws Exception;
	
	// Count
	public int selectOneCount(ReviewVo vo) throws Exception;
	
	// review Avg
	public Review selectAvgReview(ReviewVo vo) throws Exception;
	
}
