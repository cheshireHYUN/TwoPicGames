<%@page import="achivement.vo.AchVO"%>
<%@page import="java.util.List"%>
<%@page import="members.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
		String admin = (String) session.getAttribute("login");
		MemberVO member = (MemberVO) session.getAttribute("loginMember");
		List<AchVO> achList = (List<AchVO>) request.getAttribute("achList");
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/myReview.css">
</head>
<header id="header-container-fluid">
	<jsp:include page="/main/header.jsp" />
	<jsp:include page="/main/headerNav.jsp" />
</header>
<body>
	<div class="css-1ktypff" data-component="Page">
		<div class="css-1n8met0">
			<div class="css-s45c7f" data-component="StorePageContent">
				<div class="css-1sqqqs8" data-component="StorePage">
					<div class="css-bjn8wh" data-component="ProfilePrivacyPage">
						<section class="css-17x0yd4" data-testid="section-wrapper"
							data-component="SectionWrapper">
							<div class="css-yewo14" data-testid="section-wrapper-content"
								data-component="SectionWrapperContent">
								<div class="meta-schema" data-component="DocumentHead"></div>
								<div class="css-1bivz9r" data-component="ProfileContainerLayout">
									<div class="css-p0rvaw">
										<div>
											<div>
												<div class="css-zeyowa" data-testid="profile-username"
													data-component="ProfileHeader">
													<span class="css-lskqd4" data-component="Text">모든 업적</span>
													<br>
													<hr style="color:white;">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div data-component="RoutableTabs">
									<ul class="css-cnqlhg">
									<%
													int achSize = achList.size();
													if(achSize > 0) {
														for(int i = 0; i < achSize; i++) {
												%>		
										<li class="css-lrwy1y">
											<div class="css-1k6yg9d">
												<div class="css-mytue3">
													<div class="css-13ku56z">
														<div class="css-1azpx8r">
															<div class="css-1d3w5wq">
																<span class="css-z3vg5b">
															게임아이디 : <%=achList.get(i).getMemId() %><br>
																</span>
															</div>
															<div class="css-1d3w5wq">
																<span class="css-11ksoqt">
															업적아이디 : <%=achList.get(i).getAchId() %><br>
																</span>
															</div>
														</div>
														<div class="css-dkvgms">
															<div></div>
														</div>
														<div class="css-wt3lag">
															<div class="css-1d3w5wq">
																<span class="css-z3vg5b">
																	업적경험치 : <%=achList.get(i).getAchXp() %>
																	 <label class="star"></label> 
																</span>
															</div>
															<div class="css-uy4qy4">
																<span class="css-11ksoqt">
															업적등급 : <%=achList.get(i).getAchGrd() %>
																</span>
															</div>
															<div class="css-uy4qy4">
																<span class="css-11ksoqt">
															업적공개범위 : <%=achList.get(i).getAchRan() %>
																</span>
															</div>
															<div class="css-uy4qy4">
																<span class="css-11ksoqt">
															<span><input type="button" class="textnone" onclick="location.href='/deleteAch.do?achId=<%=achList.get(i).getAchId() %>'" value="업적 삭제"></span>
																</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</li>
									<%
											}
										}
									%>
									</ul>
								</div>
									<%
									if(achSize == 0) {
									%>
								<div class="css-1r4bksq">
									<div class="css-1x7xjze">
										<div class="css-1jqyn8r">
											<div class="css-1bmvmcg">
												<h1 class="css-1gty6cv">
													<span>업적 정보가 없습니다.</span>
												</h1>
											</div>
										</div>
									</div>
								</div>
									<%	
									}
									%>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>