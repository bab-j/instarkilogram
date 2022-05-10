package com.sns.command.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sns.feed.db.FeedDAO;
import com.sns.user.db.UserDAO;
import com.sns.user.db.UserVO;

public class UpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String path = "c:/upload/temp";
		
		System.out.println("updateUserCommand 실행");
		MultipartRequest mr = new MultipartRequest( request, path, (10*1024*1024),
 				"utf-8", new DefaultFileRenamePolicy() );
		System.out.println("멀티파트리퀘 생성");
		
		HttpSession session = request.getSession();
		String u_id = (String) session.getAttribute("u_id");
		String upwd = request.getParameter("upwd");
		String upwdOk = request.getParameter("upwdOk");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String bio = request.getParameter("bio");
		
		System.out.println("upwd : " + upwd);
		System.out.println("upwdok : " + upwdOk);
		System.out.println("email : " + email);
		System.out.println("phone : " + phone);
		System.out.println("bio : " + bio);
		
		// 유저의 기존 정보
		UserVO originUv = FeedDAO.getOtherUser(u_id);
		System.out.println("or : " + originUv);
		UserVO uv = new UserVO();
		uv.setU_id(u_id);
		
		if(mr.getFile("userPic") != null) {
			uv.setU_pic(mr.getFilesystemName("userPic"));
		} else if(mr.getFile("userPic") == null) {
			uv.setU_pic(originUv.getU_pic());
		}
		
		System.out.println("file : " + uv.getU_pic());
		
		int udChk = 0;
		if(upwd == null) {
			System.out.println("빈칸");
			udChk = 1;
		} else if(upwdOk == null) {
			
		} else if(upwd != upwdOk) {
			System.out.println("비번 안맞아");
			udChk = 2;
		} else {
			
			uv.setPwd(upwd);
			
			
			if(email != null) {
				uv.setEmail(email);
			} else if(email == null) {
				uv.setEmail(originUv.getEmail());
			}
			
			if(phone != null) {
				uv.setPhone(phone);
			} else if (phone == null) {
				uv.setPhone(originUv.getPhone());
			}
			
			if(bio != null) {
				uv.setBio(bio);
			} else if (bio == null) {
				uv.setBio(originUv.getBio());
			}
			
			udChk = 3;
			UserDAO.updatePro(uv);
		}
		
		
		request.setAttribute("udChk", udChk);
		
		return "userUpdate.jsp";
	}

	

}
