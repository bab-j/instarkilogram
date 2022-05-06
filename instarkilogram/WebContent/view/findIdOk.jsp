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
	if (${check} == 0) {
		alert("찾으시는 ID는 ${findId} 입니다.")
		location.href="login.jsp";
	} else {
		alert("입력된 정보의 ID는 존재하지 않습니다.");
		location.href="findID.jsp";
	}
</script>
</body>
</html>