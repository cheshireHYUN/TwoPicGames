<%@page import="members.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	MemberVO member = (MemberVO) session.getAttribute("loginMember");
String admin = (String) session.getAttribute("login");
String msg = (String) request.getAttribute("msg");
String bir = (String) member.getMem_bir().replace("-", "");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../css/account.css">
</head>
<body>
	<%
		if (msg != null) {
	%>
	<script>
		alert("<%=msg%>
		");
	</script>
	<%
		}
	%>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp" />
	</header>
	<div class="container account-management-content">
		<div id="passwordView" class="row passwordView">

			<div class="col-lg-3 col-md-3 col-sm-3 sidebar-section hidden-xs">
				<div class="container sidebar-container">
					<div class="navigation-section">
						<!-- 회원 정보 변경 버튼 -->
						<button class="setting col-sm-12 col-md-12 personal-info active"
							id="memberInfo">
							일반<i
								class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
						</button>
						<!-- 주문 내역 확인 버튼 -->
						<button class="setting col-sm-12 col-md-12 transaction-history "
							id="memberOrder">
							거래<i
								class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
						</button>
						<!-- 비밀번호 변경 버튼 -->
						<button class="setting col-sm-12 col-md-12 password "
							id="changePw">
							비밀번호 및 보안<i
								class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
						</button>
						<!-- <button class="setting col-sm-12 col-md-12 code-redemption ">
							<i class="glyphicon glyphicon-custom icon-gift "></i>코드 사용<i
								class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
						</button> -->
					</div>
				</div>
			</div>
			<%
				if (member != null) {
			%>
			<div class="col-md-9 col-lg-9 col-sm-9 main-section">
				<div>
					<div class="">
						<div>
							<div class="personal-view">
								<div>
									<div class="">
										<div class="load-root-container">
											<div class="main-container personal-info-container">
												<div class="row">
													<div class="col-md-12 form-column">
														<div class="form-container">
															<div class="form--body">
																<div class="form--body-column">
																	<div>
																		<div class="">
																			<div class="general-settings-ref">
																				<div class="row general-settings-container">
																					<div class="col-md-12 title-section">
																						<div class="title-section">
																							<p class="title">계정 설정</p>
																							<p class="description">이름, 연락처 정보 등 에픽게임즈에
																								공유된 계정 정보를 확인하고 관리할 수 있습니다.</p>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<form action="/members/modifyMember.do" method="post">
																		<div
																			class="form-fields username-field account-info-fields ko">
																			<div class="form-field--section clearfix">
																				<div class="col-md-12 account-id-section">
																					<div class="paragraph-container">
																						<p class="paragraph p-body">
																							<span class="bold account-id-label">ID: <%=member.getMem_id()%></span>
																						</p>
																					</div>
																				</div>
																				<div
																					class="display-name-field common-input-btn-style col-md-6 col-xs-12">
																					<div class="input-with-button-container row">
																						<div
																							class="input-container col-md-10 col-sm-10 col-xs-10">
																							<div
																								class="common-form-container input-container filled">
																								<input type="text" name="edit_name"
																									id="edit_name"
																									placeholder="<%=member.getMem_name()%>"
																									autocomplete="on"
																									class="form-element input useCustomPlaceholder"
																									data-testid="" value="">
																								<div for="edit_name" class="control-label">표시명</div>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div
																					class="email-change-field common-input-btn-style col-md-6 col-xs-12">
																					<div class="input-with-button-container row">
																						<div
																							class="input-container col-md-10 col-sm-10 col-xs-10">
																							<div
																								class="common-form-container input-container filled">
																								<input type="text" name="edit_mail"
																									id="edit_mail" autocomplete="on"
																									class="form-element input useCustomPlaceholder"
																									data-testid="" maxlength="100"
																									placeholder="<%=member.getMem_mail()%>"
																									name="edit_mail"
																									pattern="[a-zA-Z0-9]+@[a-zA-Z0-9]+(\.[a-z]{2,3})"
																									value="">
																								<div for="edit_mail" class="control-label">이메일
																									주소</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div
																			class="form-fields username-field account-info-fields ko">
																			<div class="form-field--section clearfix">
																				<div
																					class="display-name-field common-input-btn-style col-md-6 col-xs-12">
																					<div class="input-with-button-container row">
																						<div
																							class="input-container col-md-10 col-sm-10 col-xs-10">
																							<div
																								class="common-form-container input-container filled">
																								<input type="text" name="edit_ph" id="edit_ph"
																									placeholder="<%=member.getMem_ph()%>"
																									autocomplete="on"
																									class="form-element input useCustomPlaceholder"
																									data-testid="" value="">
																								<div for="displayName" class="control-label">전화번호
																									*</div>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div
																					class="display-name-field common-input-btn-style col-md-6 col-xs-12">
																					<div class="input-with-button-container row">
																						<div
																							class="input-container col-md-10 col-sm-10 col-xs-10">
																							<div
																								class="common-form-container input-container filled">
																								<%
																									if (bir.length() > 8) {
																								%>
																								<input type="text" name="edit_bir" id="edit_bir"
																									placeholder="<%=bir.substring(2,8)%>"
																									autocomplete="on"
																									class="form-element input useCustomPlaceholder"
																									data-testid="" value="">
																								<div for="edit_bir" class="control-label">주민번호
																									6자리 *</div>
																								<%
																									} else {
																								%>

																								<input type="text" name="edit_bir" id="edit_bir"
																									placeholder="<%=bir.substring(2)%>"
																									autocomplete="on"
																									class="form-element input useCustomPlaceholder"
																									data-testid="" value="">
																								<div for="edit_bir" class="control-label">주민번호
																									6자리 *</div>
																								<%
																									}
																								%>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="submit-section">
																			<div class="submit-btns hidden-mobile desktop ">
																				<div>
																					<button type="button"
																						class="btn btn-default btn-custom "
																						name="deletebtn" id="deletebtn" value="정보 변경">변경사항
																						버림</button>
																					<button type="submit"
																						class="btn btn-submit btn-custom" name="btn"
																						value="infoChange">변경사항 저장</button>
																				</div>
																			</div>
																		</div>
																	</form>
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
						<div>
							<div class="">
								<div class="account-deletion-ref">
									<div class="main-container account-deletion-container row">
										<div class="row">
											<div class="col-md-12 form-column">
												<div class="form-container">
													<div class="col-md-12 title-section">
														<div class="title-section">
															<p class="title">계정 삭제</p>
														</div>
													</div>
													<div class="col-md-8 description-section">
														<div class="title-section">
															<p class="title"></p>
															<p class="description">
																<span class="bold error">계정 삭제 요청을 클릭하여 모든 개인 정보,
																	구매 내역, 게임 진행 상황을 포함하여 투픽게임즈 계정을 영구 삭제하는 절차를 시작합니다.</span> <br>
																<br> </span>
															</p>
														</div>
													</div>
													<form action="/members/modifyMember.do" method="post">
														<div class="col-md-4 button-section">
															<div class="btn-container">
																<button id="" type="submit" name="btn"
																	value="deleteInfo"
																	class="btn btn-custom btn-submit-custom btn-submit-custom"
																	data-tip="">계정 삭제 요청</button>
															</div>
														</div>
													</form>
													<div class="col-md-12"></div>
													<div id="challengeModalFlow"></div>
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
			<%
				}
			%>
		</div>
	</div>
	<script>
		document.querySelector("#deletebtn").addEventListener("click",
				function() {
					document.querySelector("#edit_name").value = "";
					document.querySelector("#edit_mail").value = "";
					document.querySelector("#edit_ph").value = "";
					document.querySelector("#edit_bir").value = "";
				});
		document.querySelector("#memberInfo").addEventListener("click",
				function() {
					window.location.href = "/members/modifyMember.do?btn=0";
				})
		document.querySelector("#memberOrder").addEventListener("click",
				function() {
					window.location.href = "/members/modifyMember.do?btn=1";
				});
		document.querySelector("#changePw").addEventListener("click",
				function() {
					window.location.href = "/members/modifyMember.do?btn=2";
				})
	</script>
</body>
</html>