<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post_edit.jsp</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="style.css">
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">

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

	#sbm {
		margin-top:2px;
		height: 40px;
		background-color: #1E82FF;
		color: white;
		font-size: 20px;
		border: none;
		idth: 500px;
		margin: auto;
		display: block;
		border-radius: 4px;
	}
	}
	#f_input {height: 30px;}
	h3 {float: left; background-color: yellow;}
	span {float: right; background-color: aqua;}
	
</style>
</head>
<body>

<div class="bar">
		<div class="home">
			<h1><em> <a class="linkLine" href="main_feed.jsp"> instarkilogram </a></em></h1>
		</div>
		<div class="container">
			<form action="search.jsp" method="get" enctype="multipart/form-data">
			<span>
					<input class="total_search"type="text" id= "search" name="keyword"> 
					<input class="search_btn" type="submit" value="검색" >
			</span>
			</form>
		</div>
		<div class="nav-icon">
			<ul>
			
				<li> <input  type="button" onclick="back" class="material-icons">keyboard_backspace</li>
				<li class="material-icons-outlined">explore</li>
				<li class="material-icons-outlined">favorite_border</li>
			</ul>
		</div>
	</div>
	
	
<div class="write">
	<h1 class="feed">게시물 수정</h1><br>
	<form action="#" method="post" enctype="multipart/form-data">
		<input class=file"" type="file" name="f_name" id="f_input" ><br>
		<textarea class="post_content" rows="9" cols="100" placeholder="내용을 입력해주세요."
		onfocus="this.placeholder=''" onblur="this.placeholder='내용을 입력해주세요.'"></textarea><br>
		<input type="submit" value="수정" id="sbm">
	</form>
</div>
</body>
</html>