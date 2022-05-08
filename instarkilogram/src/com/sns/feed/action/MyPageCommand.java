package com.sns.feed.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;
import com.sns.follow.FollowVO;
import com.sns.user.db.UserVO;

public class MyPageCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String f_id = request.getParameter("f_id");
		String f_idx = request.getParameter("f_idx");
		
		List<FeedVO> feedList = FeedDAO.whosePosts(f_id);
		List<FollowVO> fwerList = FeedDAO.followerList(f_id);
		List<FollowVO> fingList = FeedDAO.followingList(f_id);
		UserVO uv = FeedDAO.getOtherUser(f_id);
		
		request.setAttribute("feedList", feedList);
		request.setAttribute("fwerList", fwerList);
		request.setAttribute("fingList", fingList);
		request.setAttribute("uv", uv);
		
		return "personalFeed.jsp";
	}
	
}
