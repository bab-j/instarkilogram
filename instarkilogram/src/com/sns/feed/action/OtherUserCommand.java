package com.sns.feed.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;
import com.sns.follow.FollowVO;
import com.sns.user.db.UserVO;

public class OtherUserCommand implements Command {
	
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		int f_idx = Integer.parseInt(request.getParameter("f_idx"));
		String f_id = request.getParameter("f_id");
		String u_id = (String) session.getAttribute("u_id");
		
		UserVO uv = FeedDAO.getOtherUser(f_id);
		List<FeedVO> feedList = FeedDAO.whosePosts(f_id);
		List<FollowVO> fwerList = FeedDAO.followerList(f_id);
		List<FollowVO> fingList = FeedDAO.followingList(f_id);
		int fwChk = FeedDAO.followChk(u_id, f_id);
		
		request.setAttribute("feedList", feedList);
		request.setAttribute("fwerList", fwerList);
		request.setAttribute("fingList", fingList);
		request.setAttribute("fwChk", fwChk);
		
		return "otherUserFeed.jsp";
	}
	
}
