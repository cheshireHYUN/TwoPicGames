<%@page import="notices.vo.AnswerVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	AnswerVO vo = (AnswerVO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답변 정보 상세</title>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp"/>
		<jsp:include page="/main/headerNav.jsp"/>
	</header>
	<br><span style="font-size: 14px">관리자아이디 : <%=vo.getAdminId() %></span>
	<br><span style="font-size: 14px">질문아이디 : <%=vo.getQesId() %></span>
	<br><span style="font-size: 14px">답변아이디 : <%=vo.getAnsId() %></span>
	<br><span style="font-size: 14px">내  용 : <%=vo.getAnsCon() %></span>
	<br><span style="font-size: 14px">일  시 : <%=vo.getAnsDt() %></span>
	<br><span style="font-size: 14px"><a href="listQuestion.do">[목록]</a></span>
	<br><span style="font-size: 14px"><a href="updateAnswer.do?qesId=<%=vo.getQesId() %>">[답변 수정]</a></span>
	<br><span style="font-size: 14px"><a href="deleteAnswer.do?qesId=<%=vo.getQesId() %>">[답변 삭제]</a></span>
</body>
</html>