<%@page import="members.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberVO member = (MemberVO) session.getAttribute("loginMember");
	String admin = (String) session.getAttribute("login");
	String msg = (String) request.getAttribute("msg");
	request.removeAttribute("msg");
%>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/account.css">
<script src="../js/jquery-3.6.0.min.js"></script>
<style>
.body {
	background-color: white;
}
</style>
</head>
<header id="header-container-fluid">
	<jsp:include page="/main/header.jsp" />
</header>
<body>
<%
	if(msg != null){
%>
<script>
		alert("<%=msg %>");
</script>
<%
	}
%>


	<div class="container account-management-content">
		<div id="passwordView" class="row passwordView">

			<div class="col-lg-3 col-md-3 col-sm-3 sidebar-section hidden-xs">
				<div class="container sidebar-container">
					<div class="navigation-section">
						<!-- 회원 정보 변경 버튼 -->
						<button class="setting col-sm-12 col-md-12 personal-info " id = "memberInfo">
							일반<i class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
						</button>
						<!-- 주문 내역 확인 버튼 -->
						<button class="setting col-sm-12 col-md-12 transaction-history " id = "memberOrder">
							거래<i class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
						</button>
						<!-- 비밀번호 변경 버튼 -->
						<button class="setting col-sm-12 col-md-12 password active" id = "changePw">
							비밀번호 및 보안<i class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-9 col-lg-9 col-sm-9 main-section">
				<div>
					<div class="">
						<div>
							<div class="">
								<div>
									<div class="main-container password-container">
										<div>
											<form action="/members/modifyMember.do" method="post">
												<div class="row">
													<div class="col-md-12 password-form-column">
														<div
															class="container form-container password-form-container">
															<div>
																<div class="title-section">
																	<p class="title">비밀번호 변경</p>
																	<p class="description">
																		보안을 위해 비밀번호는 다른 온라인 계정에서 사용하지 않는 고유한 것을 사용하길 권장합니다.<span
																			class="icon-private-info lock-icon"></span>
																	</p>
																</div>
																<div class="form--body">
																	<div class="form--body-column">
																		<div class="password-inner-container">
																			<div class="password-fields form-fields col-md-6">
																				<div class="form-field--section clearfix">
																					<div class="form-group clearfix">
																						<div class="form-title-section">
																							<p class="title">현재 비밀번호</p>
																							<p class="field-requirement">필수</p>
																						</div>
																						<div>
																							<div
																								class="form-field form-field--custom current-password password-field">
																								<input class="input currentPassword"
																									type="password" maxlength="100" minlength="0"
																									autocomplete="off" name="currentPassword"
																									placeholder="" value=""readonly="readonly">
																								<div for="email" class="control-label"><%=member.getMem_pw()%></div>
																								<div class="input-message">비밀번호를 입력하세요.</div>
																							</div>
																						</div>
																					</div>
																					<div class="form-group clearfix">
																						<div class="form-title-section">
																							<p class="title">새 비밀번호</p>
																							<p class="field-requirement">필수</p>
																						</div>
																						<div>
																							<div
																								class="form-field form-field--custom password-field">
																								<input class="input password" type="password"
																									maxlength="100" minlength="0"
																									autocomplete="off" name="edit_pw" id = "edit_pw" pattern="[a-zA-Z0-9]{7,}"
																									placeholder="" value="" required="required">
																								<div for="email" class="control-label">새
																									비밀번호 *</div>
																								<div class="input-message">비밀번호를 입력하세요.</div>
																							</div>
																						</div>
																					</div>
																					<div class="form-group clearfix">
																						<div class="form-title-section">
																							<p class="title">새 비밀번호 재입력</p>
																							<p class="field-requirement">필수</p>
																						</div>
																						<div>
																							<div
																								class="form-field form-field--custom password-field">
																								<input class="input confirmPassword"
																									type="password" maxlength="100" minlength="0"
																									autocomplete="off" name="edit_pw2" id = "edit_pw2" pattern="[a-zA-Z0-9]{7,}"
																									placeholder="" value="" required="required">
																								<div for="email" class="control-label">새
																									비밀번호 재입력 *</div>
																								<div class="input-message">비밀번호를 입력하세요.</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="password-information-section col-md-6">
																				<div class="title-section">
																					<p class="title">귀하의 비밀번호</p>
																				</div>
																				<div class="description-section">
																					<p class="description">비밀번호는 7자 이상 입력해야 합니다.</p>
																					<p class="description">비밀번호에는 숫자가 최소 1자 들어있어야
																						합니다.</p>
																					<p class="description">비밀번호에는 공백이 없어야 합니다.</p>
																				</div>
																			</div>
																		</div>
																		<div class="submit-section col-md-12">
																			<div
																				class="submit-btns hidden-mobile password-submit ">
																				<div>
																					<button type="button" id = "deletePw"
																						class="btn btn-default btn-custom ">변경사항
																						버림</button>
																					<button type="submit" name = "btn" value = "changePw"
																						class="btn btn-submit btn-custom undefined">변경사항
																						저장</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
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
	<script>
		document.querySelector("#deletePw").addEventListener("click",function(){
			document.querySelector("#edit_pw").value = "";
			document.querySelector("#edit_pw2").value = "";
		});
		document.querySelector("#memberInfo").addEventListener("click",function(){
			window.location.href = "/members/modifyMember.do?btn=0";
		})
		document.querySelector("#memberOrder").addEventListener("click",function(){
			window.location.href = "/members/modifyMember.do?btn=1";
		})
		document.querySelector("#changePw").addEventListener("click",function(){
			window.location.href = "/members/modifyMember.do?btn=2";
		})
	</script>
</body>
</html>