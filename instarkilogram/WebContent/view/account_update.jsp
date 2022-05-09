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
	padding: 10px;
}

.update_flex {
	display: inline-flex;
}

#button1 {
	
}

.file1 {


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
					id="search" name="keyword" placeholder="통합검색">&nbsp;
					<input
					class="search_btn" type="submit" value="검색">
				</span>
			</form>
		</div>
		
		
		<div class="nav-icon">

			<span class="img_icon"></span> <span class="img_icon"></span> 
			<a
				href="javascript:window.history.back();"> <span
				class="material-icons img_icon"> arrow_back_ios</span></a>
		</div>
	</div>


	<div class="sign_body">
		<h1><i>instarkilogram</i></h1>

			<div class="sign_update">
				<span class="update_flex">사진첨부</span>
				
				<span class="update_flex"> 
				<input id="f_input" type="file" name="u_Pic" title="사진"> <input type="button" value="등록" id=""
					onclick="">
				</span>

			</div>
			<div>
				<span>아이디</span> <span><input type="text" name="uid" id="uid"
					placeholder="Username" onfocus="this.placeholder=''"
					onblur="this.placeholder='Username'"></span>
				<div>
					<input type="button" id="button1" value="중복확인" onclick="idChk()">
				</div>
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
				<div>
					<span>비밀번호</span> <span><input type="password" name=upwd
						id="pwd" placeholder="Password" onfocus="this.placeholder=''"
						onblur="this.placeholder='Password'"></span>
				</div>
				<div>
					<span>비밀번호 확인</span> <span><input type="password"
						name=uPwdOk placeholder="Confirm Password"
						onfocus="this.placeholder=''"
						onblur="this.placeholder='Confirm Password'"></span>
				</div>
				<div>
					<span>이메일</span> <span><input type="email" name="email"
						placeholder="abc123@abc.com" onfocus="this.placeholder=''"
						onblur="this.placeholder='abc123@abc.com'"></span>
				</div>
				<div>
					<span>이름</span> <span><input type="text" name="name"
						placeholder="홍길동" onfocus="this.placeholder=''"
						onblur="this.placeholder='홍길동'"></span>
				</div>
				<div>
					<span>전화번호</span> <span><input type="text" name="phone"
						placeholder="010-0000-0000" onfocus="this.placeholder=''"
						onblur="this.placeholder='010-0000-0000'"></span>
				</div>
				<div>
					<span>생년월일</span> <span><input type="text" name="birth"
						placeholder="생년월일 6자리" onfocus="this.placeholder=''"
						onblur="this.placeholder='생년월일 6자리'"></span>
				</div>
				<input type="button" id="butt" value="취소" onclick="goLogIn()">
				<input type="submit" id="subm" value="수정" onclick="signUp()">
				<input type="hidden" name="uID" value="${uid }">
			</form>
		</div>
</body>
</html>