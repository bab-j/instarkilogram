<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>account_delete.jsp</title>
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
	}
	#sbm {
		margin-top:20px;
		height: 40px;
		background-color: #505050;
		color: white;
		font-size: 20px;
		border: none;
	}
	h3 {float: left; background-color: yellow;}
	span {float: right; background-color: aqua;}
	
</style>
<script>
	function account_del() {
		
		let cfmDel = confirm("정말로 삭제하시겠습니까?");
		if(cfmDel){
			console.log("yes");
		} else {
			console.log("내 계정 페이지로 가자");
		}
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
	<h1>계정 삭제</h1><br>
	<form action="usercontroller?type=delete" method="post" >
		<input type="text" placeholder="암호를 입력해주세요." name="delkeyword"
		onfocus="this.placeholder=''" onblur="this.placeholder='암호를 입력해주세요.'">
		<input type="submit" value="삭제" id="sbm">
	</form>
</div>
</body>
</html>