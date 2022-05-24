<%@page import="members.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MemberVO member = (MemberVO) request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 상세정보</title>
</head>
<body>
	<form>
		<table border="1">
			<tr>
				<td>ID</td>
				<td><%=member.getMem_id()%></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=member.getMem_name()%></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><%=member.getMem_ph()%></td>
			</tr>
			<tr>
				<td>메일</td>
				<td><%=member.getMem_mail()%></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><%=member.getMem_bir()%></td>
			</tr>
			<tr>
				<td>포인트</td>
				<td><%=member.getMem_point()%></td>
			</tr>
			<tr>
				<td>탈퇴여부</td>
				<td><%=member.getMem_wit()%></td>
			</tr>
			<tr>
				<td>본인인증:</td>
				<td><%=member.getMem_auth()%></td>
			</tr>
		</table>
	</form>
</body>
</html>