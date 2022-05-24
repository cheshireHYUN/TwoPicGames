<%@page import="questions.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<NoticeVO> voList = (List<NoticeVO>) request.getAttribute("vo");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 목록</title>
<link rel="stylesheet" href="../css/notice.css">
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp" />
		<jsp:include page="/main/headerNav.jsp" />
	</header>
	<br>
	<form action="searchNotice.do" method="post">
		<div>[공지사항 검색] 예시) 1.정기 점검 2.서버 점검</div>
		<input type="text" name="searchNot" value=""><input
			type="submit" value="[공지사항 검색]">
	</form>
	<hr>

	<%
	int voSize = voList.size();
	if(voSize > 0) {
		for(int i = 0; i < voSize; i++) {
%>
	<p class="notice" dir="ltr">
		<span style="font-size: 14px"><strong><%=voList.get(i).getNotTit()%></strong>
			<span><%=voList.get(i).getNotDt() %></span><br> <%=voList.get(i).getNotCon().replace("%" , "<br>") %>
			<hr>
			<%
		}
		%> </span>
	</p>
	<%
	}else{
	%>
	<h3>해당 검색 결과가 없습니다.</h3>
	<%
		}
	%>
</body>
</html>