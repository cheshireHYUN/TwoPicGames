<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/account.css">
<style>
.body {
	background-color: white;
}
</style>
</head>
<header id="header-container-fluid">
	<jsp:include page="header.jsp" />
</header>
<body>
	<div class="container account-management-content">
		<div id="passwordView" class="row passwordView">
			
			<jsp:include page="adminNav.jsp" />

			<jsp:include page="adminMemInfo.jsp" />

			
		</div>
	</div>
</body>
</html>