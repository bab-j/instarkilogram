<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">


<meta charset="UTF-8">
<title>instarkilogram : 로그인</title>
<style>
body {
	margin-top: 150px; 
	background-color : #f6f7f7;
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

.sign {
	background-color: white;
	border: 1.5px solid silver;
	border-radius: 2%;
	margin-top: 75px;
	width: 400px;
	height: 600px;
	text-align: center;
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
	border: none;
	margin-bottom: 4%;
	background-color: #1E82FF;
	color: white;
}

#logBtn:hover {
	background-color: #a7aaad;
}

#signBtn {
	border: none;
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
		loginFrm.action = "AAcontroller?type=UserLogIn";
		loginFrm.submit();
	}
	function SignUp() {
		location.href = "AAcontroller?type=GoSignUp";
	}
</script>
<body>
	<div class="bar">
		<div>
			<h3 class="home">instarkilogram</h3>
		</div>
	</div>



	<div class="sign">
		<div>
			<h1>instarkilogram</h1>
		</div>
		<form name="inputFrm">
			<input type="text" name="uid" id="name" placeholder="ID"
				onfocus="this.placeholder=''" onblur="this.placeholder='Username'"><br>
			<input type="password" name="upwd" id="pwd" placeholder="PASSWORD"
				onfocus="this.placeholder=''" onblur="this.placeholder='Password'"><br>
			<br> <br> <input type="button" id="logBtn" value="로그인"
				onclick="logIn()"><br> <input type="button"
				id="signBtn" value="회원가입" onclick="SignUp()"><br> <br>
		</form>
		<a class="font1" href="../view/findID.jsp">ID 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="font1" href="../view/findPWD.jsp">비밀번호 찾기</a>
	</div>



</body>
</html>