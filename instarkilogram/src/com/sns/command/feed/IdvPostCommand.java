package com.sns.command.feed;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sns.comment.db.CommentVO;
import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;
import com.sns.user.db.UserVO;

public class IdvPostCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String u_id = (String) session.getAttribute("u_id");
		UserVO uv = FeedDAO.getOtherUser(u_id);
		
		int f_idx = Integer.parseInt(request.getParameter("f_idx"));
		
		FeedVO fvo = FeedDAO.mainToIdvPost(f_idx);
		List<CommentVO> commList = FeedDAO.postComments(f_idx);
		
		request.setAttribute("fvo", fvo);
		request.setAttribute("commList", commList);
		request.setAttribute("uv", uv);
		return "postPage.jsp";
	}

}
