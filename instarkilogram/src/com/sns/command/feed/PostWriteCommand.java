package com.sns.command.feed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;

// 작성자, 사진, 내용 등록
public class PostWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String path = "c:/upload/temp";
		
		HttpSession session = request.getSession();
		 MultipartRequest mr = new MultipartRequest( request, path, (10*1024*1024),
				 				"utf-8", new DefaultFileRenamePolicy() );

		FeedVO fvo = new FeedVO();
		fvo.setContent(mr.getParameter("content"));
		fvo.setU_id((String)session.getAttribute("u_id"));
		fvo.setU_pic((String)session.getAttribute("u_pic"));
		System.out.println("u_id : " + (String)session.getAttribute("u_id"));
		System.out.println("u_pic : " + (String)session.getAttribute("u_pic"));
		
		if(mr.getFile("fPic") != null) {
			fvo.setF_pic(mr.getFilesystemName("fPic")); 
		}
		int result = FeedDAO.insert(fvo);
		
		
		//------ 메인 피드 불러오기?

		return "mainFeed.jsp";
	}

}
