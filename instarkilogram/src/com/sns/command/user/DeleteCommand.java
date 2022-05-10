package com.sns.command.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sns.user.db.UserDAO;

public class DeleteCommand implements Command {

	@Override 
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("delCommand 실행");
		
		HttpSession session = request.getSession();
		
		String delkeyword=request.getParameter("delkeyword");
		String  u_id = (String) session.getAttribute("u_id");
		
		UserDAO.delete(u_id, delkeyword);
		UserDAO.deleteFollow(u_id);
		UserDAO.deleteFeed(u_id);
		UserDAO.deleteComment(u_id);
		UserDAO.deleteLike(u_id);
		  
		 
		return "login.jsp";
	}

}
