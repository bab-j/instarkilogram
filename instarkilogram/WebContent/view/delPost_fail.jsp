<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script>
	console.log("isItMine : " + ${isItMine});
	if (${isItMine} == '1'){
		alert("[게시물이 삭제되었습니다.]");
		location.href="mainFeed.jsp";
	} else if(${isItMine} == '2'){
		alert("삭제 권한이 없습니다.");
		location.href="mainFeed.jsp";
	}
</script>

</head>
<body>


</body>
</html>