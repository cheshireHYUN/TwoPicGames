<%@page import="questions.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	NoticeVO vo = (NoticeVO) request.getAttribute("vo");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp"/>
		<jsp:include page="/main/headerNav.jsp"/>
	</header>	
	<form action="updateNotice.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="notId" value="<%=vo.getNotId() %>">
		<table>
			<tr>
				<td>I D:</td>
				<td><%=vo.getNotId() %></td>
			</tr>
			<tr>
				<td>제 목:</td>
				<td><input type="text" name="notTit" value="<%=vo.getNotTit() %>"></td>
			</tr>
			<tr>
				<td>내 용:</td>
				<td><input type="text" name="notCon" value="<%=vo.getNotCon() %>"></td>
			</tr>
		</table>
		<input type="submit" value="공지사항 수정">
	</form>
</body>
</html>