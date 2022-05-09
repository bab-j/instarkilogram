package com.sns.feed.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.feed.action.Command;
import com.sns.feed.action.PostWriteCommand;

@WebServlet("/view/feedcontroller")
public class FeedFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontController.doGet() 실행");
		
		String type = request.getParameter("type");
		
		Command command = null;
		if("postWrite".equals(type)) {
			command = new PostWriteCommand();
		} else if("idvPage".equals(type)) {   //---- 게시글 개별 페이지
			command = new IdvPostCommand();
		} else if("otherUser".equals(type)) {  //----- id, 프사  눌렀을 때
			command = new WhoseFeedCommand(); 
		} else if("myHome".equals(type)) {
			command = new MyHomeCommand(); ///--- 홈버튼
		} else if("followCheck".equals(type)) {
			command = new FollowCheckCommand(); ///--- 팔로우 여부 체크
		} else if("delLike".equals(type)) {
			command = new DelLikeCommand(); // 좋아요 해제
		} else if("addLike".equals(type)) {
			request.setAttribute("f_idx", (int)request.getAttribute("f_idx"));
			command = new AddLikeCommand(); // 좋아요 등록
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
