<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
	session.removeAttribute("u_idx");
	System.out.println("${u_idx}");
%>
<script>
	location.href="login.jsp";
</script>