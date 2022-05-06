<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">


<meta charset="UTF-8">
<title>비밀번호찾기</title>
<style>
body {
	margin-top: 150px;
	background-color: #f6f7f7;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Helvetica, Arial, sans-serif;
}

.bar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	text-align: left;
}

.home {
	margin-left: 100px;
	font-size: 32px;
}




table th {
	font-size: 1em;
	font-family: monospace;
}

table {
	margin-bottom: 20px;
	margin-left: 20px;
}


.sign{
height: 640px;



}

.sign input {
width : 240px;

}


#subBtn {
width : 140px;
	border: none;
	margin-bottom: 4%;
	color:white;
		background-color: #1E82FF;
	
}

#subBtn:hover {
	background-color: #a7aaad;
}

#butBtn {
width : 140px;
	border: none;
	background-color: #50575e;
	color: white;
}

#butBtn:hover {
	background-color: #2c3338;
}


</style>
<script>
	function goLogin() {
		location.href = "login.jsp";
	}
</script>
</head>
<body>
		<div class="bar">
		<div>
			<h3 class="home">instarkilogram</h3>
		</div>
	</div>

		
		
		
<div class="sign">
			<h1><i>instarkilogram</i></h1>
			<form action="usercontroller?type=FindPWD" method="post">
			<table>
				<tr>
					<th>아이디</th> 
					<td><input type="text" name="uid" placeholder="Username" onfocus="this.placeholder=''" onblur="this.placeholder='Username'"></td>
				</tr>
				<tr>
					<th>이메일</th> 
					<td><input type="email" name="email" placeholder="abc123@abc.com" onfocus="this.placeholder=''" onblur="this.placeholder='abc123@abc.com'"></td>
				</tr>
				<tr>
					<th>전화번호</th> 
					<td><input type="text" name="phone" placeholder="010-0000-0000" onfocus="this.placeholder=''" onblur="this.placeholder='010-0000-0000'"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="birth" placeholder="생년월일 6자리" onfocus="this.placeholder=''" onblur="this.placeholder='생년월일 6자리'"></td>
				</tr>
			</table>
				<input type="button" id="butBtn" value="취소" onclick="goLogin()">
				<input type="submit" id="subBtn" value="비밀번호 찾기">
			</form>
</div>
</body>
</html>
