<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post_edit.jsp</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
	
	.bar {
		display:flex;
		justify-content : space-between;
		align-items : center;
	}
	.home { margin-left: 50px; margin-top: 10px;}
	.write {
		width: 800px; height: 400px;
		margin: auto;
		margin-top: 120px;
	}
	input, textarea, #sbm {
		width: 500px;
		margin: auto;
		display: block;
		border-radius: 4px;
	}
	h1 {
		width: 500px;
		margin: auto;
		display: block;
		margin-top: 50px;
	}
	#sbm {
		margin-top:2px;
		height: 40px;
		background-color: #1E82FF;
		color: white;
		font-size: 20px;
		border: none;
	}
	#f_input {height: 30px;}
	h3 {float: left; background-color: yellow;}
	span {float: right; background-color: aqua;}
	
</style>
</head>
<body>
<div class="bar">
	<div class="home">
		<h3>instarkilogram</h3>
	</div>
	<div class="back">
		<span class="material-icons">keyboard_backspace</span>
	</div>
</div>

<div class="write">
	<h1>게시물 수정</h1><br>
	<form action="#" method="post" enctype="multipart/form-data">
		<input type="file" name="f_name" id="f_input" ><br>
		<textarea rows="9" cols="100" placeholder="내용을 입력해주세요."
		onfocus="this.placeholder=''" onblur="this.placeholder='내용을 입력해주세요.'"></textarea><br>
		<input type="submit" value="수정" id="sbm">
	</form>
</div>
</body>
</html>