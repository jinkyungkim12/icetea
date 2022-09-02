package com.class101project.modules.member.memberlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberListServiceImpl implements MemberListService{

	@Autowired
	MemberListDao dao;
	
	@Override
	public List<MemberList> selectList() throws Exception {
		return dao.selectList();
	}
}
