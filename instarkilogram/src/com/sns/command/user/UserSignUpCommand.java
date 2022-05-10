package com.sns.command.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.user.db.UserDAO;
import com.sns.user.db.UserVO;

public class UserSignUpCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserVO vo = new UserVO();
		UserDAO uDao = new UserDAO();
		String uId = request.getParameter("uID");
		String uPwd = request.getParameter("upwd");
		String uPwdOk = request.getParameter("uPwdOk");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String birth = request.getParameter("birth");
		
		int check = 0;

		if (uId.trim() == null ) {
			check = 1; //id값이 null 일 때
			request.setAttribute("check", check);
			return "signUpOk.jsp";
		}
		if (uPwd.trim() == null ) {
			check = 2; //pwd값이 null 일 때
			request.setAttribute("check", check);
			return "signUpOk.jsp";
		}
		if (!uPwd.equals(uPwdOk) ) {
			check = 3; //pwd값이 확인 값이랑 일치하지 않을 때
			request.setAttribute("check", check);
			return "signUpOk.jsp";
		}
		if (email.trim() == null) {
			check = 4; //email값이 null 일 때
			request.setAttribute("check", check);
			return "signUpOk.jsp";
		}
		if (name.trim() == null) {
			check = 5; //name값이 null 일 때
			request.setAttribute("check", check);
			return "signUpOk.jsp";
		}
		if (phone.trim() == null) {
			check = 6; //phone값이 null 일 때
			request.setAttribute("check", check);
			return "signUpOk.jsp";
		}
		if (birth.trim() == null) {
			check = 7; //birth값이 null 일 때
			request.setAttribute("check", check);
			return "signUpOk.jsp";
		}
		if (!(birth.trim().length() == 6)) {
			check = 8; //birth값이 6이 아닐 때
			request.setAttribute("check", check);
			return "signUpOk.jsp";
		}
		if (!phone.contains("-") || !(phone.trim().length() == 13) ) {
			check = 9; //전화번호에 - 가 생략되어 있을 때나 모자랄 때
			request.setAttribute("check", check);
			return "signUpOk.jsp";
		}
		
		vo.setU_id(uId);
		vo.setPwd(uPwd);
		vo.setEmail(email);
		vo.setName(name);
		vo.setPhone(phone);
		vo.setBirth(birth);
		
		int result = uDao.signUp(vo);
		System.out.println("result : " + result);
		request.setAttribute("check", check);
		return "signUpOk.jsp";
	}

}
