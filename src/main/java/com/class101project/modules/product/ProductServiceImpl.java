package com.class101project.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.class101project.common.util.UtilUpload;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao dao;
	
//	@Override
//	public List<Product> selectList(ProductVo vo) throws Exception {
//		return dao.selectList(vo);
//	}
	
	@Override
	public List<Product> selectList(ProductVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public List<Product> selectListToday(ProductVo vo) throws Exception {
		return dao.selectListToday(vo);
	}
	
	@Override
	public List<Product> selectListMD(ProductVo vo) throws Exception {
		return dao.selectListMD(vo);
	}
	
	@Override
	public List<Product> selectListDC(ProductVo vo) throws Exception {
		return dao.selectListDC(vo);
	}
	
	// 상세 이미지 리스트
	
	@Override
	public List<Product> selectContent(ProductVo vo) throws Exception {
		
		return dao.selectContent(vo);
	}

	// Review SelectList
	
	@Override
	public List<Product> selectListRV(ProductVo vo) throws Exception {
		
		return dao.selectListRV(vo);
	}

	@Override
	public int insert(Product dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	

	@Override
	public int update(Product dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Product dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int ueleteList(String seq) throws Exception{
		return dao.ueleteList(seq);
	}
	
	@Override
	public int delete(ProductVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	
	
	// selectOne
	
	@Override
	public Product selectOne(ProductVo vo) throws Exception{
		Product result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(ProductVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}
	
	
	// 이미지 업로드
	
	@Override
	public Product selectProductImg(ProductVo vo) throws Exception {
		
		return dao.selectProductImg(vo);
	}
	
	 // image insert
	@Override
    public int productUploadInsert(Product dto) throws Exception {
        String productLastseq = dto.getSeq();

            int j = 0;
            for(MultipartFile myFile : dto.getPostImage()) {

                if(!myFile.isEmpty()) {
                    // postServiceImpl
                    String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                    UtilUpload.productUploadPost(myFile, pathModule, dto);

                    dto.setType("1");
                    dto.setDefaultNY(j == 0 ? "1" : "0");
                    dto.setSort(j+1+"");
                    dto.setPseq(productLastseq);

                    dao.productUploadInsert(dto);
                    j++;
                }
            }
            
			return 0;
    }
}
