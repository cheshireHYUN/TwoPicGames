<%@page import="faqs.vo.FaqVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	FaqVO vo = (FaqVO) request.getAttribute("vo");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주묻는질문 수정</title>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp"/>
		<jsp:include page="/main/headerNav.jsp"/>
	</header>	
	<form action="updateFaq.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="faqId" value="<%=vo.getFaqId() %>">
		<table>
			<tr>
				<td>I D:</td>
				<td><%=vo.getFaqId() %></td>
			</tr>
			<tr>
				<td>제 목:</td>
				<td><input type="text" name="faqTit" value="<%=vo.getFaqTit() %>"></td>
			</tr>
			<tr>
				<td>내 용:</td>
				<td><input type="text" name="faqCon" value="<%=vo.getFaqCon() %>"></td>
			</tr>
		</table>
		<input type="submit" value="자주묻는질문 수정">
	</form>
</body>
</html>