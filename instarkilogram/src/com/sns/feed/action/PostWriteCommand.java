package com.sns.feed.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;

// 작성자, 사진, 내용 등록
public class PostWriteCommand  implements Command {

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
		fvo.setU_idx(23);
		
		if(mr.getFile("f_name") != null) {
			fvo.setF_pic(mr.getFilesystemName("f_name"));
		}
		
		FeedDAO.insert(fvo);
		
		return "main_feed.jsp";
	}

	
	
	
}
