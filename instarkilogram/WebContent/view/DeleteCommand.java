package com.sns.feed.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sns.user.db.userSearchDAO;

public class DeleteCommand implements Command {

	@Override 
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("delCommand 실행");
		
		HttpSession session = request.getSession();
		
		String delkeyword=request.getParameter("delkeyword");
		String  u_id = (String) session.getAttribute("u_id");
		
		userSearchDAO.delete(u_id, delkeyword);
		userSearchDAO.deleteFollow(u_id);
		userSearchDAO.deleteFeed(u_id);
		userSearchDAO.deleteComment(u_id);
		userSearchDAO.deleteLike(u_id);
		  
		 
		return "login.jsp";
	}

}
