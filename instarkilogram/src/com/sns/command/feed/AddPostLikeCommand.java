package com.sns.command.feed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;

public class AddPostLikeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FeedVO fvo = new FeedVO();
		HttpSession session = request.getSession();

		int fIdx = Integer.parseInt(request.getParameter("f_idx"));
		System.out.println("fIdx : " + fIdx);
		System.out.println("session.getAttribute(\"u_id\") : " + session.getAttribute("u_id"));		
		fvo.setF_idx(fIdx);
		fvo.setU_id((String)session.getAttribute("u_id"));
		FeedDAO.addLike(fvo);
		//return "postPage.jsp?f_idx=" + fIdx;
		
		return "postPage?f_idx=" + fIdx;
	}
}