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

.sign_body {
margin-left : auto;
margin-right : auto;
	width: 500px;
	height: 550px;
}

.update_flex {
	display: inline-flex;
	padding: 5px;
	margin: 5px;
	height: 30px;
	font-size : 20px;
	width : 140px;
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
	width: 70px;
	height: 44px;
	margin: 10px;
	padding: 6px;
	display: inline-flex;
	text-align: center;
	display: inline-flex;
	vertical-align: middle;
	font-size : 15px;
	
}

.text_left {
	text-align: left;
	margin-left: 20px;
	height: 60px;
}

#butt1 {
	text-align: center;
	width: 70px;
	height: 50px;
	font-size : 20px;
}
#butt1 :hover {
	background-color: #a7aaad;

}


#subm1 {
	margin-left: 15px;
	padding: 5px;
	text-align: center;
	width: 170px;
	background-color: #1E82FF;
	color: white;
	height: 50px;
	font-size: 20px;
	border-style : none;
	border-radius: 5px;
	padding: 5px;
}
#subm1 :hover {
	background-color: #a7aaad;

}




form input :: file-selector-button {
	display: none;
}

.filebox {
display: inline-flex;
width : 480px;

}

.file1 {
	width: 300px;
}


</style>
<script>
	function edit() {
		let firstForm = document.forms[1];
		firstForm.submit();
	}

</script>

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
		<form class="text_left" action="usercontroller?type=updateUser" method="post"
			enctype="multipart/form-data">

			<div class="filebox">
				<span class="update_flex">프로필 사진</span>
				
				<input class="file1 update_flex "
					type="file" id="file1" name="userPic">
			</div>
		<!-- </form>
		
		<form action="usercontroller?type=updateUser" method="post">
			  --><div class="text_left">
				<span class="update_flex">비밀번호</span><span>
					<input
					class="update_flex" type="password" name=upwd id="uid1"
					 placeholder="Password" onfocus="this.placeholder=''"
					onblur="this.placeholder='Password'">
				 </span>
			</div>
			<div class="text_left">
				<span class="update_flex">비밀번호 확인</span><span><input
					id="uid2" class="update_flex" type="password" name=upwdOk
					placeholder="Confirm Password" onfocus="this.placeholder=''"
					onblur="this.placeholder='Confirm Password'"></span>
			 </div>
			<div class="text_left">
				<span class="update_flex">이메일</span><span><input id="uid3"
					class="update_flex" type="email" name="email"
					placeholder="abc123@abc.com" onfocus="this.placeholder=''"
					onblur="this.placeholder='abc123@abc.com'"></span>
			</div>
			
			<div class="text_left">
				<span class="update_flex">전화번호</span><span><input id="uid4"
					class="update_flex" type="text" name="phone"
					placeholder="010-0000-0000" onfocus="this.placeholder=''"
					onblur="this.placeholder='010-0000-0000'"></span>
			</div>
			
			<div class="text_left">
				<span class="update_flex">BIO</span><span><input id="uid5"
					class="update_flex" type="text" name="bio"
					placeholder="BIO" onfocus="this.placeholder=''"
					onblur="this.placeholder='BIO'"></span>
			</div>
			<br>
			
				<a href="javascript:window.history.back();"><input type="button" id="butt1" value="취소"></a>
			<input type="submit" id="subm1" value="수정" onclick="edit()">
		</form>
	</div>
</body>
</html>