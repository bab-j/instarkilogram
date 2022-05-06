<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="style.css">

<meta charset="UTF-8">
<title>setting.jsp</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
.body {
	margin-top: auto;
	margin-bottom: auto;
	margin-top: auto;
}

.write {
	width: 600px;
	height: 500px;
	margin: auto;
	margin-top: 120px;
}

#icon_setting {
	font-size: 50px;
	margin-top: 15px;
}

.setting_title {
	display: flex;
}

ul {
	list-style: none;
}

ol {
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Helvetica, Arial, sans-serif;
	margin-left: 20px;
	font-size: 24px;
	font-weight: bold;
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

	<div class="write">
		<ul class="setting_title">
			<li><span class="material-icons" id="icon_setting">settings</span></li>
			<li><h1>&nbsp; 설정</h1></li>
		</ul>
		<hr width="550px" style="border: 1px solid silver;">
		<ol>
			<br>
			<li><a href="account_update.jsp">개인정보 변경</a></li>
			<br>
			<li><a href="account_delete.jsp">계정 삭제</a></li>
		</ol>

	</div>
</body>
</html>