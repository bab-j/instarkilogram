<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
<style>
	table th {
		font-size: 1em;
		font-family: monospace;
		
	}
	table {
		margin-bottom: 20px;
		margin-left: 20px;
	}
	body {
		background-color: #f6f7f7;
	}
	.top {
		margin-left: 100px;
		margin-top: 30px;
		font-size: 1em;
	}
	.sign {
		background-color: white;
		border: 1.5px solid silver;
		border-radius: 10px;
		padding-top: 1%;
		margin-left: 38%;
		margin-top: 5%;
		width: 350px;
		height: 500px;
		text-align: center;
	}
	.sign h1 {
		font-size: 2.5em;
		font-family: monospace;
		margin-bottom: 10%;
	}
	.sign input {
		border: 1px solid gray;
		border-radius: 5px;
		margin: 5px;
		width: 230px;
		height: 41px;
		font-size: 1em;
		color: gray;
		padding-left: 10px;
	}
	#subBtn { 
		border:none;
		margin-bottom: 4%;
	}
	#subBtn:hover {
		background-color: #a7aaad;
	}
	#butBtn {
		border:none;
		background-color: #50575e;
		color: white;
	}
	#butBtn:hover {
		background-color: #2c3338;
	}
	a {
		text-decoration: none;
		color: #3c434a;
		font-family: monospace;
		font-size: 1.2em;
	}

</style>
<script>
	function goLogin() {
		location.href = "login.jsp";
	}
</script>
</head>
<body>
		<div class="top">
			<h3>instarkilogram</h3>
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
				<input type="button" id="subBtn" value="취소" onclick="goLogin()">
				<input type="submit" id="butBtn" value="비밀번호 찾기">
			</form>
</div>
</body>
</html>
