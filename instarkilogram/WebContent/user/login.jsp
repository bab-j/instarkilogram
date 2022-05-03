<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<input type="text" name=uid id="name" placeholder="Username" onfocus="this.placeholder=''" onblur="this.placeholder='Username'"><br>
				<input type="password" name=upwd id="pwd" placeholder="Password" onfocus="this.placeholder=''" onblur="this.placeholder='Password'"><br><br><br>
				<input type="submit" id="submit" value="로그인"><br>
				<input type="button" id="button" value="회원가입" onclick="Sign_up()"><br><br>
			</form>
			<a href="#">ID 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<a href="#">비밀번호 찾기</a>
		</div>
		
</body>
</html>