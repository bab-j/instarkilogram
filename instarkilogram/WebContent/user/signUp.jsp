<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
<style>
	body {
		background-color:#f6f7f7;
	}
	
	.sign {
		background-color:white;
		border: 1.5px solid silver;
		border-radius: 10px;
		margin-left: 36%;
		width: 400px;
		height: 670px;
		text-align: center;
	}
	.sign h1 {
		font-size: 2.5em;
		font-family: monospace;
	}
	.sign input {
		border: 1px solid gray;
		border-radius: 5px;
		margin: 10px;
		width: 230px;
		height: 40px;
		font-size: 1em;
		color: gray;
		padding-left: 10px;
	}
	#uid {
		width: 180px;
	}
	#button1 {
		width: auto;
		height: 30px;
		font-size: 0.7em;
	}
	#button1:hover {
		background-color: #a7aaad;
	}
	#butt {
		text-align:center;
		width: 50px;
	}
	#subm {
		padding-left: 0px;
		text-align:center;
		width: 150px;
		background-color: #3582c4;
		color:white;
	}
	table {
		width: 400px;
		border-collapse: collapse;
		margin-bottom: 20px;
	}
	th {
		width: 50px;
		padding-left: 20px;
		font-family: monospace;
		font-size: 1em;
	}
	
	#butt:hover {
		background-color: #a7aaad;
	}
	#subm:hover {
		background-color: #0a4b78;
	}
	.bar {
		display:flex;
		justify-content : space-between;
		align-items : center;
	}
	.home { margin-left: 50px; margin-top: 10px;}
	
	form p {
		margin-bottom: 1px;
		margin-top: 0px;
	} 

</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
 	<%-- $().ready(function(){		
		$("#uid").val(<%=request.getParameter("uid")%>);
	}); --%>
 	
	function idChk() {
		let firstForm = document.forms[0];
		firstForm.submit();
	}
	function signUp() {
	
	}
	
	window.onload = function () {
		let asd = document.getElementById("uid");
		asd.value = "${uid}";
		/* if ("${login}" == 0) {
			//document.getElementById("pp").style.visibility = "visible";
		} else {
			//document.getElementById("pp").style.visibility = "visible";
		} */
	}
</script>
</head>

<body>
	<div class="bar">
	<div class="home">
		<h3>instarkilogram</h3>
	</div>
	</div>
<div class="sign">
			<h1><i>instarkilogram</i></h1>
			<form action="usercontroller?type=UserSignUp" method="post">
			<table>
			<tr>
				<th>아이디</th> 
				<td>
					<input type="text" name=uid id="uid" placeholder="Username" onfocus="this.placeholder=''" onblur="this.placeholder='Username'">
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
			<form>
			<table>
			<tr>
				<th>비밀번호</th> <td><input type="password" name=upwd id="pwd" placeholder="Password" onfocus="this.placeholder=''" onblur="this.placeholder='Password'"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th> <td><input type="password" name=upwd_ok placeholder="Confirm Password" onfocus="this.placeholder=''" onblur="this.placeholder='Confirm Password'"></td>
			</tr>
			<tr>
				<th>이메일</th> <td><input type="email" name="email" placeholder="abc123@abc.com" onfocus="this.placeholder=''" onblur="this.placeholder='abc123@abc.com'"></td>
			</tr>
			<tr>
				<th>이름</th> <td><input type="text" name="name"></td>
			</tr>	
			<tr>
				<th>전화번호</th> <td><input type="text" name="phone" placeholder="010-0000-0000" onfocus="this.placeholder=''" onblur="this.placeholder='010-0000-0000'"></td>
			</tr>
			<tr>
				<th>생년월일</th> <td><input type="text" name="birth" placeholder="생년월일 6자리" onfocus="this.placeholder=''" onblur="this.placeholder='생년월일 6자리'"></td>
			</tr>
			</table>
					<input type="button" id="butt" value="취소" onclick="history.back()">
					<input type="submit" id="subm" value="가입" onclick="signUp()">
					<input type="hidden" name="type" value="UserSignUp">
			</form>
</div>
</body>
</html>






