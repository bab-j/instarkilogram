<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.sns.mybatis.DBService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.net.URLEncoder" %>




<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">

<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<title>instarkilogram : 검색 화면</title>

<style>
body {
	width: 1800px;	
height:1000px;
}

.profile_name {
	width: 500px;
	height: 65px;
	display: inline-flex;
}

.profile_box {
	margin-left: auto;
	margint-right: auto;
	background-color: white;
	width: 600px;
	height: 65px;
	background-color: white;
	border: 1px solid silver;
	display: inline-flex;
	float: left;
	padding : 5px;
}

.search_body {
	margin-left: auto;
	margin-right: auto;
	width: 600px;
}

.li_none {
	font-weight: bold;
	list-style: none;
	text-align: left;
	padding-left: 20px;
}
</style>


</head>
<script>
</script>

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
			<ul>
				<li class="material-icons "><a href="personalFeed.jsp">home</a></li>
				<li class="material-icons-outlined "><a href="postWrite.jsp">add_circle_outline</a></li>
				<li class="material-icons "><a href="login.jsp">logout</a></li>
			</ul>
		</div>
	</div>   

	<div class="search_body">
	
	<div class="profile_box" >
	
<%
		String bu = (String)request.getAttribute("keyword");
%>		
		<a href="feedcontroller?type=searchPost&postContent=<%= URLEncoder.encode(bu, "UTF-8")%>" >
			'${keyword }' &nbsp; 검색 결과 게시물
		</a>
	</div>
	
		<c:forEach var="search" items="${list}">
			<div class="profile_box">
				<span><img class="profile_img"
				 			src="../imgs/${search.u_pic }">
				</span> <span class="profile_name"> <a
					href="feedcontroller?type=otherUser&f_id=${search.u_id }">
						<ul class="li_none">
							<li>${search.u_id}</li>
							<li>${search.bio}</li>
						</ul>
				</a>
				</span>
			</div>
		</c:forEach>
	</div>
</body>
</html>