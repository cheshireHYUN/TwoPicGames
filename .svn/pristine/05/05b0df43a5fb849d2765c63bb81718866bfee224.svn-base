<%@page import="members.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO vo = (MemberVO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp" />
		<jsp:include page="/main/headerNav.jsp" />
	</header>
	
	<h4>결과</h4>
	<table>
<%
	if(vo != null) {
%>	
		<tr align="center">
			<td>해당 고객님의 메일로 임시 비밀번호를 보냈습니다. 로그인 후 비밀번호 수정을 해주세요</td>
			<td><a href="/members/login.do">[로그인하러 가기]</a></td>
		</tr>
<%
	} else {
%>		
		<tr align="center">
			<td>찾으신 비밀번호가 없습니다. 다시 찾으시거나 회원가입을 해주세요.</td>
			<td><a href="/members/getPw.do">[비밀번호 찾기]</a></td>
			<td><a href="/members/insert.do">[회원가입]</a></td>
		</tr>
<%
	}
%>		
	</table>
</body>
</html>

