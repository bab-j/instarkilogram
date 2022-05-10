
<%@page import="com.sns.common.Paging"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.sns.common.Paging"%>



<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>검색결과 페이지</title>


<style>
tr, td {
	border: 5px solid #FFFFFF;
	border-collapse: collapse;
}

body {
height: 880px;

}

.subject_center {
	text-align: center;
	font-size: 28px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 200px;
	font-size: 40px;
}

.search_body {
	padding: 50px;
	margin-left: auto;
	margin-right: auto;
	width: 1200px; 
	background-color: white;
	overflow-y:scroll;
}

.feed_img {
	border: 5px solid white;
	width: 293px;
	height: 293px;
}
</style>
<script>
	function searching() {
		document.getElementById("search").onclick = function() {
			location.href = "search.jsp"

		}

	}
</script>

<%
Paging p = new Paging();
%>
</head>
<body>


	<div class="bar">
		<div class="home">
			<h1>
				<em> <a class="linkLine" href="mainFeed.jsp">
						instarkilogram </a></em>
			</h1>
		</div>
		<div class="container">
			<form action="search.jsp" method="get" enctype="multipart/form-data">
				<span> <input class="total_search" type="text" id="search"
					name="keyword" placeholder="통합검색">&nbsp;</a><input
					class="search_btn" type="submit" value="검색">
				</span>
			</form>
		</div>
		<div class="nav-icon">
			<ul>
				<li class="material-icons"><a href="personalFeed.jsp">home</a></li>
				<li class="material-icons-outlined"><a href="postWrite.jsp">add_circle_outline</a></li>
				<li class="material-icons"><a href="logout.jsp">logout</a></li>
			</ul>
		</div>
	</div>
	<!-- upside bar -->

	<br>
	<div class="search_body">
		<h1 class="search_result">#'${postContent}' 검색 결과</h1>
		<hr style=" border: 1px solid silver; margin-top: 15px; margin-bottom : 30px;">
		<div class="search_grid">

			<c:choose>
				<c:when test="${empty contentList }">
					<div class="subject_center">
						<h3>게시물이 존재하지 않습니다.</h3>
					</div>
				</c:when>
				<c:otherwise>
					<div class="">

						<div class="feed_table">

							<c:forEach var="feed" items="${contentList }">
								<a href="feedcontroller?type=idvPage&f_idx=${feed.getF_idx() }">
									<img class="feed_img" src="../imgs/${feed.getF_pic()}" />
								</a>
							</c:forEach>
						</div>

					</div>

				</c:otherwise>
			</c:choose>

			<%-- <table class="grid_table">
			<tbody class="grid-body">

				<%
				int i;
				for (int j = 1; j <= 20; j += 3) {
				%>
				<tr>
					<c:forEach var="i" begin="<%=j%>" end="<%=j + 2%>">
						<td><a href="../img/${i }.jpg"><img src="../img/${i }.jpg" width="293px" height="293px"  alt="${i }.jpg"></img></a></td>
					</c:forEach>
				</tr>
				<%
					}
				%>
			</tbody>
		</table> --%>
		</div>
	</div>
</body>
</html>