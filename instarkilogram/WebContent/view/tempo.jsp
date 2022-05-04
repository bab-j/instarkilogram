<%@page import="com.sns.feed.db.FeedDAO"%>
<%@page import="com.sns.feed.db.FeedVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tempo</title>
</head>
<%--
	String path = "c:/upload/temp";
	MultipartRequest mr = new MultipartRequest(
					request, path, (10*1024*1024),
					"utf-8", new DefaultFileRenamePolicy());
	
	FeedVO fvo = new FeedVO();
	fvo.setContent(mr.getParameter("content"));
	fvo.setU_idx(23);
	
	if(mr.getFile("f_pic") != null){
		fvo.setF_pic(mr.getFilesystemName("f_pic"));
	} else {
		fvo.setF_pic("");
	}
	
	FeedDAO.insert(fvo);
	
	response.sendRedirect("main_feed.jsp");
--%>
<script>
	function send() {
		location.href = "postWrite.jsp";
	}
</script>
<body>
	<h2>임시 페이지</h2>
	<input type="button" onclick="send()">
</body>
</html>