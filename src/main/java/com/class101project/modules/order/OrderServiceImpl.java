package com.class101project.modules.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDao dao;
	
	@Override
	public List<Order> selectList(OrderVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public List<Order> selectListOrder(OrderVo vo) throws Exception {
		return dao.selectListOrder(vo);
	}
	
	
	
	@Override
	public int orderUserInst(Order dto) throws Exception{
		
		return dao.orderUserInst(dto);
	}
	
	@Override
	public int insert(Order dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Order dto) throws Exception{
		return dao.update(dto);
	}
	
	
	// selectOne
	
	@Override
	public Order selectOne(OrderVo vo) throws Exception{
		return dao.selectOne(vo);
	}

	@Override
	public Order selectOneOrder(OrderVo vo) throws Exception{
		return dao.selectOneOrder(vo);
	}
	
	@Override
	public Order selectOneView(OrderVo vo) throws Exception{
		return dao.selectOneView(vo);
	}
	
	@Override
	public Order selectProductImg(OrderVo vo) throws Exception{
		return dao.selectProductImg(vo);
	}
	
	@Override
	public Order selectOrderComplete(OrderVo vo) throws Exception{
		return dao.selectOrderComplete(vo);
	}
	
	@Override
	public int selectOneCount(OrderVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}
	
}
