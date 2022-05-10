<%@page import="com.sns.common.Paging"%>
<%@page import="com.sns.feed.db.FeedVO"%>
<%@page import="java.util.List"%>
<%@page import="com.sns.feed.db.FeedDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	Paging p = new Paging();
	String u_id = (String)session.getAttribute("u_id");
	String u_pic = (String)session.getAttribute("u_pic");
	
	System.out.println("u_pic " + u_pic);
	
	List<FeedVO> postList = FeedDAO.CntMain(u_id);
	int total = postList.size();
	System.out.println("게시물 총수량 : " + total);
	
	p.setTotalRecord(total);
	p.setTotalPage();
	
	
	String cPage = request.getParameter("cPage");
	if(cPage != null){
		p.setNowPage(Integer.parseInt(cPage));
	}
	System.out.println("cPage : " + cPage);
	
	p.setEnd(p.getNowPage() * p.getNumPerPage());
	p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
	
	String begin = Integer.toString(p.getBegin());
	String end = Integer.toString(p.getEnd());
	
	int beginPage = (p.getNowPage() - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
	p.setBeginPage(beginPage);
	p.setEndPage(beginPage + p.getPagePerBlock() - 1);
	
	if(p.getEndPage() > p.getTotalPage()){
		p.setEndPage(p.getTotalPage());
	}
	
	System.out.println("beginPage :" + p.getBeginPage());
	System.out.println("endPage :" + p.getEndPage());
	
	List<FeedVO> pList = FeedDAO.mainList(u_id,begin,end);
	
	System.out.println("pList.size() : " + pList.size()); 
	System.out.println("u_id, begin, end : " + u_id +  "," + begin +","+end);
	
	pageContext.setAttribute("pList", pList);
	pageContext.setAttribute("pvo", p);
	
%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<!--브라우저 적당량  -->
<title>instrakilogram : 메인화면</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
	crossorigin="anonymous">
</script>

<style>
.feed_name {
	margin-left: auto;
	margin-right: auto;
}

.profile_img {
	width: 32px;
	height: 32px;
	border-radius: 50%;
	margin-left: 10px;
	margin-right: 10px;
}

.profile_name {
	font-weight: bold;
	height: 32px;
	font-size: 20px;
}

.profile_box {
	list-style-type: none;
	float: left;
	margin-left: 5px;
}

.img_row {
	margin-right: auto;
	width: 293px;
	height: 293px;
	margin-left: auto;
}

.feed_body {
	margin-left: 20px;
	text-align: left;
}

.feed_row {
	text-align: left;
}

.like {
	font-weight: bold;
	padding-top: 8px;
}

.user_name {
	margin-left: 10px
}

.u_comment {
	margin-left: 10px;
	text-align: left;
}

.comment_write {
	text-align: center;
}

.comment_textbox {
	height: 32px;
	border-radius: 4px;
	border: 1px solid silver;
}

.comment_width {
	width: 70px;
	font-weight: bold;
	display: inline-block;
}



.feed_contain_font {
	text-align: left;
	padding-bottom: 30px;
	font: bold 12px;
}
.contain_box {
padding-bottom: 50px;

}

.paging {
list-style: none;
display: inline-flex;

}


.li_paging {
align-content: center;
margin-left: 20px;

}
.now {
font-weight: bold;
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
			<form action="feedcontroller?type=search" method="post" >
				<span> 
					<input class="total_search" type="text" id="search"
					name="keyword" placeholder="통합검색">&nbsp;
					<input class="search_btn" type="submit" value="검색">
				</span>
			</form>
		</div>
		<div class="nav-icon">
			<ul>
				<li class="material-icons " ><a href="feedcontroller?type=myHome">home</a></li>
				<li class="material-icons-outlined "><a href="postWrite.jsp">add_circle_outline</a></li>
				<li class="material-icons "><a href="logout.jsp">logout</a></li>
			</ul>
		</div>
	</div>
	<!-- upside bar -->

	<br>
	<br>

	<div class="main_body">
		<!-- 메인 박스 -->
		<div class="center_body ">
			<!-- 블루 -->
			
			<!-- 게시물 시작~~~~~~------- -->
			<c:choose>
			<c:when test="${empty pList }">
				<br><br><h3>게시물이 존재하지 않습니다.</h3>
			</c:when>
			
			<c:otherwise>
			<c:forEach var="fv" items='${pList }'>

				<div class="feed_box">
					<!--흰 컨텐츠 -->
	
					<div class="feed_name">
	
						<table>
							<thead class="profile_box">
								<tr>  <!-- 프로필 사진 -->
									<td>
									<a href="feedcontroller?type=otherUser&f_id=${fv.u_id }">
									 <img class="profile_img" src="../imgs/${fv.u_pic }">
									 </a>
									</td>
									<td class="profile_name" >
										<a href="feedcontroller?type=otherUser&f_id=${fv.u_id }">${fv.u_id }</a>
									</td>
									
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="3">
										<a href="feedcontroller?type=idvPage&f_idx=${fv.f_idx }">
										<c:set var="f_idx" value="${fv.f_idx }" scope="request"/>
										<%= request.getAttribute("f_idx")%>
											<img class="feed_img" src="../imgs/${fv.f_pic} " id="feed_img" >
										</a>
									</td>
								</tr>
							</tbody>
							<tbody class="feed_body">
								<tr class="feed_row">
<%FeedVO vo = new FeedVO();
vo.setF_idx((int)request.getAttribute("f_idx"));
vo.setU_id((String)session.getAttribute("u_id"));
int result = FeedDAO.likeOk(vo);//좋아요 상태 확인
pageContext.setAttribute("result", result);//좋아요 상태 확인
System.out.println("result : " + pageContext.getAttribute("result"));
System.out.println("u_id : " + session.getAttribute("u_id"));
int countLike = FeedDAO.countLike((int)request.getAttribute("f_idx"));//좋아요 개수
pageContext.setAttribute("cPage", cPage);
%>
								<c:choose>
								<c:when test="${result == 0 }">
									<td class="material-icons-outlined icon_space" id="like"><a href="feedcontroller?type=addLike&f_idx=${fv.f_idx }&cPage=${cPage}">favorite_border</a></td>
									<td class="material-icons-outlined icon_space">mode_comment</td>
								</c:when>
								<c:otherwise>
									<td class="material-icons-outlined" style="color:red;" id=like><a href="feedcontroller?type=delLike&f_idx=${fv.f_idx }&cPage=${cPage}">favorite</a></td>
									<td class="material-icons-outlined icon_space">mode_comment</td>
								</c:otherwise>
								</c:choose>
								</tr>
							</tbody>
						</table>
						<div class="u_comment">
							<div class="like">
								<span>좋아요 <%=countLike %>개</span> <br> <br>
							</div>
							<div class="contain_box">
							<span class="comment_width">
							<a href="feedcontroller?type=otherUser&f_id=${fv.u_id }">${fv.u_id }</a></span>
							<span class="feed_contain_font">
							<a href="feedcontroller?type=idvPage&f_idx=${fv.f_idx }">${fv.content }</a></span>
							</div>
							<hr style="border-top: 0.3px solid #dbdbdb;">
	
							<div>
								<span class="comment_width">jin.99</span><span>제니이쁨</span>
							</div>
							<div>
								<span class="comment_width">woogie</span><span>부럽</span>
							</div>
						</div>
						<br> <br>
					</div>
	
	
					<div class="comment_write">
						<span class="profile_box"> <img class="profile_img"
							src="data:image/jpeg;base64,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">
						</span> 
						<span>
							<form action="">
								<input class="comment_textbox" type="text" name="댓글"
									placeholder="댓글" style="width: 80%;">&nbsp;<input
									style="height: 38px;" type="submit" name="comment" value="추가">
							</form>
						</span>
						<div>&nbsp;</div>
					</div>
	
				</div>
			</c:forEach>
			</c:otherwise>
			</c:choose>

			<foot>
			<tr>
				<td colspan="4">
					<ol class="paging">
					<%--[이전으로]에 대한 사용여부 처리 --%>
					<c:if test="${pvo.beginPage == 1 }">
						<li class="disable li_paging">이전으로</li>
					</c:if>	
					<c:if test="${pvo.beginPage != 1 }">
						<li class="li_paging">
							<a href="mainFeed.jsp?cPage=${pvo.beginPage - 1 }"> 이전으로</a>
						</li>
					</c:if>
						
					<%--블록내에 표시할 페이지 태그 작성(시작페이지 ~ 끝페이지) --%>
					<c:forEach var="pageNo" begin="${pvo.beginPage }" end="${pvo.endPage }">
					<c:if test="${pageNo == pvo.nowPage}">
						<li class="now li_paging ">${pageNo }</li>
					</c:if>	
					<c:if test="${pageNo != pvo.nowPage}">
						<li class="li_paging"><a href="mainFeed.jsp?cPage=${pageNo }">${pageNo }</a></li>
					</c:if>
						
					</c:forEach>	
						
					<%--[다음으로]에 대한 사용여부 처리 --%>
					<c:if test="${pvo.endPage < pvo.totalPage }">
						<li class="li_paging"><a href="mainFeed.jsp?cPage=${pvo.endPage + 1 }">다음으로</a></li>
					</c:if>	
					<c:if test="${pvo.endPage >= pvo.totalPage }">
						<li class="disable li_paging">다음으로</li>
					</c:if>
						
					</ol>
				</td>
			</tr>
		</foot>

			<!--왼쪽  -->
			<!--오른쪽  -->
		</div>
	</div>
</body>
</html>






