<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Password</title>
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
		height: 490px;
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
		height: 40px;
		font-size: 1em;
		color: gray;
		padding-left: 10px;
	}
	#submit { 
		border:none;
		margin-bottom: 4%;
	}
	#submit:hover {
		background-color: #a7aaad;
	}
	#button {
		border:none;
		background-color: #50575e;
		color: white;
	}
	#button:hover {
		background-color: #2c3338;
	}
	a {
		text-decoration: none;
		color: #3c434a;
		font-family: monospace;
		font-size: 1.2em;
	}

</style>
</head>
<body>
		<div class="top">
			<h3>instarkilogram</h3>
		</div>
<div class="sign">
			<h1><i>instarkilogram</i></h1>
			<form>
			<table>
				<tr>
					<th>아이디</th> 
					<td><input type="text" name="uID" placeholder="Username" onfocus="this.placeholder=''" onblur="this.placeholder='Username'"></td>
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
				<input type="button" id="button" value="취소" onclick="history.back()">
				<input type="submit" id="submit" value="가입">
			</form>
</div>
</body>
</html>

