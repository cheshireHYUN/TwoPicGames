<%@page import="members.member.vo.MemberVO"%>
<%@page import="faqs.vo.FaqVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<FaqVO> faqList = (List<FaqVO>) request.getAttribute("faqList");
String admin = (String) session.getAttribute("login");
MemberVO member = (MemberVO) session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
a {
	text-decoration: none;
}
h3 {
	margin-bottom: 50px;
}

button {
	background: #0074e4;
	color: white;
	border: none;
	padding: 1em 2em;
}

body {
	margin-top: 20px;
	background-color: #eeeeee;
}

.section_padding_130 {
	padding-top: 130px;
	padding-bottom: 130px;
	background-color: #eeeeee;
}

.col-lg-8 {
	margin-top: 20px;
}

.faq_area {
	position: relative;
	z-index: 1;
}

.faq-accordian {
	position: relative;
	z-index: 1;
}

.faq-accordian .card {
	position: relative;
	z-index: 1;
	margin-bottom: 1.5rem;
}

.faq-accordian .card:last-child {
	margin-bottom: 0;
}

.faq-accordian .card .card-header {
	background-color: #ffffff;
	padding: 0;
	border-bottom-color: #ebebeb;
}

.faq-accordian .card .card-header h6 {
	cursor: pointer;
	padding: 1.75rem 2rem;
	color: #3f43fd;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-ms-grid-row-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
}

.faq-accordian .card .card-header h6 span {
	font-size: 1.5rem;
}

.faq-accordian .card .card-header h6.collapsed {
	color: #070a57;
}

.faq-accordian .card .card-header h6.collapsed span {
	-webkit-transform: rotate(-180deg);
	transform: rotate(-180deg);
}

.faq-accordian .card .card-body {
	padding: 1.75rem 2rem;
}

.faq-accordian .card .card-body p:last-child {
	margin-bottom: 0;
}

@media only screen and (max-width: 575px) {
	.support-button p {
		font-size: 14px;
	}
}

.support-button i {
	color: #3f43fd;
	font-size: 1.25rem;
}

@media only screen and (max-width: 575px) {
	.support-button i {
		font-size: 1rem;
	}
}

.support-button a {
	text-transform: capitalize;
	color: #2ecc71;
}

@media only screen and (max-width: 575px) {
	.support-button a {
		font-size: 13px;
	}
}
</style>

</head>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
	
