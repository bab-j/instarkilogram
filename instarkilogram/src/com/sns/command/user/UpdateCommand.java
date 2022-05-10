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
		String upwd = mr.getParameter("upwd");
		String upwdOk = mr.getParameter("upwdOk");
		String email = mr.getParameter("email");
		String phone = mr.getParameter("phone");
		String bio = mr.getParameter("bio");
		
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
		String u_pic = uv.getU_pic();
		
		System.out.println("file : " + uv.getU_pic());
		
		int udChk = 0;
		if(upwd == null) {
			System.out.println("빈칸");
			udChk = 1;
		} else if(upwdOk == null) {
			System.out.println("빈칸");
			udChk = 1;
		} else if(!upwd.equals(upwdOk)) {
			System.out.println("비번 안맞아");
			udChk = 2;
		} else if(upwd.equals(upwdOk)){
			
			uv.setPwd(upwd);
			
			
			if(!"".equals(email)) {
				uv.setEmail(email);
			} else if("".equals(email)) {
				uv.setEmail(originUv.getEmail());
			}
			
			if(!"".equals(phone)) {
				uv.setPhone(phone);
			} else if ("".equals(phone)) {
				uv.setPhone(originUv.getPhone());
			}
			
			if(!"".equals(bio)) {
				uv.setBio(bio);
			} else if ("".equals(bio)) {
				uv.setBio(originUv.getBio());
			}
			
			udChk = 3;
			
			System.out.println("uv.getPhone() : " + uv.getPhone());
			System.out.println("uv.getEmail() : " + uv.getEmail());
			System.out.println("uv.getBio() : " + uv.getBio());
			System.out.println("uv.getU_pic() : " + uv.getU_pic());
			
			UserDAO.updatePro(uv.getPwd(), uv.getPhone(),
					uv.getEmail(), uv.getBio(), uv.getU_pic(), u_id);
		}
		
		System.out.println("udChk : " + udChk);
		request.setAttribute("udChk", udChk);
		
		return "userUpdate.jsp";
	}

	

}
