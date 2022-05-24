<%@page import="achivement.vo.AchVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	AchVO vo = (AchVO) request.getAttribute("vo");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업적 수정</title>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp"/>
		<jsp:include page="/main/headerNav.jsp"/>
	</header>
	<form action="updateAch.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="achId" value="<%=vo.getAchId() %>">
		<table>
			<tr>
				<td>업적아이디:</td>
				<td><%=vo.getAchId() %></td>
			</tr>
<!-- 			<tr> 멤버아이디 불러오기 -->
<!-- 				<td>카트번호:</td> -->
<%-- 				<td><input type="text" name="notTit" value="<%=vo.getFaqTit() %>"></td> --%>
<!-- 			</tr> -->
			<tr>
				<td>업적경험치:</td>
				<td><input type="text" name="achXp" value="<%=vo.getAchXp() %>"></td>
			</tr>
			<tr>
				<td>업적등급:</td>
				<td><input type="text" name="achGrd" value="<%=vo.getAchGrd() %>"></td>
			</tr>
			<tr>
				<td>업적공개 범위:</td>
				<td><input type="text" name="achRan" value="<%=vo.getAchRan() %>"></td>
			</tr>
		</table>
		<input type="submit" value="업적수정">
	</form>
</body>
</html>