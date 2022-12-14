package com.class101project.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.class101project.common.util.UtilSecurity;
import com.class101project.common.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public List<Member> excelList(MemberVo vo) throws Exception {
		return dao.excelList(vo);
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
		insert(dto);
		addInsert(dto);
		memberUploadInsert(dto);
	}
	

    // image insert
	@Override
    public int memberUploadInsert(Member dto) throws Exception {
        String memberLastseq = dto.getSeq();

            int j = 0;
            for(MultipartFile myFile : dto.getPostImage()) {

                if(!myFile.isEmpty()) {
                    // postServiceImpl
                    String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                    UtilUpload.uploadPost(myFile, pathModule, dto);

                    dto.setType("1");
                    dto.setDefaultNY(j == 0 ? "1" : "0");
                    dto.setSort(j+1+"");
                    dto.setPseq(memberLastseq);

                    dao.memberUploadInsert(dto);
                    j++;
                }
            }
            
			return 0;
    }

	// kakao insert
    @Override
    public int kakaoInst(Member dto) throws Exception {
		dao.kakaoInst(dto);
		return 1;
    }
    
    // naver insert
    @Override
    public int naverInst(Member dto) throws Exception {
		return dao.naverInst(dto);
    }
    
    
    // update
	public void totalUpdate(Member dto) throws Exception {
		update(dto);
		addUpdate(dto);
	}
	
	public void totalUpdate2(Member dto) throws Exception {
		mypageUpdate(dto);
		addUpdate(dto);
	}
	
	@Override
	public int update(Member dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int mypageUpdate(Member dto) throws Exception{
		return dao.mypageUpdate(dto);
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
	public int ueleteList(String seq) throws Exception {
		return dao.ueleteList(seq);
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
	
	// kakao login check
	@Override
	public Member snsLoginCheck(Member dto) throws Exception {
	    return dao.snsLoginCheck(dto);
	}
	

	// id ???????????? 
	@Override
	public int selectOneIdCheck(Member dto) {
		return dao.selectOneIdCheck(dto);
	}

	
	// ?????????
	public Member selectOneLogin(Member dto) {
		return dao.selectOneLogin(dto);
	}
	
	// img upload

	@Override
	public Member selectMemberImg(MemberVo vo) throws Exception {
		
		return dao.selectMemberImg(vo);
	}
	

}
