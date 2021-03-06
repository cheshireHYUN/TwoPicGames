<%@page import="members.review.vo.MyReviewVO"%>
<%@page import="java.util.List"%>
<%@page import="members.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
		String admin = (String) session.getAttribute("login");
		MemberVO member = (MemberVO) session.getAttribute("loginMember");
		List<MyReviewVO> revList = (List<MyReviewVO>) request.getAttribute("revList");
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/myReview.css">
</head>
<header id="header-container-fluid">
	<jsp:include page="header.jsp" />
	<jsp:include page="headerNav.jsp" />
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
													<%
													if(member != null) {
													%>
													<span class="css-lskqd4" data-component="Text">내 리뷰</span>
													<%
													}
													%>
													<%
													if(admin != null) {
													%>
													<span class="css-lskqd4" data-component="Text">모든 리뷰</span>
													<%
													}
													%>
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
									int revSize = revList.size();
									if(revSize > 0){
										for(int i = 0; i < revSize; i++){
											if(admin != null || member.getMem_id().equals(revList.get(i).getMem_id())) {
// 												System.out.println(member.getMem_id());
// 												System.out.println(revList.get(i).getMem_id());
											%>
										<li class="css-lrwy1y">
											<div class="css-1k6yg9d">
												<div class="css-mytue3">
													<div class="css-13ku56z">
														<div class="css-1azpx8r">
															<div class="css-1d3w5wq">
																<span class="css-z3vg5b">
															리뷰 제목 : <%=revList.get(i).getRev_tit() %><br>
															<!-- 리뷰 제목 입력 -->
																</span>
															</div>
															<div class="css-1d3w5wq">
																<span class="css-11ksoqt">
															리뷰 작성일 : <%=revList.get(i).getRev_dt() %><br>
															<!-- 리뷰 작성일 입력 -->
																</span>
															</div>
														</div>
														<div class="css-dkvgms">
															<div></div>
														</div>
														<div class="css-wt3lag">
															<div class="css-1d3w5wq">
																
																	<%
																	if(revList.get(i).getRev_grd() != 0) {
																		String grd = "";
																		for(int j = 0; j < revList.get(i).getRev_grd() ; j++) {
																			grd += "★";
																		}
																		%>
																<span class="css-z3vg5b">
																	리뷰 등급 : <%=grd %>
																	<%	
																	}
																	%>
																	<!-- 반복문으로 별 출력 -->
																	 <label class="star"></label> 
																</span>
															</div>
															<div class="css-uy4qy4">
																<span class="css-11ksoqt">
															리뷰 내용 : <%=revList.get(i).getRev_con() %>
															<!-- 리뷰 내용 입력 -->
																</span>
															</div>
															<div class="css-uy4qy4">
																<span class="css-11ksoqt">
															<%
																if(admin == null && member.getMem_id().equals(revList.get(i).getMem_id())){
															%>
															<span><input type="button" class="textnone" onclick="location.href='/UpdateReview.do?rev_id=<%=revList.get(i).getRev_id()%>'" value="리뷰수정"></span>
															<%
																}
															%>
															<!-- 리뷰 수정 입력 -->
																</span>
															</div>
															<%
															if(member != null) {
															%>
															<div class="css-uy4qy4">
																<span class="css-11ksoqt">
															<span><input type="button" class="textnone" onclick="location.href='/members/DeleteReview.do?rev_id=<%=revList.get(i).getRev_id()%>'" value="리뷰삭제"></span>
															<!-- 리뷰 삭제 입력 -->
																</span>
															</div>
															<%
															}
															%>
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
									if(revSize == 0) {
									%>
								<div class="css-1r4bksq">
									<div class="css-1x7xjze">
										<div class="css-1jqyn8r">
											<div class="css-1bmvmcg">
												<h1 class="css-1gty6cv">
													<span>아직 작성한 리뷰가 없습니다.</span>
												</h1>
											</div>
										</div>
									</div>
								</div>
									<%	
										}
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