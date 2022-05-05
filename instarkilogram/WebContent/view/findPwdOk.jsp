<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FindID</title>
</head>
<body>
<script>
	if (check == 0) {
		alert("찾으시는 Password는 ${findPwd} 입니다.")
		location.href="login.jsp";
	} else {
		alert("입력된 정보의 Password는 존재하지 않습니다.");
		location.href="findPWD.jsp";
	}
</script>
</body>
</html>