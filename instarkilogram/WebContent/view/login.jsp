<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
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
		width: 310px;
		height: 450px;
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
	#logBtn { 
		border:none;
		margin-bottom: 4%;
	}
	#logBtn:hover {
		background-color: #a7aaad;
	}
	#signBtn {
		border:none;
		background-color: #50575e;
		color: white;
	}
	#signBtn:hover {
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
<script>


	function logIn() {
		let loginFrm = document.forms[0];
		loginFrm.method = "post";
		loginFrm.action = "eunsongcontroller?type=UserLogIn";
		loginFrm.submit();
	}
	function SignUp() {
		location.href = "eunsongcontroller?type=GoSignUp";
	}
	
</script>
<body>
		<div class="top">
			<h3>instarkilogram</h3>
		</div>
	
	
		<div class="sign">
			<h1><i>instarkilogram</i></h1>
			<form name="inputFrm">
				<input type="text" name="uid" id="name" placeholder="Username" onfocus="this.placeholder=''" onblur="this.placeholder='Username'"><br>
				<input type="password" name="upwd" id="pwd" placeholder="Password" onfocus="this.placeholder=''" onblur="this.placeholder='Password'"><br><br><br>
				<input type="button" id="logBtn" value="로그인" onclick="logIn()"><br>
				<input type="button" id="signBtn" value="회원가입" onclick="SignUp()"><br><br>
			</form>
			<a href="#">ID 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<a href="#">비밀번호 찾기</a>
		</div>
		
		
		
</body>
</html>