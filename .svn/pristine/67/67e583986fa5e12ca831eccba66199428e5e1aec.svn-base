<%@page import="members.member.vo.MemberVO"%>
<%@page import="achivement.vo.AchVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	AchVO vo = (AchVO) request.getAttribute("vo");
	MemberVO member = (MemberVO) session.getAttribute("loginMember");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업적 등록</title>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp"/>
		<jsp:include page="/main/headerNav.jsp"/>
	</header>	
	<form action="insertAch.do" method="post">
	<%
		
	%>
		
		<input type="hidden" name="memId" value="<%=member.getMem_id() %>">
		<br><span style="font-size: 14px">게임아이디:</span>
		<br><span style="font-size: 14px"><input type="text" name="gameId" value=""></span>
		<br><span style="font-size: 14px">업적 경험치:</span>
		<br><span style="font-size: 14px"><input type="text" name="achXp" value=""></span>
		<br><span style="font-size: 14px">업적 등급:</span>
		<br><span style="font-size: 14px"><input type="text" name="achGrd" value=""></span>
		<br><span style="font-size: 14px">업적공개 범위:</span>
		<br><span style="font-size: 14px"><input type="text" name="achRan" value=""></span>
		<br><span style="font-size: 14px"><input type="submit" value="업적 등록"></span>
	</form>
</body>
</html>