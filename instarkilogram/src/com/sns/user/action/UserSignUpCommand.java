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
		if(udao.checkId(uid)) {
			System.out.println("아이디가 존재합니다");
		} else {
			System.out.println("사용 가능한 아이디입니다");
		}
		return "signUp.jsp";
	}

}
