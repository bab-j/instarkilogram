package com.sns.feed.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;
import com.sns.follow.FollowVO;
import com.sns.user.db.UserVO;

public class MyHomeCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		String u_id = (String)session.getAttribute("u_id");
		
		List<FeedVO> feedList = FeedDAO.whosePosts(u_id);
		List<FollowVO> fwerList = FeedDAO.followerList(u_id);
		List<FollowVO> fingList = FeedDAO.followingList(u_id);
		UserVO uv = FeedDAO.getOtherUser(u_id);
		
		request.setAttribute("feedList", feedList);
		request.setAttribute("fwerList", fwerList);
		request.setAttribute("fingList", fingList);
		request.setAttribute("uv", uv);
		
		return "personalFeed.jsp";
	}
	
}
