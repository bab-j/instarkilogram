package com.sns.feed.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;

public class AddLikeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FeedVO fvo = new FeedVO();
		HttpSession session = request.getSession();
		int fIdx = Integer.parseInt(request.getParameter("f_idx"));
		System.out.println("fIdx : " + fIdx);
		fvo.setF_idx(fIdx);
		fvo.setU_id((String)session.getAttribute("u_id"));
		FeedDAO.addLike(fvo);
		return "mainFeed.jsp?cPage=2";
	}

}
