package com.class101project.common.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.class101project.modules.member.Member;

public class UtilUpload {

	public static void uploadPost (MultipartFile multipartFile, String className, Member dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
		String path = "D://factory/ws_sts_4151/icetea/src/main/webapp/resources/uploaded" + "/" + pathModule + "/" + pathDate + "/";
		String pathForView = "/resources/uploaded/" + pathModule + "/" + pathDate + "/";
		
		createPath(path);
		  
		multipartFile.transferTo(new File(path + uuidFileName));
		
		dto.setPath (pathForView);
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		String size = ""+ multipartFile.getSize();
		dto.setSize(size); 
	}
	
	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if (!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}
}
