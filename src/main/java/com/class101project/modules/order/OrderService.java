package com.class101project.modules.order;

import java.util.List;

public interface OrderService {

	
	public List<Order> selectList(OrderVo vo) throws Exception;
	public List<Order> selectListOrder(OrderVo vo) throws Exception;
	
	public int insert(Order dto) throws Exception;
	public int orderUserInst(Order dto) throws Exception;
	
	public int update(Order dto) throws Exception;

	
	public Order selectOne(OrderVo vo) throws Exception;
	public Order selectOneOrder(OrderVo vo) throws Exception;
	public Order selectProductImg(OrderVo vo) throws Exception;
	
	public int selectOneCount(OrderVo vo) throws Exception;
}
