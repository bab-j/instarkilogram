<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">


<meta charset="UTF-8">
<title>개인페이지 수정</title>

<style>
body {
	padding-top: 75px;
}

.bar {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.home {
	margin-left: 50px;
	margin-top: 10px;
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

th {
	width: 50px;
	padding-left: 20px;
	font-family: monospace;
	font-size: 1em;
}
</style>


</head>
<body>

	<div class="bar">
		<div class="home">
			<h3>instarkilogram</h3>
		</div>
	</div>

	<div class="sign_update">
		<h1>
			<i>instarkilogram</i>
		</h1>



		<form action="usercontroller?type=UserIdChk" method="post">
			<table>
				<tr>
					<th>사진첨부</th>
					<td>
					<input class="file" type="file" name="u_Pic" id= title="사진">
					<input type="button" value="등록" id="" onclick="">
					</td>
					
				</tr>
				<tr>
					<th>아이디</th>
					<td><input type="text" name=uid id="uid"
						placeholder="Username" style="ime-mode: disabled"
						onfocus="this.placeholder=''" onblur="this.placeholder='Username'">
						<input type="button" id="button1" value="중복확인" onclick="idChk()">
					</td>
				</tr>
			</table>
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
		</form>
		<form action="usercontroller?type=UserSignUp" method="post">
			<table>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name=upwd id="pwd"
						placeholder="Password" onfocus="this.placeholder=''"
						onblur="this.placeholder='Password'"></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name=uPwdOk
						placeholder="Confirm Password" onfocus="this.placeholder=''"
						onblur="this.placeholder='Confirm Password'"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email"
						placeholder="abc123@abc.com" onfocus="this.placeholder=''"
						onblur="this.placeholder='abc123@abc.com'"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" placeholder="홍길동"
						onfocus="this.placeholder=''" onblur="this.placeholder='홍길동'"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="phone"
						placeholder="010-0000-0000" onfocus="this.placeholder=''"
						onblur="this.placeholder='010-0000-0000'"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="birth" placeholder="생년월일 6자리"
						onfocus="this.placeholder=''" onblur="this.placeholder='생년월일 6자리'"></td>
				</tr>
			</table>
			<input type="button" id="butt" value="취소" onclick="goLogIn()">
			<input type="submit" id="subm" value="수정" onclick="signUp()">
			<input type="hidden" name="uID" value="${uid }">
		</form>
	</div>
</body>
</html>