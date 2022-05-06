<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.sns.mybatis.DBService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가져온리스트</title>
<c:forEach var="search" items="${list}">
		<li>
		
			<div class="id.1">${search.u_id}</div>
		</li>
	</c:forEach>
</head>
<body>
	
<h2></h2>
</body>
</html>