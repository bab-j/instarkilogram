package com.sns.command.feed;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;

public class SearchPostCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String postContent = request.getParameter("postContent");
		System.out.println("postContent : " + postContent);
		List<FeedVO> contentList = FeedDAO.searchFeed(postContent);
		
		request.setAttribute("postContent", postContent);
		request.setAttribute("contentList", contentList);
		
		return "search.jsp";
	}
	
}
