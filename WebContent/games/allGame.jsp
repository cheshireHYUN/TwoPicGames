<%@page import="java.awt.Window"%>
<%@page import="games.comcategory.vo.CategoryDetailVO"%>
<%@page import="members.member.vo.MemberVO"%>
<%@page import="games.game.vo.GameVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<GameVO> gameList = (List<GameVO>) request.getAttribute("list");
List<GameVO> allGameList = (List<GameVO>) request.getAttribute("allList");
List<GameVO> freeGameList = (List<GameVO>) request.getAttribute("freeList");
List<GameVO> allFreeGameList = (List<GameVO>) request.getAttribute("allFreeList");
List<CategoryDetailVO> detailList = (List<CategoryDetailVO>) request.getAttribute("category");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상점</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../css/gameSearch.css">
<link rel="stylesheet" href="../css/cart.css">
<style>
a:visited {
	color: white;
	font-weight: bold;
}
</style>
<script>
	var url = window.location.href;
	var search = window.location.search.substr(window.location.search
			.indexOf("?") + 1);
	var params = search.split("&");

	function searchName(num) {
		if (num == 1) {
			var name = document.querySelector("#searchCategory").value;
			if (name != null && name != "") {
				document.querySelector("#searchCategory").value = "";
				window.location.href = "/Game.do?detail_name=" + name;
			}
		}
	}

	function searchPriceCategory(price) {
		if (search == "") {
			window.location.href = url + "?gamePrice=" + price;
		} else if (search != null) {
			for (var i = 0; i < params.length; i++) {
				temp = params[i].split("=");
				if (params.length == 3) {
					alert("장르 추가 불가");
					return;
				} else if (temp[0] == "gamePrice") {
					alert("가격은 1번만 추가가 가능합니다.");
					return;
				}
			}
			window.location.href = url + "&gamePrice=" + price;
		}
	}

	function searchIdCategory(id) {
		var url = window.location.href;
		var search = window.location.search.substr(window.location.search
				.indexOf("?") + 1);
		var params = search.split("&");
		if (search == "") {
			window.location.href = url + "?detail_id=" + id;
		} else if (search != null) {
			window.location.href = url + "&detail_id" + params.length + "="
					+ id;
			if (params.length == 3) {
				alert("장르 추가 불가");
				return;
			}
		}
	}

	function isSelect(detailId) {

	}
