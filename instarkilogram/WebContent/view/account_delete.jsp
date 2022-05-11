<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>account_delete.jsp</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="style.css">

<style>
.write {
	text-align: center;
	width: 800px;
	height: 400px;
	margin: auto;
	margin-top: 120px;
	border-radius: 5px;
	width: 800px;
}

.text_box {
	margin: 10px;
	width: 400px;
	height: 40px;
	border : 1px solid silver;
		border-radius: 4px;
	
}

#subm2 {
	margin-top: 2px;
	height: 40px;
	background-color: #1E82FF;
	color: white;
	font-size: 20px;
	border: none;
	width: 404px;
	margin-left: auto;
	margin-right: auto;
	border-radius: 4px;
	margin: 8px;
}

#subm2 :hover {
	background-color: #a7aaad;
}
</style>
<script>
	function account_del() {

		let cfmDel = confirm("정말로 삭제하시겠습니까?");
		if (cfmDel) {
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
			<h1>
				<em> <a class="linkLine" href="mainFeed.jsp">instarkilogram
				</a></em>
			</h1>
		</div>
		<div class="container">
			<form action="feedcontroller?type=search" method="post">
				<span> <input class="total_search" type="text" id="search"
					name="keyword" placeholder="통합검색">&nbsp; <input
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

	<div class="write">
		<h1 class="home">
			<em>계정 삭제</em>
		</h1>
		<br>
		<br>
		<form action="usercontroller?type=delete" method="post">
			<input class="text_box" type="text" placeholder="암호를 입력해주세요."
				name="delkeyword" onfocus="this.placeholder=''"
				onblur="this.placeholder='암호를 입력해주세요.'"> <input
				id="subm2" type="submit" value="삭제">
		</form>
	</div>
</body>
</html>