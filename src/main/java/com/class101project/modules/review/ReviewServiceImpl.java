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

	// insert
	@Override
	public int insert(Review dto) throws Exception {
		
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}

	@Override
	public int memberInsert(Review dto) throws Exception {
		return dao.memberInsert(dto);
	}
	
	public void totalInsert(Review dto) throws Exception {
		insert(dto);
		memberInsert(dto);
	}

	// selectOne
	@Override
	public Review selectOne(ReviewVo vo) throws Exception {
		Review result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}

	@Override
	public Review memberSelectOne(ReviewVo vo) throws Exception {
		Review result = dao.memberSelectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(ReviewVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	// update

	@Override
	public int update(Review dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int memberUpdate(Review dto) throws Exception {
		return dao.memberUpdate(dto);
	}
	
	public void totalUpdate(Review dto) throws Exception {
		update(dto);
		memberUpdate(dto);
	}

	//uele, dele
	
	@Override
	public int uelete(Review dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(ReviewVo vo) throws Exception {
		return dao.delete(vo);
	}

}
