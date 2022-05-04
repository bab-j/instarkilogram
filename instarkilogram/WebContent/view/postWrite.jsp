<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post_write.jsp</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="style.css">
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">



<style>
</style>
<script>
	function sendPost() {
		console.log("sendPost() 실행~~");

		let firstForm = document.forms[1];
		console.log("firstForm[1] : " + firstForm);
		for (let i = 0; i < firstForm.elements.length; i++) {
			if (firstForm.elements[i].value.trim() == "") {
				alert(firstForm.elements[i].title + "을 입력하세요");
				firstForm.elements[i].focus();
				return; // --------없으면 제출함
			}
		}
		firstForm.submit();
		console.log("sendPost() 완!!");
	}
</script>
</head>
<body>
<body>

	<div class="bar">
		<div class="home">
			<h1>
				<em> <a class="linkLine" href="main_feed.jsp">
						instarkilogram </a></em>
			</h1>
		</div>
		<div class="container">
			<form action="search.jsp" method="get" enctype="multipart/form-data">
				<span> <input class="total_search" type="text" id="search"
					name="keyword"> <input class="search_btn" type="submit"
					value="검색">
				</span>
			</form>
		</div>
		<div class="nav-icon">
			<ul>

				<li class="material-icons"><a
					href="javascript:window.history.back();">keyboard_backspace</a></li>
				<li class="material-icons-outlined">explore</li>
				<li class="material-icons-outlined">favorite_border</li>
			</ul>
		</div>
	</div>


	<div class="write">
		<h1 class="feed">새 게시물</h1>
		<div>
			<div >
				<div class="img_box"> <a href=""> <img src=" "> </a> </div>
			</div>
		</div>

		<br>
		<br>
		<form action="feedcontroller?type=postWrite" method="post"
			enctype="multipart/form-data">
			<input class="file" type="file" name="fPic" id="f_input" title="사진"><br>
			<textarea class="post_content" name="content" rows="9" cols="100"
				placeholder="내용을 입력해주세요." onfocus="this.placeholder=''"
				onblur="this.placeholder='내용을 입력해주세요.'"></textarea>
			<br> <input type="button" value="등록" id="sbm"
				onclick="sendPost()">
		</form>
		<br> <br>
	</div>
</body>
</html>