<%@page import="members.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<MemberVO> memList = (List<MemberVO>) request.getAttribute("memList"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 확인</title>
</head>
<body>
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>휴대전화</th>
			<th>이메일</th>
			<th>생년월일</th>
		</tr>
		
<%-- <%
	int memSize = memList.size();
	if(memSize > 0) {
	for(int i = 0; i < memSize; i++) {
%> --%>
	<tr>
	</table>
</body>
</html>