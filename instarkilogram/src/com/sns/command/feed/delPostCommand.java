package com.sns.command.feed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;

public class delPostCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String f_idx = request.getParameter("f_idx");

		HttpSession session = request.getSession();

		String u_id = (String) session.getAttribute("u_id");

		
		FeedVO fvo = FeedDAO.equalPost(u_id, f_idx);

		
		String result = "";
		
		System.out.println("fvo :" + fvo);
		
		if( fvo == null) {
			FeedDAO.delPost(u_id, f_idx);
			result = "mainFeed.jsp";
			
		} else if (fvo != null) {
			result = "delPost_fail.jsp";
		}
		
		
		
		
		
		
		
		
		return result;

	}

}
