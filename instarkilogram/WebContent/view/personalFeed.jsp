<%@page import="com.sns.feed.db.FeedVO"%>
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
<link rel="stylesheet"
	href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>instrakilogram : 개인피드</title>


<style>
.personal_body {
	background-color: white;
	border: 1px solid silver; 
	height: auto;
	width: 960px;
	padding-top : 20px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 75px;
	border-radius: 5px;
	
}

.bigProfile_img {
	border-radius: 50%;
	width: 150px;
	height: 150px;
	display: inline;
	padding:30px;
}

.profile {
	width: 920px;
	margin-bottom: 40px;
}

.big_img {
	width: 150px;
	height: 150px;
}

.float_table {
	margin-left: 50px;
	width: 660px;
	float: right;
	margin-bottom: 15px;
}

.ailgn_right {
	text-align: right;
}

table {
	margin-left: auto;
	margin-right: auto;
	height: 60px;
}

.tr_space {
	padding-left: auto;
	padding-right: auto;
	width: auto;
}

.td_space {
	width: auto;
	padding-left: 30px;
	padding-right: 30px;
	text-align: center;
	font-size : 18px;
}

tr, td {
	border: 5px solid #FFFFFF;
	border-collapse: collapse;
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
			<form action="searchContorller?type=search" method="post" >
				<span> 
					<input class="total_search" type="text" id="search"
					name="keyword" placeholder="통합검색">&nbsp;
					<input class="search_btn" type="submit" value="검색">
				</span>
			</form>
		</div>
		<div class="nav-icon">
			<ul>
				<li class="material-icons"><a href="mainFeed.jsp">home</a></li>
				<li class="material-icons-outlined"><a href="postWrite.jsp">add_circle_outline</a></li>
				<li class="material-icons"><a href="logout.jsp">logout</a></li>
			</ul>
		</div>
	</div>

	<br>
	<div class="personal_body">
		<div class="profile">
			<div>
				<div class="float_table">
					<div class="ailgn_right">
						<a href="setting.jsp"><div class="material-symbols-outlined">settings</div></a>
					</div>
					<span>
						<table>
							<thead>
								<tr class="tr_space">
									<td class="td_space"><b>게시물</b></td>
									<td class="td_space"><b>팔로워</b></td>
									<td class="td_space"><b>팔로잉</b></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="td_space">${feedList.size() }</td>
									<td class="td_space">${fwerList.size() }</td>
									<td class="td_space">${fingList.size() }</td>
								</tr>
							</tbody>
						</table>
						
						
					</span>
				</div>

				<div class="float_table">
					<div>
						<b>${uv.getU_id() }</b>
					</div>
					<div>${uv.getBio() }</div>
				</div>
				<div>
					 <img class="bigProfile_img" src="c:/upload/temp/${uv.getU_pic() }"/>
				 </div>
			</div>
		</div>





		<c:choose>
		<c:when test="${empty feedList }">
			<h3>게시물이 존재하지 않습니다.</h3>
		</c:when>
		<c:otherwise>
		<div class="search_grid">
			<table class="grid_table">
			
				<tbody class="grid-body">
					
					
					
				 <%for (int j = 1; j <= 15; j += 3) {%>
					<tr>
						<c:forEach var="i" begin="<%=j%>" end="<%=j + 2%>">
							<td>
								<a href="feedcontroller?type=idvPage&f_idx=${feedList[i].getF_idx() }">
								<img src="c:/upload/temp/${feedList[i].getF_pic()}" width="293px" height="293px"/>
								</a>
							</td>
						</c:forEach>
					</tr>
					<%
					}
					%>

				</tbody>
			</table>
		</div>
		
		</c:otherwise>
		</c:choose>
		
	</div>
</body>
</html>