<header id="header-container-fluid">
		<div class="css-15wd2r3">
			<div class="css-1ywt3m9">
				<header id="egh" class="epic_games   init  " data-version="7.4.1"
					data-component="EpicGamesNav">
					<nav id="nav" class="   desktop ">
						<div>
							<div id="propNav">
								<div id="egLogo" class="egLogo cursor-pointer"
									data-component="EpicGamesToggle">
									<a href="/main/main.jsp" role="button" title="Epic Games"
										class="shieldLogo focusable text-color bg-color text-color-border-after"></a>
								</div>
								<a role="button" aria-label="Logo home button" id="propLogo"
									class="propLogo focusable  " data-component="PropertyLogo"></a>
								<div role="button" tabindex="0" id="navLine" class="nav-line   "
									data-component="DividerLine">
									<span class="lines text-color-bg text-color-before-after"></span>
								</div>
								<div class="sitenav-wrap bg-color   kb-focus"
									data-component="SiteNav">
									<ul id="siteNav" role="menubar" style="height: 3.7em;"
										class="siteNav bg-color    ">
										<li role="none" id="sitenav-link-0"
											class="focusable text-color-nonactive text-color-hover "
											data-index="0" data-component="SiteNav"><a
											href="/main/main.jsp" role="menuitem"
											class="focusable text-color-nonactive text-color-hover "
											rel="noopener noreferrer"><p>스토어</p></a></li>
										<li role="none" id="sitenav-link-1"
											class=" accent-bg-color-before"
											data-index="1" data-component="SiteNav"><a
											href="/listNotice.do" role="menuitem"
											class="focusable text-color-nonactive text-color-hover "
											rel="noopener noreferrer"><p>공지사항</p></a></li>
										<li role="none" id="sitenav-link-2"
											class=" active text-color-active accent-bg-color-before" data-index="2"
											data-component="SiteNav"><a href="/listFaq.do"
											role="menuitem"
											class="focusable text-color-nonactive text-color-hover "
											rel=""><p>자주묻는질문</p></a></li>
										<li role="none" id="sitenav-link-2"
											class=" accent-bg-color-before" data-index="3"
											data-component="SiteNav"><a href="/listQuestion.do"
											role="menuitem"
											class="focusable text-color-nonactive text-color-hover "
											rel="noopener noreferrer"><p>질문게시판</p></a></li>
									</ul>
								</div>
							</div>
							<div id="rightNav" role="menubar"
								class="right-col  bg-color undefined" data-component="RightNav">
								<div class="rightNav bg-color">
									<div></div>
									<div id="user" class="signed-in loggedIn bg-color dropdown  "
										data-component="SignedIn">
										<%
											if (member != null) {
										%>
										<a role="menuitem" tabindex="0"
											class="focusable is-logged-in text-color-hover"><i
											class="eg-header-icon-user"></i><span
											class="sign-text item-label display-name text-color"><%=member.getMem_name()%></span></a>
										<ul role="menu" class="bg-color ul-left">
											<li class="" role="none" data-component="SignedIn"><a
												class="text-color-hover text-color-nonactive"
												href="/members/modifyMember.do" role="menuitem"
												id="dropdown-link-accountInfo" data-index="0"><span>계정</span></a></li>
											<li class="" role="none" data-component="SignedIn"><a
												.mine class="text-color-hover text-color-nonactive"
												href="/achivement/listAch.do"
												class="text-color-hover text-color-nonactive"
												href="/achivement/listAch.do"
												class="text-color-hover
												text-color-nonactive"
												href="/listAch.do" role="menuitem"
												id="dropdown-link-achievements" data-index="1"><span>내
														업적</span> </a></li>
											<li class="" role="none" data-component="SignedIn"><a
												class="text-color-hover text-color-nonactive"
												href="/members/reviews.do" role="menuitem"
												id="dropdown-link-coupons" data-index="3"><span>내
														리뷰</span></a></li>
											<li class="" role="none" data-component="SignedIn"><a
												class="text-color-hover text-color-nonactive"
												href="/members/registerCode.do" role="menuitem"
												id="dropdown-link-redeem" data-index="2"><span>코드
														사용</span></a></li>
											<li class="" role="none" data-component="SignedIn"><a
												class="text-color-hover text-color-nonactive"
												href="../wishList/wishListDetail.do" role="menuitem"
												id="dropdown-link-wishlist" data-index="4"> <span>위시리스트</span></a></li>
											<li role="none" class=""><a
												class="text-color-hover text-color-nonactive"
												href="/members/logout.do" role="menuitem" id="log-out"><span>로그아웃</span></a></li>
										</ul>
										<%
											} else if (admin != null) {
										%>
										<a role="menuitem" tabindex="0"
											class="focusable is-logged-in text-color-hover"><i
											class="eg-header-icon-user"></i><span
											class="sign-text item-label display-name text-color">admin</span></a>
										<ul role="menu" class="bg-color ul-left">
											<li class="" role="none" data-component="SignedIn"><a
												class="text-color-hover text-color-nonactive"
												href="/achivement/listAch.do" role="menuitem"
												id="dropdown-link-achievements" data-index="1"><span>모든
														업적</span></a></li>
											<li class="" role="none" data-component="SignedIn"><a
												class="text-color-hover text-color-nonactive"
												href="/members/reviews.do" role="menuitem"
												id="dropdown-link-coupons" data-index="3"><span>모든
														리뷰</span></a></li>
											<li role="none" class=""><a
												class="text-color-hover text-color-nonactive"
												href="/members/logout.do" role="menuitem" id="log-out"><span>로그아웃</span></a></li>
										</ul>
										<%
											} else {
										%>
										<a role="menuitem" tabindex="0" href="/members/login.do"
											class="focusable is-logged-in text-color-hover"><i
											class="eg-header-icon-user"></i><span
											class="sign-text item-label display-name text-color">로그인</span></a>
										<%
											}
										%>
									</div>
								</div>
							</div>
						</div>
					</nav>
				</header>
			</div>
		</div>
		<jsp:include page="/main/headerNav.jsp" />
	</header>
	<!-- 헤더 끝 -->
<body>
	<div class="faq_area section_0padding_130" id="faq">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-sm-8 col-lg-6">
					<!-- Section Heading-->
					<div class="section_heading text-center wow fadeInUp"
						data-wow-delay="0.2s"
						style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
						<h3>
							<span>자주 </span>묻는 질문
						</h3>
						<div class="line"></div>
						<form action="insertFaq.do" method="post">
							<%
								if (admin != null && member == null) {
							%>
							<button onclick="location.href='insertFaq.do'">자주묻는질문등록</button>
							<%
								}
							%>
						</form>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<%
					int faqSize = faqList.size();
				if (faqSize > 0) {
					for (int i = 0; i < faqSize; i++) {
				%>
				<div class="col-12 col-sm-10 col-lg-8">
					<div class="accordion faq-accordian" id="faqAccordion">
						<div class="card border-0 wow fadeInUp" data-wow-delay="0.4s"
							style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
							<div class="card-header" id="headingThree">
								<h6 class="mb-0 collapsed" data-toggle="collapse"
									data-target="#collapseThree" aria-expanded="true"
									aria-controls="collapseThree">
									<%=faqList.get(i).getFaqTit()%><span class="lni-chevron-up"></span>
								</h6>
							</div>
							<div class="collapse" id="collapseThree"
								aria-labelledby="headingThree" data-parent="#faqAccordion">
								<div class="card-body">
									<p><%=faqList.get(i).getFaqCon().replaceAll("%", "<br>")%></p>
									<%
										if (admin != null && member == null) {
									%>
									<br> <span><a class="textnone"
										href="updateFaq.do?faqId=<%=faqList.get(i).getFaqId()%>">
										질문 수정</a></span> <br> <span> <a class="textnone"
										href="deleteFaq.do?faqId=<%=faqList.get(i).getFaqId()%>">
										질문 삭제</a></span>
									<%
										}
									%>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
					}
				}
				%>
			</div>
		</div>
	</div>

</body>
</html>