<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.sns.mybatis.DBService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">


<meta charset="UTF-8">
<title>가져온리스트</title>

<style>
body {
margin-top: 75px;

}
.profile_name{
margin-right:2000px;
border-botto
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
			<form action="searchContorller?type=search" method="post" >
				<span> 
					<input class="total_search" type="text" id="search"
					name="keyword" placeholder="통합검색">&nbsp;
					<input class="search_btn" type="submit" value="검색">
				</span>
			</form>
			<!-- <form action="search.jsp" method="post" >
				<span> <input class="total_search" type="text" id="search"
					name="keyword" placeholder="통합검색">&nbsp;</a>
					<input class="search_btn" type="submit" value="검색">
				</span>
			</form> -->
		</div>
		<div class="nav-icon">
			<ul>
				<li class="material-icons "><a href="personalFeed.jsp">home</a></li>
				<li class="material-icons-outlined "><a href="postWrite.jsp">add_circle_outline</a></li>
				<li class="material-icons "><a href="login.jsp">logout</a></li>
			</ul>
		</div>
	</div>


	<table>
			<thead class="profile_box">
				<tr>
					<td><img class="profile_img"
						src="data:image/jpeg;base64,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">
					</td>
					<td width="0.5%">&nbsp; </td>
					<td>
						<%-- <a class="profile_name" href="personalFeed.jsp?personal_id=${search.u_id}&personal_bio=${search.bio}"> --%>
						<c:forEach var="search" items="${list}">
						<a class="profile_name" href="feedcontroller?type=otherUser&f_id=${search.u_id }">
							<li>
								<div class="id.1">${search.u_id}</div>
								<div class="id.1">${search.bio}</div>
							</li>
	 	 				</a>
	 	 				</c:forEach>    	
					</td>
				</tr>
			
				 
				
			</thead>
			</table>
			
<h2></h2>
</body>
</html>