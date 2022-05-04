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

@WebServlet("/view/usercontroller")
public class UserFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		System.out.println(">> FrontController.doGet() 실행");
		String type = request.getParameter("type");
		request.setAttribute("uid", request.getParameter("uid"));
		System.out.println(type);
		Command command = null;
		if("UserIdChk".equals(type)) {
			command = new UserIdChkCommand();
		}
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontController.doPost() 실행");
		doGet(request, response);
	}

	

}
