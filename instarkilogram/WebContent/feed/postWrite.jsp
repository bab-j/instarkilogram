<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post_write.jsp</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
	
	.bar {
		display:flex;
		justify-content : space-between;
		align-items : center;
	}
	
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
<script>
	function sendPost() {
		console.log("sendPost() 실행~~");
		let firstForm = document.forms[0];
		for (let i = 0; i < firstForm.elements.length; i++){
			if(firstForm.elements[0].value.trim() == 0 ){
				alert(firstForm.elements[i].title + "을 입력하세요");
				firstForm.elements[0].focus();
				return;
			}
		}
		firstForm.submit();
	}

</script>
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
	<h1>새 게시물</h1><br>
	<form action="feedcontroller?type=postWrite" method="post" enctype="multipart/form-data">
		<input type="file" name="f_name" id="f_input" title="사진" ><br>
		<textarea rows="9" cols="100" placeholder="내용을 입력해주세요."
		onfocus="this.placeholder=''" onblur="this.placeholder='내용을 입력해주세요.'"></textarea><br>
		<input type="button" value="등록" id="sbm" onclick="sendPost()">
	</form>
</div>
</body>
</html>