package com.sns.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sns.dao.FeedDAO;
import com.sns.vo.FeedVO;

// 작성자, 사진, 내용 등록
public class PostWriteCommand  implements Command_1 {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String path = "c:/upload/temp";
		
		MultipartRequest mr = new MultipartRequest(
						request, 
						path, 
						(10*1024*1024),
						"utf-8",
						new DefaultFileRenamePolicy()
							);
		
		FeedVO fvo = new FeedVO();
		fvo.setContent(mr.getParameter("content"));
		//fvo.setU_idx(session.getAttribute("u_idx"));
		fvo.setU_idx("23");
		
		if(mr.getFile("f_name") != null) {
			fvo.setF_pic(mr.getFilesystemName("f_name"));
		}
		
		FeedDAO.insert(fvo);
		
		return "postWrite.jsp";
	}

	
	
	
}
