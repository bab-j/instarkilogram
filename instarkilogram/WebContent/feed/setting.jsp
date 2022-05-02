<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setting.jsp</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
	
	.bar {
		display:flex;
		justify-content : space-between;
		align-items : center;
	}
	
	.write {
		width: 600px; height: 400px;
		margin: auto;
		margin-top: 120px;
	}
	input,  #sbm {
		width: 500px;
		margin: auto;
		display: block;
		border-radius: 4px;
		height: 40px;
	}
	h1 {
		width: 500px;
		margin: auto;
		display: block;
		margin-top: 50px;
		float: left;
	}
	#sbm {
		margin-top:20px;
		height: 40px;
		background-color: #505050;
		color: white;
		font-size: 20px;
		border: none;
	}
	h3 {: left; background-color: yellow;}
	ul, li {list-style: none;}
	li {float: left; }
	#icon_setting {font-size: 50px; margin-top: 45px;}
	p {
		font-size: 22px;  
		margin-left: 40px; 
	}
</style>

</head>
<body>
<div class="bar">
	<div class="home">
		<h3>instarkilogram</h3>
	</div>
	<div class="back">
		<span class="material-icons" id="icon_back">keyboard_backspace</span>
	</div>
</div>

<div class="write">
	<ul>
		<li><span class="material-icons" id="icon_setting">settings</span></li>
		<li><h1>&nbsp;설정</h1></li>
	</ul>
	<br>
	<hr width="550px" border="1px" >
	<p><a>개인정보 변경</a><br></p>
	<p><a>계정 삭제</a></p>
	
</div>
</body>
</html>