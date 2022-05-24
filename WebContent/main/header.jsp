<%@page import="members.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberVO vo = (MemberVO) session.getAttribute("loginMember");
String admin = (String) session.getAttribute("login");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../css/TwoPicStyle.css">
</head>
<body>
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
										class=" active text-color-active accent-bg-color-before"
										data-index="0" data-component="SiteNav"><a
										href="/main/main.jsp" role="menuitem"
										class="focusable text-color-nonactive text-color-hover "
										rel=""><p>스토어</p></a></li>
									<li role="none" id="sitenav-link-1"
										class=" accent-bg-color-before" data-index="1"
										data-component="SiteNav"><a href="/listNotice.do"
										role="menuitem"
										class="focusable text-color-nonactive text-color-hover "
										rel="noopener noreferrer"><p>공지사항</p></a></li>
									<li role="none" id="sitenav-link-2"
										class=" accent-bg-color-before" data-index="2"
										data-component="SiteNav"><a href="/listFaq.do"
										role="menuitem"
										class="focusable text-color-nonactive text-color-hover "
										rel="noopener noreferrer"><p>자주묻는질문</p></a></li>
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
										if (vo != null) {
									%>
									<a role="menuitem" tabindex="0"
										class="focusable is-logged-in text-color-hover"><i
										class="eg-header-icon-user"></i><span
										class="sign-text item-label display-name text-color"><%=vo.getMem_name()%></span></a>
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
											class="text-color-hover text-color-nonactive" href="../wishList/wishListDetail.do"
											role="menuitem" id="dropdown-link-wishlist" data-index="4">
											<span>위시리스트</span></a></li>
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
										<li class="" role="none" data-component="SignedIn"><a
											class="text-color-hover text-color-nonactive"
											href="/GameListAdmin.do" role="menuitem"
											id="dropdown-link-coupons" data-index="3"><span>게임
													관리</span></a></li>
										<li class="" role="none" data-component="SignedIn"><a
											class="text-color-hover text-color-nonactive"
											href="/idListController.do" role="menuitem"
											id="dropdown-link-coupons" data-index="3"><span>회원
													관리</span></a></li>
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
</body>
</html>