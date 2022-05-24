<%@page import="achivement.vo.AchListVO"%>
<%@page import="achivement.vo.AchVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<AchVO> achList = (List<AchVO>) request.getAttribute("achList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/archievement.css">
<title>업적 목록</title>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp"/>
		<jsp:include page="/main/headerNav.jsp"/>
	</header>
	<div class="css-1ktypff">
		<div class="css-1n8met0">
			<div class="css-s45c7f">
				<div class="css-1sqqqs8">
					<div class="css-bjn8wh">
						<section class="css-17x0yd4">
							<div class="css-yewo14">
								<div class="meta-schema"></div>
								<div class="css-1bivz9r">
									
									<div class="css-p0rvaw">
										<div>
											<!-- 사용자 이름 출력 영역 -->
											<div>
												<div class="css-zeyowa">
													<span class="css-lskqd4">모든 업적 현황</span><br><br>
												</div>
												
												<%
													int achSize = achList.size();
													if(achSize > 0) {
														for(int i = 0; i < achSize; i++) {
												%>		
												<div style="display: inline-block; margin-right: 50px;">
														<br><span style="font-size: 14px">업적아이디 : <%=achList.get(i).getAchId() %></span>
														<br><span style="font-size: 14px">게임아이디 : <%=achList.get(i).getMemId() %></span>
														<br><span style="font-size: 14px">업적경험치 : <%=achList.get(i).getAchXp() %></span>
														<br><span style="font-size: 14px">업적등급 : <%=achList.get(i).getAchGrd() %></span>
														<br><span style="font-size: 14px">업적공개범위 : <%=achList.get(i).getAchRan() %></span>
														<br><span style="font-size: 14px"><a href="deleteAch.do?achId=<%=achList.get(i).getAchId() %>">[업적 삭제]</a></span><br><br><br>
												</div>
												<%
														}
													} else {
												%>
														<span style="font-size: 20px">업적정보가 없습니다.</span>
												<%
													}
												%>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
</body>
</html>