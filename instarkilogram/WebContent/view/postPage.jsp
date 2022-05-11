<%@page import="com.sns.feed.db.FeedVO"%>
<%@page import="com.sns.feed.db.FeedDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<!--브라우저 적당량  -->
<title>post.page</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



<style>
.main_body1 {
	width: 1000px;
	height: 614px;
	background-color: white;
	margin-top: 120px;
	margin-right: auto;
	border: 1px solid silver;
	margin-left: auto;
}

.left_body1 {
	width: 614px;
	height: 614px;
	border-right: 1px solid silver;
	float: left;
}

.right_body {
	border: 1px solid silver;
	width:;
	height: 614px;
}

.right_float {
	float: right;
	margin: 8px;
	height: 604px;
	width: 368px;
	background-color: white;
}

.feed_box {
	width: 614px;
	height: 614px;
}

.feed_img1 {
	width: 614px;
	height: 614px;
}

.feed_name {
	justify-content: space-between;
	width: 375px;
}

.profile_img {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	margin-left: 10px;
	margin-top: 5px;
	display: inline-flex;
}

.profile_img1 {
	width: 30px;
	height: 30px;
	border-radius: 50%;
	padding: 8px;
}

.feed_content {
	padding: 10px;
	width: 350px;
	height: 220px;;
}

.profile_name {
	height: px;
	font-weight: bold;
	display: inline-flex;
}

.feed_style {
	margin-top: 20px;
}

.profile_box1 {
	height: 120px;
	overflow-y: scroll;
}

.recommend_box {
	height: 60px;
}

.comment_width1 {
	font-weight: bold;
	display: inline-flex;
	width: 70px;
}

.comment_width2 {
	width: 280px;
	height: 32px;
	margin-top: 5px;
	padding-right: 10px;
	margin-right: 15px;
	float: right;
	display: flex;
	padding-right: 10px;
}

.profile_height {
	height: 65px;
	display: inline-flex;
}

.feed_name1 {
	display: inline-flex;
	padding: 20px;
	margin-top: 10px;
	font-weight: bold;
}

.feed_img_cover {
	height: 100%;
	width: 100%;
	object-fit: 100%;
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




	<div class="main_body1">
		<!-- 메인 박스 -->
		<div class="left_body1">
			<!-- 블루 -->
			<!--흰 컨텐츠 -->

			<div class="feed_img1">
				<img class="feed_img_cover" src="../imgs/${fvo.getF_pic() }">
			</div>

		</div>
		<!--왼쪽  -->

		<div class="right_body">
			<!--옐로  -->
			<div class="right_float">
				<div>
					<div class="profile_height">
						<a href="feedcontroller?type=otherUser&f_id=${fvo.getU_id() }">
							<img class="profile_img" src="../imgs/${uv.u_pic }">
						</a> <span class="feed_name1"> <a
							href="feedcontroller?type=otherUser&f_id=${fvo.getU_id() }">
								${fvo.getU_id() } </a>
						</span>
					</div>
				</div>

				<div>
					<div class="feed_content">
						<p class="feed_txt">
							<b> ${fvo.getU_id() } </b> ${fvo.getContent() }
						</p>
					</div>
					<c:set var="f_idx" value="${fvo.getF_idx() }" scope="request" />
					<%
					FeedVO vo = new FeedVO();
					System.out.println("F_IDX: " + request.getAttribute("f_idx"));
					vo.setF_idx((int) request.getAttribute("f_idx"));
					vo.setU_id((String) session.getAttribute("u_id"));
					int result = FeedDAO.likeOk(vo);//좋아요 상태 확인
					System.out.println("result(post): " + result);
					pageContext.setAttribute("result", result);
					int countLike = FeedDAO.countLike((int) request.getAttribute("f_idx"));
					%>
					<div class="feed_icon">
						<div class="feed_style">
							<table>
								<tr class="feed_row">
									<c:choose>
										<c:when test="${result == 0 }">
											<td class="material-symbols-outlined">favorite</td>
											<td class="material-symbols-outlined">mode_comment</td>
										</c:when>
										<c:otherwise>
											<td class="material-icons-outlined" style="color: red;">favorite</td>
											<td class="material-icons-outlined icon_space">mode_comment</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</table>
						</div>
					</div>
					<div class="feed_like">
						<p class="feed_text">
							<b>좋아요 <%=countLike%>개
							</b>
						</p>
					</div>



					<div class="profile_box1">
						<c:forEach var='comm' items='${commList }'>
							<div class="">
								<span class="comment_width1">${comm.getU_id() }</span><span>${comm.getComm() }</span>
							</div>
						</c:forEach>
					</div>
					<!-- 임시로 AA컨트롤러 씀 -->
					<form action="feedcontroller?type=writeComm" method="post">
						<div class="recommend_box">
							<hr
								style="border: 1px solid silver; margin-right: 15px; margin-left: 10px;"
								width="340px;">
							<img class="profile_img1"
								src="data:image/jpeg;base64,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">
							<input class="comment_width2" type="text" name="comments"
								placeholder="댓글"> <input type="hidden" name="f_idx"
								value="${fvo.getF_idx() }">
						</div>
					</form>

				</div>
			</div>
		</div>
		<!--오른쪽  -->
	</div>
	<!-- main -->
</body>
</html>