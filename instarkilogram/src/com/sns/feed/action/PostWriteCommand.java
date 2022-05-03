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
		
		/*
		 * MultipartRequest mr = new MultipartRequest( request, path, (10*1024*1024),
		 * "utf-8", new DefaultFileRenamePolicy() );
		 */
		
		FeedVO fvo = new FeedVO();
		//fvo.setContent(mr.getParameter("content"));
		//fvo.setU_idx(session.getAttribute("u_idx"));
		fvo.setU_idx(23);
		fvo.setContent("content");
		fvo.setF_pic("popopo");
		
		/*
		 * if(mr.getFile("f_pic") != null) {
		 * //fvo.setF_pic(mr.getFilesystemName("f_pic")); fvo.setF_pic("popopo"); }
		 */
		
		int result = FeedDAO.insert(fvo);
		
		//return "main_feed.jsp";
		return "tempo.jsp";
	}

	
	
	
}
