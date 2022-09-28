package com.class101project.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.class101project.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	// insert
	@Override
	public int insert(Member dto) throws Exception{
		
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int addInsert(Member dto) throws Exception {
		return dao.addInsert(dto);
	}
	
	public void totalInsert(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		insert(dto);
		addInsert(dto);
	}

	
	
	// update
	public void totalUpdate(Member dto) throws Exception {
		
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		mypageUpdate(dto);
		addUpdate(dto);
	}
	
	@Override
	public int update(Member dto) throws Exception{
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.update(dto);
	}
	
	@Override
	public int mypageUpdate(Member dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int addUpdate(Member dto) throws Exception {
		return dao.addUpdate(dto);
	}

	
	// uelete, delete
	@Override
	public int uelete(Member dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(MemberVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	
	// selectOne
	@Override
	public Member selectOne(MemberVo vo) throws Exception{
		Member result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}

	@Override
	public Member selectOneAdd(MemberVo vo) throws Exception{
		return dao.selectOneAdd(vo);
	}
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}

	// id 중복체크 
	@Override
	public int selectOneIdCheck(Member dto) {
		return dao.selectOneIdCheck(dto);
	}

	
	// 로그인
	public Member selectOneLogin(Member dto) {
		return dao.selectOneLogin(dto);
	}
	
}
