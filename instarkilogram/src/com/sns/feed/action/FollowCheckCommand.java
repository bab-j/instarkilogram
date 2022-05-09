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

public class FollowCheckCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		System.out.println("followCheckCommand 실행");
		
		String f_id = request.getParameter("other_id");
		String u_id = (String) session.getAttribute("u_id");
		
		System.out.println("followCheckCommand other_id(f_id) : " + f_id );
		System.out.println("followCheckCommand u_id : " + u_id );

		FollowVO fwChk1 = FeedDAO.followChk(u_id, f_id);
		UserVO uv = FeedDAO.getOtherUser(f_id);
		List<FeedVO> feedList = FeedDAO.whosePosts(f_id);
		List<FollowVO> fwerList = FeedDAO.followerList(f_id);
		List<FollowVO> fingList = FeedDAO.followingList(f_id);
		
		
		//System.out.println("fwChk1 : " + fwChk1.toString());
		System.out.println("책갈피");
		
		if(fwChk1 == null) {  //---- 남이면 
			FeedDAO.insertFollow(u_id, f_id);  //--- 팔로우하기
		} else {
			FeedDAO.deleteFollow(u_id, f_id);  //-- 언팔하기
		}
		
		FollowVO fwChk = FeedDAO.followChk(u_id, f_id);
		
		request.setAttribute("fwChk", fwChk);
		request.setAttribute("uv", uv);
		request.setAttribute("feedList", feedList);
		request.setAttribute("fwerList", fwerList);
		request.setAttribute("fingList", fingList);
		
		return "otherUserFeed.jsp";
	}
	
}
