<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과 페이지</title>
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">

<style>
.bar {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.home {
	margin-left: 50px;
	margin-top: 10px;
}

.container {
	display: flex;
	width: 500px;
	margin-left: 400px;
}

.nav-icon {
	display: flex;
	margin-left: 300px;
}

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
		document.getElementById("#search").onclick = function () {
			location.href = "search.jsp"
			
		}

	}
</script>





</head>
<body>

	<div class="bar">
		<div class="home">
			<h3>instarkilogram</h3>
		</div>
		<div class="container">
			<span>
				<form action="search.jsp" method="get" enctype="multipart/form-data">
					<input type="text" key= "search" name="keyword" placeholder="통합검색">&nbsp;
					<input type="submit" value="검색">
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
	<hr>
	<h1>"${search }" 검색 결과</h1>

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