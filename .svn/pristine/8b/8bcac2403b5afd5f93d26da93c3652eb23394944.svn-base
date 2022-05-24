<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

@media screen and (max-width: 726px) {
	.datepicker-dropdown.datepicker-orient-right:before {
		right: calc(50% - 6px);
	}
	.datepicker-dropdown.datepicker-orient-right:after {
		right: calc(50% - 5px);
	}
}
</style>

</head>
<body >
	
	<script>
		// Data Picker Initialization
		$(document).ready(function() {

			$('.input-daterange').datepicker({
				format : 'dd-mm-yyyy',
				autoclose : true,
				calendarWeeks : true,
				clearBtn : true,
				disableTouchKeyboard : true
			});

		});

		$(document).ready(function() {
			$('#example-includeSelectAllOption').multiselect({
				includeSelectAllOption : true
			});
		});
	</script>
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
																	<p class="title">한시적 무료 게임 등록</p>
																	<p class="description">
																		설정한 기간동안 게임이 무료로 제공됩니다.<span
																			class="icon-private-info lock-icon"></span>
																	</p>
																</div>
																<div class="form--body">
															<div class="form--body-column">
																<div class="password-inner-container">
																	<div class="password-fields form-fields">
																		<div class="form-field--section clearfix">
																			<div class="form-group clearfix"
																				style="margin-top: 0px">
																				<div>
																					<!-- 게임 리스트 -->
																					<div class="form-fields name-fields">
																						<div class="form-field--section clearfix">
																							<div class="table-responsive">
																								<div style="margin-bottom: 40px;">
																									<label>게임 선택</label><br> <select
																										class="custom-select" name="janre" style="width:40%">
																										<option value="1">One</option>
																										<option value="2">Two</option>
																										<option value="3">Three</option>
																									</select>
																								</div>
																							</div>
																						</div>
																					</div>

																					<!-- 기간 등록 -->
																					<div>
																						<div
																							class="flex-row d-flex justify-content-center"
																							style="width: 80%; height: 50%; justify-content: start !important;">
																							<div class="col-lg-6 col-11 px-1">
																								<div class="input-group input-daterange">
																									<input type="text" id="start"
																										class="form-control text-left mr-2"
																										style="height: 40px"> <label
																										class="ml-3 form-control-placeholder"
																										id="start-p" for="start">Start Date</label> <span
																										class="fa fa-calendar" id="fa-1"></span> <input
																										type="text" id="end"
																										class="form-control text-left ml-2"
																										style="height: 40px"> <label
																										class="ml-3 form-control-placeholder"
																										id="end-p" for="end">End Date</label> <span
																										class="fa fa-calendar" id="fa-2"></span>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="submit-section col-md-12">
																	<div class="submit-btns hidden-mobile password-submit ">
																		<div>
																			<button type="button"
																				class="btn btn-default btn-custom ">취소</button>
																			<button type="submit"
																				class="btn btn-submit btn-custom undefined">저장</button>
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
	
</body>
</html>