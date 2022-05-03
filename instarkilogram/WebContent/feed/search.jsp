<%@page import="com.sns.common.Paging"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.sns.common.Paging"%>

<link rel="stylesheet" href="style.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과 페이지</title>
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">


<style>

.grid-head {
	float: inherit;
}

.grid-body {
	
}

.grid_table {
	margin-left: auto;
	margin-right: auto;
	width: 293px;
	height: 293px;
}
</style>
<script>
	function searching() {
		document.getElementById("search").onclick = function () {
			location.href = "search.jsp"
			
		}

	}
	
	
</script>

<%  
 Paging  p = new Paging();

%>
</head>
<body>

<link rel="stylesheet" href="style.css">

	<div class="bar">
		<div class="home">
			<h1><em> <a class="linkLine" href="main_feed.jsp"> instarkilogram </a></em></h1>
		</div>
		<div class="container">
				<form action="search.jsp" method="get" enctype="multipart/form-data">
			<span>
					<input type="text" id= "search" name="keyword" placeholder="통합검색" style=" width:200px;height:25px;font-size:12px; margin-bottom: 8px">
					<input type="submit" value="검색" style="width:80px; height:25px; font-size: 12px ">
			</span>
			</form>
		</div>
		<div class="nav-icon">
			<ul>
				<li class="material-icons">home</li>
				<li class="material-icons-outlined">explore</li>
				<li class="material-icons-outlined">favorite_border</li>
			</ul>
		</div>
	</div>
	
	
	<h1 class="search_result">'${search }' 검색 결과</h1>
	<div class="search_grid">
		<table class="grid_table">
			<tbody class="grid-body">

				<%
				int i;
				for (int j = 1; j <= 20; j += 3) {
				%>
				<tr>
					<c:forEach var="i" begin="<%=j%>" end="<%=j + 2%>">
						<td><a href="../img/${i }.jpg"><img src="../img/${i }.jpg" width="293px" height="293px"></img></a></td>
					</c:forEach>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>