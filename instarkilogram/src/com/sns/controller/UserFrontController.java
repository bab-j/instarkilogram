package com.sns.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.command.user.Command;
import com.sns.command.user.DeleteCommand;
import com.sns.command.user.FindIdCommand;
import com.sns.command.user.FindPwdCommand;
import com.sns.command.user.GoSignUpCommand;
import com.sns.command.user.UserIdChkCommand;
import com.sns.command.user.UserLogInCommand;
import com.sns.command.user.UserSignUpCommand;




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
		} else if("UserLogIn".equals(type)) {
			command = new UserLogInCommand();
		} else if ("GoSignUp".equals(type)) {
			command = new GoSignUpCommand();
		} else if ("delete".equals(type)) {
			command = new DeleteCommand();
		}
		
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	

}