</script>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp" />
		<jsp:include page="/main/headerNav.jsp" />
	</header>
	<div>
		<div class="css-1ktypff">
			<div class="css-1n8met0">
				<div class="css-s45c7f">
					<div class="css-1sqqqs8">
						<section class="css-1dif5ke">
							<div class="css-yewo14">
								<div class="css-jckyow">
									<div class="css-avpsk8">
										<div class="css-11ux5hw">
											<div>
												<span class="css-8t238z">게임 찾기</span>
											</div>
										</div>
									</div>
								</div>
								<!-- 오른쪽 필터 사이드바 -->
								<div class="css-yh460" data-componet="InnerBodyWithRightSidebar">
									<aside class="css-1tso53f">
										<div class="css-10pkfgk">
											<div class="css-cd8nd1">
												<div class="css-0">
													<div class="css-1ehig57">
														<div class="css-xvakj3">필터</div>
													</div>
												</div>
												<div class="css-0">
													<!-- 필터 검색창 영역 -->
													<div class="css-1uuefie">
														<div class="css-1a73o66">
															<span class="css-16pn4qb" aria-hidden="true"><svg
																	xmlns="http://www.w3.org/2000/svg"
																	class="svg css-w1atjl" viewBox="0 0 21 20"
																	preserveAspectRatio="xMidYMid meet">
																	<g transform="scale(1 -1) rotate(-45 -11.93502884 -2)"
																		stroke="currentColor" stroke-width="1.65" fill="none"
																		fill-rule="evenodd">
																	<circle cx="7.70710678" cy="7.70710678" r="7"></circle>
																	<path d="M15.2071068 8.62132034h5.6923881"
																		stroke-linecap="square"></path></g></svg></span><input type="text"
																class="css-3zxf1t" placeholder="키워드" id="searchCategory">
														</div>
													</div>
												</div>
											</div>
											<!-- 카테고리 영역 -->
											<div class="css-cd8nd1">
												<div class="css-efm8so">
													<!-- 가격 드롭다운 버튼 영역 -->
													<button aria-expanded="true" class="css-1k3geus">
														<div class="css-4extk9">가격</div>
														<div>
															<span class="css-1i083ml" aria-hidden="true"><svg
																	xmlns="http://www.w3.org/2000/svg"
																	class="svg css-w1atjl" viewBox="0 0 7.7 12">
																	<path fill="currentColor"
																		d="M1.7 0L0 1.7 4.3 6 0 10.3 1.7 12l6-6z"></path></svg></span>
														</div>
													</button>
												</div>
												<!-- 가격 카테고리 -->
												<div class="css-0">
													<div>
														<div aria-checked="false" class="css-13b8u0k"
															role="checkbox" tabindex="0">

															<a href="#none"
																onclick="searchPriceCategory(0); return false;">
																<div class="css-19ycfao">무료</div>
															</a>

														</div>
													</div>
													<div>
														<div aria-checked="false" class="css-13b8u0k"
															role="checkbox" tabindex="0">
															<a href="#none"
																onclick="searchPriceCategory(10000); return false;"><div
																	class="css-19ycfao">10000원 이하</div></a>
														</div>
													</div>
													<div>
														<div aria-checked="false" class="css-13b8u0k"
															role="checkbox" tabindex="0">
															<a href="#none"
																onclick="searchPriceCategory(20000); return false;"
																class="explore-text"><div class="css-19ycfao">20000원
																	이하</div></a>
														</div>
													</div>
													<div>
														<div aria-checked="false" class="css-13b8u0k"
															role="checkbox" tabindex="0">
															<a href="#none"
																onclick="searchPriceCategory(30000); return false;"
																class="explore-text"><div class="css-19ycfao">30000원
																	이하</div></a>
														</div>
													</div>
												</div>
											</div>
											<!-- 장르 드롭다운 버튼 영역 -->
											<%
												int cateSize = detailList.size();
											if (cateSize > 0) {
												for (int i = 0; i < cateSize; i++) {
													if (i == 0) {
											%>
											<div class="css-cd8nd1">
												<div class="css-efm8so">
													<button aria-expanded="true" class="css-1k3geus">
														<div class="css-4extk9"><%=detailList.get(i).getCom_name()%></div>
														<div>
															<span class="css-1i083ml" aria-hidden="true"><svg
																	xmlns="http://www.w3.org/2000/svg"
																	class="svg css-w1atjl" viewBox="0 0 7.7 12">
																	<path fill="currentColor"
																		d="M1.7 0L0 1.7 4.3 6 0 10.3 1.7 12l6-6z"></path></svg></span>
														</div>
													</button>
													<%
														} else if (!detailList.get(i).getCom_name().equals(detailList.get(i - 1).getCom_name())) {
													%>
													<button aria-expanded="true" class="css-1k3geus">
														<div class="css-4extk9"><%=detailList.get(i).getCom_name()%></div>
														<div>
															<span class="css-1i083ml" aria-hidden="true"><svg
																	xmlns="http://www.w3.org/2000/svg"
																	class="svg css-w1atjl active" viewBox="0 0 7.7 12">
																	<path fill="currentColor"
																		d="M1.7 0L0 1.7 4.3 6 0 10.3 1.7 12l6-6z"></path></svg></span>
														</div>
													</button>
													<%
														}
													%>


												</div>
												<!-- 카테고리 -->
												<div class="css-0">
													<div>
														<div aria-checked="true" class="css-13b8u0k"
															data-component="CheckableFilter" role="checkbox"
															tabindex="0">
															<a href="#none"
																onclick="searchIdCategory('<%=detailList.get(i).getDetail_id()%>'); return false;"
																class="explore-text"><div class="css-19ycfao"><%=detailList.get(i).getDetail_name()%></div></a>
														</div>
													</div>
													<%
														}
													}
													%>
												</div>
											</div>
										</div>
									</aside>

									<div class="css-sbt18p">
										<section class="css-vs1u4g">
											<div class="css-yewo14">
												<!-- 스크립트 영역 -->
												<script id="_schemaOrgMarkup-WebApplication"
													type="application/ld+json" data-component="SchemaMarkup">
												</script>
												<div class="meta-schema" data-component="DocumentHead"></div>
												<h1 class="css-1qwdmuy">
													<span>찾아보기</span>
												</h1>
												<!-- 스크립트 끝 -->

												<!-- 정렬 출력 영역 -->
												<section class="css-1ufzxyu">
													<section class="css-zjpm9r">
														<!-- 게임 목록 리스트 -->
														<ul class="css-cnqlhg">
															<!-- 게임 li(반복문으로 출력하기) -->
															<%
																if (gameList.size() > 0) {
																for (int i = 0; i < gameList.size(); i++) {
																	if (i > 0 && gameList.get(i).getGame_id().equals(gameList.get(i - 1).getGame_id())) {
																gameList.remove(i);
																i--;
																	}
																}
																for (int i = 0; i < gameList.size(); i++) {
																	for (int j = 0; j < freeGameList.size(); j++) {
																if (gameList.get(i).getGame_id().equals(freeGameList.get(j).getGame_id())) {
																	gameList.remove(i);
																	i--;
																}
																	}
																}
																for (int i = 0; i < gameList.size(); i++) {
															%>
															<li class="css-lrwy1y"><div>
																	<div>
																		<div class="css-bjn8wh">
																			<%
																				if (gameList.get(i).getAge().contains("18세")) {
																			%>
																			<a class="css-1jx3eyg" role="link"
																				href="/games/ageLimit.jsp?id=<%=gameList.get(i).getGame_id()%>"> <%
																			 	} else {
																			 %> <a class="css-1jx3eyg" role="link"
																				href="/detailGame.do?id=<%=gameList.get(i).getGame_id()%>">
																					<%
																						}
																					%>
																					<div class="css-nnav23">
																						<div class="css-13ku56z">
																							<div class="css-f0xnhl">
																								<div class="css-1lozana">
																									<div>
																										<!-- 이미지 입력 부분 -->
																										<%
																											if (!gameList.get(i).getGame_img().contains("https")) {
																										%>
																										<img width="180" height="260"
																											src="<%=request.getContextPath()%>/images/imageSrcView.do?fileName=<%=gameList.get(i).getGame_img()%>"
																											class="css-doi34z"
																											data-image="https://cdn1.epicgames.com/spt-assets/13be2d108e0344c98158bf4a2926bba5/download-the-suicide-of-rachel-foster-offer-9a21t.jpg?h=854&amp;resize=1&amp;w=640">
																										<%
																											} else {
																										%>
																										<img width="180" height="260"
																											src="<%=gameList.get(i).getGame_img().trim()%>"
																											class="css-doi34z"
																											data-image="https://cdn1.epicgames.com/spt-assets/13be2d108e0344c98158bf4a2926bba5/download-the-suicide-of-rachel-foster-offer-9a21t.jpg?h=854&amp;resize=1&amp;w=640">
																										<%
																											}
																										%>
																									</div>
																								</div>
																							</div>
																							<div class="css-hkjq8i">
																								<span class="css-2ucwu"> <!-- 제목 입력 부분 -->
																									<div class="css-1h2ruwl">
																										<%=gameList.get(i).getGame_name()%>
																									</div></span> <span class="css-nf3v9d">
																									<div class="css-1h2ruwl"></div>
																								</span>
																								<div class="css-1r0yqr6">
																									<div class="css-fhxb3m">
																										<span class="css-157lcjk">
																											<div class="css-l24hbj">
																												<!-- 한시적 무료 게임일 경우 활성화 -->
																												<span class="css-z3vg5b">₩<%=gameList.get(i).getGame_price()%></span>
																											</div>
																										</span>
																									</div>
																								</div>
																							</div>
																						</div>
																					</div>
																			</a>
																		</div>
																	</div></li>
															<%
																}
															for (int i = 0; i < freeGameList.size(); i++) {
															if (i > 0 && freeGameList.get(i).getGame_id().equals(freeGameList.get(i - 1).getGame_id())) {
																freeGameList.remove(i);
																i--;
															}
															}
															for (int i = 0; i < freeGameList.size(); i++) {
															%>
															<li class="css-lrwy1y"><div>
																	<div>
																		<div class="css-bjn8wh">
																			<a class="css-1jx3eyg" role="link"
																				href="/detailGame.do?id=<%=freeGameList.get(i).getGame_id()%>"">
																				<div class="css-nnav23">
																					<div class="css-13ku56z">
																						<div class="css-f0xnhl">
																							<div class="css-1lozana">
																								<div>
																									<!-- 이미지 입력 부분 -->
																									<%
																										if (!freeGameList.get(i).getGame_img().contains("https")) {
																									%>
																									<img width="180" height="260"
																										src="<%=request.getContextPath()%>/images/imageSrcView.do?fileName=<%=freeGameList.get(i).getGame_img().trim()%>"
																										class="css-doi34z">
																									<%
																										} else {
																									%>
																									<img width="180" height="260"
																										src="<%=freeGameList.get(i).getGame_img().trim()%>"
																										class="css-doi34z">
																									<%
																										}
																									%>
																								</div>
																							</div>
																						</div>
																						<div class="css-hkjq8i">
																							<span class="css-2ucwu"> <!-- 제목 입력 부분 -->
																								<div class="css-1h2ruwl"><%=freeGameList.get(i).getGame_name()%></div></span>
																							<span class="css-nf3v9d">
																								<div class="css-1h2ruwl"></div>
																							</span>

																							<div class="css-1r0yqr6">
																								<div class="css-fhxb3m">
																									<span class="css-157lcjk">
																										<div class="css-l24hbj">
																											<span class="css-11ksoqt"> <!-- 한시적 무료일 경우 원래 게임 가격 입력 -->
																												<div class="css-1rcj98u">
																													₩<%=freeGameList.get(i).getGame_price()%>
																												</div></span>
																										</div>
																										<div class="css-l24hbj">
																											<!-- 한시적 무료 게임일 경우 활성화 -->
																											<span class="css-z3vg5b">무료게임</span>
																										</div>
																									</span>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</a>
																		</div>
																	</div>
																</div></li>
															<%
																}
															} else {
															%>
															<div class="css-map4tx" style="z-index: 1">
																<div class="css-11fvpc2">
																	<div class="css-zigog8">
																		<div class="css-cn3xcj">
																			<span class="css-mywzwd" data-component="Text">
																				<span>검색 결과 : </span>
																			</span> <span class="css-mywzwd" data-component="Text">
																				<span>해당 장르를 포함하는 게임이 존재하지 않습니다.</span>
																			</span>
																		</div>
																	</div>
																</div>
															</div>
															<%
																for (int i = 0; i < allGameList.size(); i++) {
																if (i > 0 && allGameList.get(i).getGame_id().equals(allGameList.get(i - 1).getGame_id())) {
																	allGameList.remove(i);
																	i--;
																}
															}
															for (int i = 0; i < allGameList.size(); i++) {
																for (int j = 0; j < allFreeGameList.size(); j++) {
																	if (allGameList.get(i).getGame_id().equals(allFreeGameList.get(j).getGame_id())) {
																allGameList.remove(i);
																i--;
																	}
																}
															}
															for (int i = 0; i < allGameList.size(); i++) {
															%>
															<li class="css-lrwy1y"><div>
																	<div>
																		<div class="css-bjn8wh">
																			<%
																				if (allGameList.get(i).getAge().contains("18세")) {
																			%>
																			<a class="css-1jx3eyg" role="link"
																				href="/games/ageLimit.jsp"> <%
 	} else {
 %> <a class="css-1jx3eyg" role="link"
																				href="/detailGame.do?id=<%=allGameList.get(i).getGame_id()%>">
																					<%
																						}
																					%>
																					<div class="css-nnav23">
																						<div class="css-13ku56z">
																							<div class="css-f0xnhl">
																								<div class="css-1lozana">
																									<div>
																										<!-- 이미지 입력 부분 -->
																										<%
																											if (!allGameList.get(i).getGame_img().contains("https")) {
																										%>
																										<img width="180" height="260"
																											src="<%=request.getContextPath()%>/images/imageSrcView.do?fileName=<%=gameList.get(i).getGame_img()%>"
																											class="css-doi34z"
																											data-image="https://cdn1.epicgames.com/spt-assets/13be2d108e0344c98158bf4a2926bba5/download-the-suicide-of-rachel-foster-offer-9a21t.jpg?h=854&amp;resize=1&amp;w=640">
																										<%
																											} else {
																										%>
																										<img width="180" height="260"
																											src="<%=allGameList.get(i).getGame_img().trim()%>"
																											class="css-doi34z"
																											data-image="https://cdn1.epicgames.com/spt-assets/13be2d108e0344c98158bf4a2926bba5/download-the-suicide-of-rachel-foster-offer-9a21t.jpg?h=854&amp;resize=1&amp;w=640">
																										<%
																											}
																										%>
																									</div>
																								</div>
																							</div>
																							<div class="css-hkjq8i">
																								<span class="css-2ucwu"> <!-- 제목 입력 부분 -->
																									<div class="css-1h2ruwl">
																										<%=allGameList.get(i).getGame_name()%>
																									</div></span> <span class="css-nf3v9d">
																									<div class="css-1h2ruwl"></div>
																								</span>
																								<div class="css-1r0yqr6">
																									<div class="css-fhxb3m">
																										<span class="css-157lcjk">
																											<div class="css-l24hbj">
																												<!-- 한시적 무료 게임일 경우 활성화 -->
																												<span class="css-z3vg5b">₩<%=allGameList.get(i).getGame_price()%></span>
																											</div>
																										</span>
																									</div>
																								</div>
																							</div>
																						</div>
																					</div>
																			</a>
																		</div>
																	</div></li>
															<%
																}
															for (int i = 0; i < allFreeGameList.size(); i++) {
															if (i > 0 && allFreeGameList.get(i).getGame_id().equals(allFreeGameList.get(i - 1).getGame_id())) {
																allFreeGameList.remove(i);
																i--;
															}
															}
															for (int i = 0; i < allFreeGameList.size(); i++) {
															%>
															<li class="css-lrwy1y"><div>
																	<div>
																		<div class="css-bjn8wh">
																			<a class="css-1jx3eyg" role="link"
																				href="/detailGame.do?id=<%=allFreeGameList.get(i).getGame_id()%>"">
																				<div class="css-nnav23">
																					<div class="css-13ku56z">
																						<div class="css-f0xnhl">
																							<div class="css-1lozana">
																								<div>
																									<!-- 이미지 입력 부분 -->
																									<%
																										if (!allFreeGameList.get(i).getGame_img().contains("https")) {
																									%>
																									<img width="180" height="260"
																										src="<%=request.getContextPath()%>/images/imageSrcView.do?fileName=<%=allFreeGameList.get(i).getGame_img().trim()%>"
																										class="css-doi34z">
																									<%
																										} else {
																									%>
																									<img width="180" height="260"
																										src="<%=allFreeGameList.get(i).getGame_img().trim()%>"
																										class="css-doi34z">
																									<%
																										}
																									%>
																								</div>
																							</div>
																						</div>
																						<div class="css-hkjq8i">
																							<span class="css-2ucwu"> <!-- 제목 입력 부분 -->
																								<div class="css-1h2ruwl"><%=allFreeGameList.get(i).getGame_name()%></div></span>
																							<span class="css-nf3v9d">
																								<div class="css-1h2ruwl"></div>
																							</span>

																							<div class="css-1r0yqr6">
																								<div class="css-fhxb3m">
																									<span class="css-157lcjk">
																										<div class="css-l24hbj">
																											<span class="css-11ksoqt"> <!-- 한시적 무료일 경우 원래 게임 가격 입력 -->
																												<div class="css-1rcj98u">
																													₩<%=allGameList.get(i).getGame_price()%>
																												</div></span>
																										</div>
																										<div class="css-l24hbj">
																											<!-- 한시적 무료 게임일 경우 활성화 -->
																											<span class="css-z3vg5b">무료게임</span>
																										</div>
																									</span>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</a>
																		</div>
																	</div>
																</div></li>
															<%
																}

															}
															%>

														</ul>
													</section>
												</section>
											</div>
										</section>
									</div>
								</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		document.querySelector("#searchCategory").addEventListener("keyup",
				function() {
					if (event.key == "Enter")
						searchName(1);
				});
	</script>
</body>
</html>
