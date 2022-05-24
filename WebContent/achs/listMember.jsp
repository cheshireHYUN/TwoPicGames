<%@page import="games.game.vo.GameVO"%>
<%@page import="achivement.vo.AchListVO"%>
<%@page import="members.member.vo.MemberVO"%>
<%@page import="achivement.vo.AchListVO"%>
<%@page import="achivement.vo.AchVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<AchVO> achList = (List<AchVO>) request.getAttribute("achList");
MemberVO member = (MemberVO) session.getAttribute("loginMember");
List<GameVO> gameList = (List<GameVO>) request.getAttribute("gameList");

int achXp = 0;
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
<body>
	<div class="css-1ktypff">
		<div class="css-1n8met0">
			<div class="css-s45c7f">
				<div class="css-1sqqqs8">
					<div class="css-bjn8wh">
						<section class="css-17x0yd4">
							<div class="css-yewo14">
								<div class="meta-schema"></div>
								<div class="css-1bivz9r">
									<div class="css-dvktqd">
										<div class="css-frkwxa">
											<!-- 업적 공개 범위 텍스트 출력 영역 -->
											<div class="css-uap2vd">
												<span class="css-z3vg5b"> <span>프라이버시 레벨: 나만보기</span></span>
											</div>
											<div>
												<!-- 업적 공개 범위 변경 버튼 -->
												<button aria-label="" class="css-i7m9px" type="button">
													<span><span class="css-staqnu" aria-hidden="true">
															<svg xmlns="http://www.w3.org/2000/svg"
																class="svg css-w1atjl" viewBox="0 0 12 2">
																<g stroke="none" stroke-width="1" fill="none"
																	fill-rule="evenodd">
																<g transform="translate(-495.000000, -603.000000)"
																	fill="currentColor">
																<g transform="translate(192.000000, 550.000000)">
																<g transform="translate(0.000000, 24.000000)">
																<path
																	d="M303,29 L305,29 L305,31 L303,31 L303,29 Z M308,29 L310,29 L310,31 L308,31 L308,29 Z M313,29 L315,29 L315,31 L313,31 L313,29 Z"></path></g></g></g></g></svg>
													</span></span>
												</button>
											</div>
										</div>
									</div>
									<div class="css-p0rvaw">
										<div>
											<!-- 사용자 이름 출력 영역 -->
											<div>
												<div class="css-zeyowa">
													<span class="css-lskqd4"><%=member.getMem_name()%></span>
												</div>
											</div>
											<div class="css-1kk0x7i">
												<div class="css-10yy2xa">
													<div>
														<div>
															<div class="css-5kov97">
																<!-- xp 출력 영역 -->
																<div class="css-3hjqbx">
																	<div>
																		<span class="css-25dfdw"> <span>총 획득 XP</span>
																		</span>
																		<div class="css-tnyvi7">
																			<!-- xp 아이콘 출력 영역 -->
																			<span class="css-4xt872" aria-hidden="true"><svg
																					xmlns="http://www.w3.org/2000/svg"
																					class="svg css-w1atjl" viewBox="0 0 25 25">
																					<path
																						d="M17.0208 2.24212C16.929 1.91929 16.3877 1.91929 16.2959 2.24212C16.0402 3.14058 15.6679 4.21937 15.2399 4.748C14.7655 5.33397 13.582 5.83545 12.6847 6.14986C12.385 6.25489 12.385 6.74511 12.6847 6.85014C13.582 7.16456 14.7655 7.66603 15.2399 8.252C15.6679 8.78063 16.0402 9.85942 16.2959 10.7579C16.3877 11.0807 16.929 11.0807 17.0208 10.7579C17.2765 9.85942 17.6488 8.78063 18.0768 8.252C18.5512 7.66603 19.7347 7.16456 20.632 6.85014C20.9317 6.74511 20.9317 6.25489 20.632 6.14986C19.7347 5.83544 18.5512 5.33397 18.0768 4.748C17.6488 4.21937 17.2765 3.14058 17.0208 2.24212ZM8.15377 7.54551C8.03104 7.09068 7.28574 7.09068 7.163 7.54551C6.71751 9.19641 6.00657 11.4072 5.17574 12.4335C4.27523 13.5458 1.91486 14.4841 0.317012 15.0195C-0.105671 15.1612 -0.105671 15.8388 0.317012 15.9805C1.91486 16.5159 4.27523 17.4542 5.17574 18.5665C6.00657 19.5928 6.71751 21.8036 7.163 23.4545C7.28574 23.9093 8.03104 23.9093 8.15377 23.4545C8.59926 21.8036 9.31021 19.5928 10.141 18.5665C11.0415 17.4542 13.4019 16.5159 14.9998 15.9805C15.4224 15.8388 15.4224 15.1612 14.9998 15.0195C13.4019 14.4841 11.0415 13.5458 10.141 12.4335C9.31021 11.4072 8.59926 9.19641 8.15377 7.54551Z"
																						fill="currentColor" fill-rule="evenodd"
																						clip-rule="evenodd"></path></svg></span>
																			<!-- xp 텍스트 출력 -->
																			<%
																				if (achList.size() > 0) {
																				for (int i = 0; i < achList.size(); i++) {

																					achXp += Integer.parseInt(achList.get(i).getAchXp());

																				}
																			%>
																			<span><span> <%=achXp%>
																			</span></span>
																			<%
																				} else {
																			%>
																			<span><span>0</span></span>
																			<%
																				}
																			%>
																		</div>
																	</div>
																</div>
																<!-- 등급 출력 영역 -->
																<div class="css-3hjqbx">
																	<div>
																		<span class="css-25dfdw"> <span>등급</span>
																		</span>
																		<!-- 등급 아이콘 출력 영역 -->
																		<div class="css-tnyvi7">
																			<span class="css-4xt872" aria-hidden="true"> <svg
																					xmlns="http://www.w3.org/2000/svg"
																					class="svg css-w1atjl" viewBox="0 0 15 14">
																					<path
																						d="M1.78952 1.03177H3.21722C3.21547 1.05694 3.21455 1.08267 3.21455 1.10896L3.21455 2.21484H1.92245V3.65386C1.92245 4.29719 2.17572 4.91418 2.62655 5.36908C2.8022 5.54633 3.00223 5.69331 3.21869 5.8067C3.23933 6.28339 3.33644 6.74005 3.49797 7.16449C2.85933 7.01104 2.26929 6.68172 1.7975 6.20565C1.1268 5.52887 0.75 4.61096 0.75 3.65386V2.0807C0.75 1.50139 1.21541 1.03177 1.78952 1.03177Z"
																						fill="currentColor" fill-rule="evenodd"
																						clip-rule="evenodd"></path>
																					<path
																						d="M4.57719 7.26263C4.37731 6.90243 4.24094 6.50149 4.18336 6.07526L4.17941 6.04498C4.16166 5.90411 4.15251 5.76052 4.15251 5.61478L4.15251 1.10896C4.15251 1.02488 4.24618 0.944783 4.41557 0.871928C4.92375 0.653363 6.11342 0.5 7.49999 0.5C9.34874 0.5 10.8475 0.772637 10.8475 1.10895V5.61478C10.8475 5.77097 10.837 5.9247 10.8166 6.07526C10.7459 6.59904 10.5561 7.0846 10.2758 7.50333C9.6742 8.40183 8.65546 8.99257 7.49999 8.99257L7.47834 8.9925C6.23167 8.98454 5.14668 8.28891 4.57719 7.26263Z"
																						fill="currentColor" fill-rule="evenodd"
																						clip-rule="evenodd"></path>
																					<path
																						d="M11.502 7.1645C11.6635 6.74006 11.7606 6.2834 11.7813 5.80672C11.9978 5.69332 12.1978 5.54634 12.3735 5.36908C12.8243 4.91418 13.0775 4.29719 13.0775 3.65386V2.21484H11.8227V1.03177H13.2105C13.7846 1.03177 14.25 1.50139 14.25 2.0807V3.65386C14.25 4.61096 13.8732 5.52887 13.2025 6.20565C12.83 6.58157 12.3836 6.866 11.898 7.04457C11.7686 7.09215 11.6364 7.13221 11.502 7.1645Z"
																						fill="currentColor" fill-rule="evenodd"
																						clip-rule="evenodd"></path>
																					<path
																						d="M10.3826 12.1379C10.3826 12.7521 9.09198 13.25 7.49998 13.25C5.90798 13.25 4.6174 12.7521 4.6174 12.1379C4.6174 11.9371 4.75526 11.7488 4.99644 11.5862L4.99892 11.5845L5.54498 11.2735C6.0756 10.9712 6.51643 10.5312 6.82173 9.99911C6.90651 9.85135 7.12539 9.74247 7.49998 9.74247C7.87457 9.74247 8.09345 9.85135 8.17823 9.99911C8.48353 10.5312 8.92435 10.9712 9.45498 11.2735L10.001 11.5845L10.008 11.5893C10.2464 11.7511 10.3826 11.9384 10.3826 12.1379Z"
																						fill="currentColor" fill-rule="evenodd"
																						clip-rule="evenodd"></path></svg>
																			</span>
																			<!-- 등급 텍스트 출력  -->
																			<%
																				if (achList.size() > 0) {
																				if (achXp > 50) {
																			%>
																			<span>C</span>
																			<%
																				} else {
																			%>
																			<span>D</span>
																			<%
																				}
																			} else {
																			%>
																			<span>F</span>
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
											</div>
										</div>
									</div>
								</div>
								<br>
								<br>
								<br>
								<div class="css-bjn8wh">
									<div>
										<%
											if (achList.size() > 0) {
										%>
										<!-- 게임 목록 리스트 -->
										<ul class="css-cnqlhg">
											<%
												for (int i = 0; i < achList.size(); i++) {
												for (int j = 0; j < gameList.size(); j++) {
													if (achList.get(i).getGameId().equals(gameList.get(j).getGame_id())) {
											%>
											<!-- 게임 li(반복문으로 출력하기) -->
											<li class="css-lrwy1y"><div>
													<div>
														<div class="css-bjn8wh">
															<div class="css-nnav23">
																<div class="css-13ku56z">
																	<div class="css-f0xnhl">
																		<div class="css-1lozana">
																			<%
																				if (!gameList.get(j).getGame_img().contains("http")) {
																			%>
																			<div>
																				<!-- 이미지 입력 부분 -->
																				<img alt="r"
																					src="<%=request.getContextPath()%>/images/imageSrcView.do?fileName=<%=gameList.get(j).getGame_img().trim()%>"
																					class="css-doi34z" data-image="">
																			</div>
																			<%
																				} else {
																			%>
																			<div>
																				<img alt="" src="<%=gameList.get(j).getGame_img()%>"
																					class="css-doi34z" data-image="">
																			</div>
																			<%
																				}
																			%>

																		</div>
																	</div>
																	<div class="css-hkjq8i">
																		<span class="css-2ucwu"> <!-- 제목 입력 부분 -->
																			<div class="css-1h2ruwl"><%=gameList.get(j).getGame_name()%>
																			</div></span> <span class="css-nf3v9d"><div
																				class="css-1h2ruwl"></div></span>
																		<div class="css-1r0yqr6">
																			<div class="css-fhxb3m">
																				<span class="css-157lcjk">
																					<div class="css-l24hbj">
																						<!-- 한시적 무료 게임일 경우 활성화 -->
																						<span class="css-z3vg5b">경험치 : <%=achList.get(i).getAchXp()%></span>
																					</div>
																					<div class="css-l24hbj">
																						<!-- 한시적 무료 게임일 경우 활성화 -->
																						<span class="css-z3vg5b">업적 등급 : <%=achList.get(i).getAchGrd()%></span>
																					</div>
																				</span>
																				
																			</div>
																		</div>
																	</div>
																</div>

															</div>
														</div>
													</div>
												</div></li>
											<%
												}
											}
											}
											%>
										</ul>
									</div>
									<!-- 업적이 없을 때 표시되는 화면 -->
									<%
										} else {
									%>
									<div class="css-bjn8wh">
										<div>
											<div class="css-nwpmzo">
												<!-- 트로피 아이콘 영역 -->
												<span class="css-m0rox4" aria-hidden="true"> <svg
														xmlns="http://www.w3.org/2000/svg" class="svg css-w1atjl"
														viewBox="0 0 80 76">
														<g opacity=".15">
														<path fill="#7B7B7B"
															d="M40 75.5c9.45 0 17.11-2.929 17.11-6.542 0-1.174-.808-2.275-2.223-3.227l-.042-.028-3.241-1.83a20.271 20.271 0 0 1-7.578-7.496c-.504-.869-1.803-1.51-4.026-1.51-2.224 0-3.523.641-4.026 1.51a20.271 20.271 0 0 1-7.578 7.496l-3.241 1.83-.015.01c-1.432.956-2.25 2.064-2.25 3.245 0 3.613 7.66 6.542 17.11 6.542Z"></path>
														<path fill="url(#a)"
															d="M40 75.5c9.45 0 17.11-2.929 17.11-6.542 0-1.174-.808-2.275-2.223-3.227l-.042-.028-3.241-1.83a20.271 20.271 0 0 1-7.578-7.496c-.504-.869-1.803-1.51-4.026-1.51-2.224 0-3.523.641-4.026 1.51a20.271 20.271 0 0 1-7.578 7.496l-3.241 1.83-.015.01c-1.432.956-2.25 2.064-2.25 3.245 0 3.613 7.66 6.542 17.11 6.542Z"></path>
														<path fill="#7B7B7B"
															d="M14.563 4.324H6.105A5.474 5.474 0 0 0 .63 9.798v9.254a20.532 20.532 0 0 0 15.326 19.861 25.316 25.316 0 0 1-1.322-6.395 14.958 14.958 0 0 1-8.437-13.466V9.89h8.365V4.324Z"></path>
														<path fill="url(#b)"
															d="M14.563 4.324H6.105A5.474 5.474 0 0 0 .63 9.798v9.254a20.532 20.532 0 0 0 15.326 19.861 25.316 25.316 0 0 1-1.322-6.395 14.958 14.958 0 0 1-8.437-13.466V9.89h8.365V4.324Z"></path>
														<path fill="#7B7B7B"
															d="M20.13 30.587c0 1.114.092 2.207.269 3.272 1.56 9.416 9.742 16.597 19.6 16.597 10.974 0 19.87-8.896 19.87-19.87V4.083a.651.651 0 0 0-.006-.093C59.59 2.054 50.802.5 40 .5 29.026.5 20.13 2.104 20.13 4.082v26.505Z"></path>
														<path fill="url(#c)"
															d="M20.13 30.587c0 1.114.092 2.207.269 3.272 1.56 9.416 9.742 16.597 19.6 16.597 10.974 0 19.87-8.896 19.87-19.87V4.083a.651.651 0 0 0-.006-.093C59.59 2.054 50.802.5 40 .5 29.026.5 20.13 2.104 20.13 4.082v26.505Z"></path>
														<path fill="#7B7B7B"
															d="M65.364 32.518a25.32 25.32 0 0 1-1.321 6.395A20.53 20.53 0 0 0 79.37 19.052V9.798a5.474 5.474 0 0 0-5.475-5.474h-8.237V9.89h8.144v9.16a14.965 14.965 0 0 1-8.438 13.467Z"></path>
														<path fill="url(#d)"
															d="M65.364 32.518a25.32 25.32 0 0 1-1.321 6.395A20.53 20.53 0 0 0 79.37 19.052V9.798a5.474 5.474 0 0 0-5.475-5.474h-8.237V9.89h8.144v9.16a14.965 14.965 0 0 1-8.438 13.467Z"></path></g>
														<g opacity=".3">
														<path fill="#C4C4C4"
															d="M37.493 37.192h5.014v5.014h-5.014v-5.014Z"></path>
														<path fill="url(#e)"
															d="M37.493 37.192h5.014v5.014h-5.014v-5.014Z"></path>
														<path fill="#C4C4C4"
															d="M48.954 13.553v18.625h-6.447v1.79h-5.014v-6.805h6.447v-8.595h-7.88v3.94h-5.014v-8.954h17.908Z"></path>
														<path fill="url(#f)"
															d="M48.954 13.553v18.625h-6.447v1.79h-5.014v-6.805h6.447v-8.595h-7.88v3.94h-5.014v-8.954h17.908Z"></path></g>
														<path fill="url(#g)"
															d="M35.032 75.213a14.09 14.09 0 0 0 4.816-10.607v-4.503c0-1.104-.907-1.972-1.986-2.207-1.061-.23-1.965-.666-1.976-1.374a20.272 20.272 0 0 1-7.49 7.345l-3.241 1.83-.015.01c-1.431.956-2.25 2.064-2.25 3.244 0 2.953 5.116 5.448 12.142 6.262Z"
															opacity=".2"></path>
														<path fill="url(#h)" fill-rule="evenodd"
															d="M28.53 6.123v26.616c0 8.719 3.428 15.496 9.69 17.637-9.05-.803-16.356-7.674-17.821-16.518a20.003 20.003 0 0 1-.268-3.272V4.08c0-1.208 3.317-2.276 8.399-2.925v4.967Z"
															clip-rule="evenodd" opacity=".2"></path>
														<ellipse cx="39.995" cy="4.031" fill="#282828" rx="19.865"
															ry="3.531"></ellipse>
														<path fill="url(#i)" fill-rule="evenodd"
															d="M47.588 7.294V.766c7.204.53 12.272 1.792 12.272 3.264 0 1.472-5.068 2.734-12.272 3.264Z"
															clip-rule="evenodd" opacity=".3"></path>
														<defs>
														<linearGradient id="a" x1="40" x2="40" y1=".5" y2="75.5"
															gradientUnits="userSpaceOnUse">
														<stop stop-color="#fff"></stop>
														<stop offset="1" stop-color="#fff" stop-opacity="0"></stop></linearGradient>
														<linearGradient id="b" x1="40" x2="40" y1=".5" y2="75.5"
															gradientUnits="userSpaceOnUse">
														<stop stop-color="#fff"></stop>
														<stop offset="1" stop-color="#fff" stop-opacity="0"></stop></linearGradient>
														<linearGradient id="c" x1="40" x2="40" y1=".5" y2="75.5"
															gradientUnits="userSpaceOnUse">
														<stop stop-color="#fff"></stop>
														<stop offset="1" stop-color="#fff" stop-opacity="0"></stop></linearGradient>
														<linearGradient id="d" x1="40" x2="40" y1=".5" y2="75.5"
															gradientUnits="userSpaceOnUse">
														<stop stop-color="#fff"></stop>
														<stop offset="1" stop-color="#fff" stop-opacity="0"></stop></linearGradient>
														<linearGradient id="e" x1="40" x2="40" y1="11.307"
															y2="39.959" gradientUnits="userSpaceOnUse">
														<stop stop-color="#fff"></stop>
														<stop offset="1" stop-color="#fff" stop-opacity="0"></stop></linearGradient>
														<linearGradient id="f" x1="40" x2="40" y1="11.307"
															y2="39.959" gradientUnits="userSpaceOnUse">
														<stop stop-color="#fff"></stop>
														<stop offset="1" stop-color="#fff" stop-opacity="0"></stop></linearGradient>
														<linearGradient id="g" x1="31.369" x2="31.369" y1="56.522"
															y2="75.213" gradientUnits="userSpaceOnUse">
														<stop stop-color="#fff"></stop>
														<stop offset="1" stop-color="#fff" stop-opacity="0"></stop></linearGradient>
														<linearGradient id="h" x1="29.176" x2="29.176" y1="1.156"
															y2="50.376" gradientUnits="userSpaceOnUse">
														<stop stop-color="#fff"></stop>
														<stop offset="1" stop-color="#fff" stop-opacity="0"></stop></linearGradient>
														<linearGradient id="i" x1="50.291" x2="50.291" y1="-5.163"
															y2="14.707" gradientUnits="userSpaceOnUse">
														<stop stop-color="#fff"></stop>
														<stop offset=".709" stop-color="#fff" stop-opacity="0"></stop></linearGradient></defs></svg>
												</span>
												<!-- 업적이 없을 때 표시되는 화면 -->
												<div>
													<div class="css-pr10xp">
														<span class="css-11ksoqt"> <span>해당 회원의 업적을
																찾을 수 없습니다.</span>
																
														</span>
													</div>
													<!-- 메인 링크 걸어주기!!!!! -->
													<a class="css-1rpsjh1" role="link" href="/main/main.jsp">
														<span>게임 찾아보기</span>
													</a>
												</div>
											</div>
										</div>
									</div>
									<%
										}
									%>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>


</html>