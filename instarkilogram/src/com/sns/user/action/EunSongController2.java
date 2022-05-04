package com.sns.user.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.user.action.Command;
import com.sns.user.action.UserIdChkCommand;

@WebServlet("/view/eunsongcontroller")
public class EunSongController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> 은송Controller.doGet() 실행");
		
		String type = request.getParameter("type");
		
		Command command = null;
		
		if("UserLogIn".equals(type)) {
			command = new UserLogInCommand();
		} else if ("GoSignUp".equals(type)) {
			command = new GoSignUpCommand();
		}
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> 은송Controller.doPost() 실행");
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

	

}
