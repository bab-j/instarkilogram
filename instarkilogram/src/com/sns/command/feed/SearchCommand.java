package com.sns.command.feed;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sns.user.db.UserVO;
import com.sns.user.db.UserDAO;

public class SearchCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터 값 추출 (확인)
		String keyword = request.getParameter("keyword");//mainfeed에서 가져온것
		System.out.println("Command search : "+keyword);
		//1.DB데이터 조회하기
		List<UserVO> list  =UserDAO.searchid(keyword);
		
		
		
		//2응답페이지(id_list.jsp")에전달
		request.setAttribute("list", list);
		request.setAttribute("keyword", keyword);
		
		return "idSearchResult.jsp";
	}

}
