<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userUpdate</title>
<script>

	console.log("udChk : " + ${udChk});
	if(${udChk} == 1){
		alert("[비밀번호를 입력하세요.]");
		location.href = "account_update.jsp";
	} else if (${udChk} == 2) {
		alert("[비밀번호와 확인값이 일치하지 않습니다.]");
		location.href = "account_update.jsp";
	} else if (${udChk} == 3) {
		alert("[회원정보가 수정되었습니다. 다시 로그인하세요.]")
		location.href = "login.jsp";
	}

</script>
</head>
<body>

</body>
</html>