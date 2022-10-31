package com.class101project.modules.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewDao dao;
	
	@Override
	public List<Review> selectList(ReviewVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public List<Review> selectListView(ReviewVo vo) throws Exception {
		return dao.selectListView(vo);
	}
	
	@Override
	public List<Review> selectListxdmin(ReviewVo vo) throws Exception {
		return dao.selectListxdmin(vo);
	}
	
	// 마이 리뷰 리스트
	@Override
	public List<Review> selectListMyReview(ReviewVo vo) throws Exception {
		return dao.selectListMyReview(vo);
	}

	// insert
	@Override
	public int insert(Review dto) throws Exception {
		
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}

	
	@Override
	public int selectOneCount(ReviewVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	// review Avg 
	@Override
	public Review selectAvgReview(ReviewVo vo) throws Exception {
		return dao.selectAvgReview(vo);
	}

	// uelete
	
	@Override
	public int uelete(Review dto) throws Exception {
		return dao.uelete(dto);
	}

	// update

//	@Override
//	public int update(Review dto) throws Exception {
//		return dao.update(dto);
//	}
//
//	@Override
//	public int memberUpdate(Review dto) throws Exception {
//		return dao.memberUpdate(dto);
//	}
//	
//	public void totalUpdate(Review dto) throws Exception {
//		update(dto);
//		memberUpdate(dto);
//	}

	// dele

//	@Override
//	public int delete(ReviewVo vo) throws Exception {
//		return dao.delete(vo);
//	}

}
