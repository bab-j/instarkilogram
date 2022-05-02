package com.sns.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.user.db.UserDAO;

public class UserSignUpCommand implements Command{
	UserDAO udao = new UserDAO();
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		int result = udao.signUp(udao.checkId(uid));
		
		return null;
	}

}
