<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find ID</title>
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
<thead>
		<div class="top">
			<h3>instarkilogram</h3>
		</div>
	</thead>
<div class="sign">
			<h1><i>instarkilogram</i></h1>
			<form>
				<span>이메일</span> <input type="email" name="email" placeholder="abc123@abc.com" onfocus="this.placeholder=''" onblur="this.placeholder='abc123@abc.com'"><br>
				<span>전화번호</span><input type="text" name="phone" placeholder="010-0000-0000" onfocus="this.placeholder=''" onblur="this.placeholder='010-0000-0000'"><br>
				<span>생년월일</span><input type="text" name="birth" placeholder="생년월일 6자리" onfocus="this.placeholder=''" onblur="this.placeholder='생년월일 6자리'"><br>
				<input type="button" id="button" value="취소" onclick="history.back()">
				<input type="submit" id="submit" value="가입">
			</form>
</div>
</body>
</html>









