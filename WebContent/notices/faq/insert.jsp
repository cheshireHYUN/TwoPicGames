<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주묻는 등록</title>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp"/>
		<jsp:include page="/main/headerNav.jsp"/>
	</header>	
	<form action="insertFaq.do" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>제 목:</td>
				<td><input type="text" name="faqTit" value=""></td>
			</tr>
			<tr>
				<td>내 용:</td>
				<td><input type="text" name="faqCon" value=""></td>
			</tr>
		</table>
		<input type="submit" value="자주묻는질문 등록">
	</form>
</body>
</html>