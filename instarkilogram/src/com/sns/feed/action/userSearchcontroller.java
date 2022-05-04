package com.sns.feed.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/view/searchContorller")
public class userSearchcontroller extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontController.doGet() 실행");
		
		String type = request.getParameter("type");
		
		Command command = null;
		if("search".equals(type)) {
			command = new SearchCommand();
		} 
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontController.doPost() 실행");
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
}

}
