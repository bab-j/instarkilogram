package com.sns.feed.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.feed.db.FeedDAO;
import com.sns.feed.db.FeedVO;

public class IdvPageCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int f_idx = Integer.parseInt(request.getParameter("f_idx"));
		FeedVO fvo = FeedDAO.mainToIdvPost(f_idx);
		request.setAttribute("fvo", fvo);
		System.out.println(">> fvo : " + fvo);
		return "postPage.jsp";
	}

}
