<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUpOk</title>
<script>
	console.log("check : " + ${check});
	if ( ${check} == 0 ) {
		alert("[회원가입에 성공하셨습니다. 다시 로그인 하세요.]");		
		location.href = "login.jsp";
	} else if ( ${check} == 1) {
		alert("[아이디를 입력해주세요]");
		location.href = "signUp.jsp";
	} else if ( ${check} == 2) {
		alert("[비밀번호를 입력해주세요]");
		location.href = "signUp.jsp";
	} else if ( ${check} == 3) {
		alert("[패스워드와 확인값이 일치하지 않습니다]");
		location.href = "signUp.jsp";
	} else if ( ${check} == 4) {
		alert("[이메일을 입력해주세요]");
		location.href = "signUp.jsp";
	} else if ( ${check} == 5) {
		alert("[이름을 입력해주세요]");
		location.href = "signUp.jsp";
	} else if ( ${check} == 6) {
		alert("[전화번호를 입력해주세요]");
		location.href = "signUp.jsp";
	} else if ( ${check} == 7) {
		alert("[생년월일을 입력해주세요]");
		location.href = "signUp.jsp";
	} else if ( ${check} == 8) {
		alert("[생년월일 6자리를 입력해주세요]");
		location.href = "signUp.jsp";
	} else if ( ${check} == 9) {
		alert("[전화번호 입력 형식에 맞게 입력해주세요]");
		location.href = "signUp.jsp";
	}
	
</script>
</head>
<body>
</body>
</html>