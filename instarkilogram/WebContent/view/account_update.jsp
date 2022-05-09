<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">


<meta charset="UTF-8">
<title>개인페이지 수정</title>

<style>
body {
	padding-top: 75px;
	font-size: 18px;
}

form p {
	margin-bottom: 1px;
	margin-top: 0px;
}

table {
	width: 800px;
	border-collapse: collapse;
	margin-bottom: 20px;
}

.sign_update {
	text-align: left;
	display: flex;
	padding: 10px;
}

.sign_ {
	
}

.update_flex {
	display: inline-flex;
	padding: 5px;
	margin: 5px;
	height: 30px;
}

#f_input1 {
	margin: 15px;
	width: 180px;
	height: 40px;
}

.update_left {
	display: inline-flex;
}

#button1 {
	width: 40px;
	height: 25px;
	margin: 15px;
	display: inline-flex;
	text-align: center;
}

#button2 {
	width: 60px;
	height: 25px;
	margin: 15px;
	padding: 5px;
	display: inline-flex;
	text-align: center;
	display: inline-flex;
}

.text_left {
	text-align: left;
	margin-left: 15px;
	height: 60px;
}

#butt1 {
	text-align: center;
	width: 50px;
	height: 40px;
}

#subm1 {
	margin-left: 15px;
	padding: 5px;
	text-align: center;
	width: 150px;
	background-color: #1E82FF;
	color: white;
	height: 40px;
	font-size: 17px;
	border-radius: 5px;
	padding: 5px;
}

form input :: file-selector-button {
	display: none;
}

.file1 {
	
}

.filebox .upload-name {
	display: inline-block;
	height: 40px;
	padding: 0 10px;
	vertical-align: middle;
	border: 1px solid #dddddd;
	width: 78%;
	color: #999999;
}

.filebox label {
	display: inline-block;
	padding: 5px;
	padding-top:10px;
	text-align: center;
	color: #fff;
	background-color: #999999;
	cursor: pointer;
	height: 30px;
	width: 90px;
	margin-top : 5px;
	margin-left: 10px;
}

.filebox input[type="file"] {
	position: absolute;
	width: 0;
	height: 0;
	padding: 0;
	overflow: hidden;
	border: 0;
}
</style>


</head>
<body>


	<div class="bar">
		<div class="home">
			<h1>
				<em> <a class="linkLine" href="mainFeed.jsp">instarkilogram
				</a></em>
			</h1>
		</div>
		<div class="container">
			<form action="search.jsp" method="get" enctype="multipart/form-data">
				<span> <input src="" class="total_search" type="text"
					id="search" name="keyword" placeholder="통합검색">&nbsp; <input
					class="search_btn" type="submit" value="검색">
				</span>
			</form>
		</div>


		<div class="nav-icon">

			<span class="img_icon"></span> <span class="img_icon"></span> <a
				href="javascript:window.history.back();"> <span
				class="material-icons img_icon"> arrow_back_ios</span></a>
		</div>
	</div>


	<div class="sign_body">
		<h1>
			<i>instarkilogram</i>
		</h1>
		<form class="text_left" action="" method="post"
			enctype="multipart/form-data">

			<div class="filebox update_flex">
				<span class="update_flex">사진첨부 </span> <input class="update_flex"
					id="uid" value="첨부파일" placeholder="첨부파일" name="fPic" title="사진">
				<label for="file">파일찾기</label> <input class="file1 update_flex "
					type="file" id="file1">
			</div>



		</form>
		<div class="text_left">
			<span class="update_flex">아이디</span> <span><input
				class="update_flex" type="text" name="uid" id="uid"
				placeholder="Username" onfocus="this.placeholder=''"
				onblur="this.placeholder='Username'"></span> <input
				class="update_left" type="button" id="button2" value="중복확인"
				onclick="idChk()">
		</div>



		<c:choose>
			<c:when test="${login == 1 }">
				<p style="color: red">이미 사용 중인 아이디입니다.</p>
				<input type="hidden" name="clickDu" value="N">
			</c:when>
			<c:when test="${login == 0 }">
				<p style="color: blue">사용 가능한 아이디입니다.</p>
				<input type="hidden" name="clickDu" value="Y">
			</c:when>
		</c:choose>
		<form action="usercontroller?type=UserSignUp" method="post">
			<div class="text_left">
				<span class="update_flex">비밀번호</span> <span class="update_flex"><input
					class="update_flex" type="password" name=upwd id="uid"
					placeholder="Password" onfocus="this.placeholder=''"
					onblur="this.placeholder='Password'"></span>
			</div>
			<div class="text_left">
				<span class="update_flex">비밀번호 확인</span> <span class="update_flex"><input
					id="uid" class="update_flex" type="password" name=uPwdOk
					placeholder="Confirm Password" onfocus="this.placeholder=''"
					onblur="this.placeholder='Confirm Password'"></span>
			</div>
			<div class="text_left">
				<span class="update_flex">이메일</span> <span><input id="uid"
					class="update_flex" type="email" name="email"
					placeholder="abc123@abc.com" onfocus="this.placeholder=''"
					onblur="this.placeholder='abc123@abc.com'"></span>
			</div>
			<div class="text_left">
				<span class="update_flex">이름</span> <span><input id="uid"
					class="update_flex" type="text" name="name" placeholder="홍길동"
					onfocus="this.placeholder=''" onblur="this.placeholder='홍길동'"></span>
			</div>
			<div class="text_left">
				<span class="update_flex">전화번호</span> <span><input id="uid"
					class="update_flex" type="text" name="phone"
					placeholder="010-0000-0000" onfocus="this.placeholder=''"
					onblur="this.placeholder='010-0000-0000'"></span>
			</div>
			<div class="text_left">
				<span class="update_flex">생년월일</span> <span><input id="uid"
					class="update_flex" type="text" name="birth" placeholder="생년월일 6자리"
					onfocus="this.placeholder=''" onblur="this.placeholder='생년월일 6자리'"></span>
			</div>
			<input type="button" id="butt1" value="취소" onclick="goLogIn()">
			<input type="submit" id="subm1" value="수정" onclick="signUp()">
			<input type="hidden" name="uID" value="${uid }">
		</form>
	</div>
</body>
</html>