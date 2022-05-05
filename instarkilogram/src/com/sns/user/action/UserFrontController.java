package com.sns.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/view/usercontroller")
public class UserFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		System.out.println("type : " + type);
		
		Command command = null;
		if("UserIdChk".equals(type)) {
			command = new UserIdChkCommand();
		} else if("UserSignUp".equals(type)) {
			command = new UserSignUpCommand();
		} else if("FindID".equals(type)) {
			command = new FindIdCommand();
		} else if("FindPWD".equals(type)) {
			command = new FindPwdCommand();
		}
		
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	

}
