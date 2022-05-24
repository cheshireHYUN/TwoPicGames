<%@page import="notices.vo.QuestionVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	QuestionVO vo = (QuestionVO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 정보 상세</title>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp"/>
		<jsp:include page="/main/headerNav.jsp"/>
	</header>
	<br><span style="font-size: 14px">질문아이디 : <%=vo.getQesId() %></span>
	<br><span style="font-size: 14px">멤버아이디 : <%=vo.getMemId() %></span>
	<br><span style="font-size: 14px">제 목 : <%=vo.getQesTit() %></span>
	<br><span style="font-size: 14px">내 용 : <%=vo.getQesCon() %></span>
	<br><span style="font-size: 14px">일 시 : <%=vo.getQesDt() %></span>
	<br><span style="font-size: 14px"><a href="listQuestion.do">[목록]</a></span>
	<br><span style="font-size: 14px"><a href="updateQuestion.do?qesId=<%=vo.getQesId() %>">[질문 수정]</a></span>
	<br><span style="font-size: 14px"><a href="deleteQuestion.do?qesId=<%=vo.getQesId() %>">[질문 삭제]</a></span>
</body>
</html>