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

public class WhoseFeedCommand implements Command {
	
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		String f_id = request.getParameter("f_id");
		String u_id = (String) session.getAttribute("u_id");
		System.out.println(">> f_id : " + f_id);
		System.out.println(">> u_id : " + u_id);
		
		String result = "";
		if(f_id.equals(u_id)) { 
			result = "personalFeed.jsp";
		} else {
			FollowVO fwChk = FeedDAO.followChk(u_id, f_id);   //-------- 팔로우 여부 확인(남일 때)
			request.setAttribute("fwChk", fwChk);
			result = "otherUserFeed.jsp";
		}
		
		UserVO uv = FeedDAO.getOtherUser(f_id);
		List<FeedVO> feedList = FeedDAO.whosePosts(f_id);
		List<FollowVO> fwerList = FeedDAO.followerList(f_id);
		List<FollowVO> fingList = FeedDAO.followingList(f_id);
		
		request.setAttribute("uv", uv);
		request.setAttribute("feedList", feedList);
		request.setAttribute("fwerList", fwerList);
		request.setAttribute("fingList", fingList);
		
		return result;
	}
	
}
