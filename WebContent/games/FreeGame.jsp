<%@page import="games.game.vo.GameVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<GameVO> list = (List<GameVO>) request.getAttribute("list");
List<GameVO> freeList = (List<GameVO>) request.getAttribute("freeList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/account.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"
	integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
body {
	color: #000;
	overflow-x: hidden;
	height: 100%;
	background-color: #ffffff !important;
	background-repeat: no-repeat;
	padding: 0 !important;
}

.container {
	padding-top: 120px;
	padding-bottom: 120px;
}

input {
	padding: 22px 15px !important;
	border: 1px solid #CFD8DC !important;
	border-radius: 4px !important;
	box-sizing: border-box;
	background-color: #fff !important;
	color: #000 !important;
	font-size: 16px !important;
	letter-spacing: 1px;
	position: relative;
}

input:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	border: 1px solid #1976D2 !important;
	outline-width: 0;
}

.fa-calendar {
	position: absolute;
	top: 13px;
	font-size: 20px;
	color: #1976D2;
	z-index: 1000;
}

#fa-1 {
	left: calc(50% - 40px);
}

#fa-2 {
	left: calc(100% - 40px);
}

.form-control-placeholder {
	position: absolute;
	top: -10px !important;
	padding: 12px 2px 0 2px;
	opacity: 0.5;
}

#end-p {
	left: calc(50% + 4px);
}

.form-control:focus+.form-control-placeholder, .form-control:valid+.form-control-placeholder
	{
	font-size: 95%;
	top: 10px;
	transform: translate3d(0, -100%, 0);
	opacity: 1;
}

::placeholder {
	color: #BDBDBD;
	opacity: 1;
}

:-ms-input-placeholder {
	color: #BDBDBD;
}

::-ms-input-placeholder {
	color: #BDBDBD;
}

button:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	outline-width: 0;
}

.datepicker {
	background-color: #fff;
	border-radius: 0 !important;
	align-content: center !important;
	padding: 0 !important;
}

.datepicker-dropdown {
	top: 180px !important;
	left: calc(50% - 173.5px) !important;
	border-right: #1976D2;
	border-left: #1976D2;
}

.datepicker-dropdown.datepicker-orient-left:before {
	left: calc(50% - 6px) !important;
}

.datepicker-dropdown.datepicker-orient-left:after {
	left: calc(50% - 5px) !important;
	border-bottom-color: #1976D2;
}

.datepicker-dropdown.datepicker-orient-right:after {
	border-bottom-color: #1976D2;
}

.datepicker table tr td.today, span.focused {
	border-radius: 50% !important;
	background-image: linear-gradient(#FFF3E0, #FFE0B2);
}

thead tr:nth-child(2) {
	background-color: #1976D2 !important;
}

/*Weekday title*/
thead tr:nth-child(3) th {
	font-weight: bold !important;
	padding: 20px 10px !important;
	color: #BDBDBD !important;
}

tbody tr td {
	padding: 10px !important;
}

tfoot tr:nth-child(2) th {
	padding: 10px !important;
	border-top: 1px solid #CFD8DC !important;
}

.cw {
	font-size: 14px !important;
	background-color: #E8EAF6 !important;
	border-radius: 0px !important;
	padding: 0px 20px !important;
	margin-right: 10px solid #fff !important;
}

.old, .day, .new {
	width: 40px !important;
	height: 40px !important;
	border-radius: 0px !important;
}

.day.old, .day.new {
	color: #E0E0E0 !important;
}

.day.old:hover, .day.new:hover {
	border-radius: 50% !important;
}

.old-day:hover, .day:hover, .new-day:hover, .month:hover, .year:hover,
	.decade:hover, .century:hover {
	border-radius: 50% !important;
	background-color: #eee;
}

.range-start, .range-end {
	border-radius: 50% !important;
	background-image: linear-gradient(#1976D2, #1976D2) !important;
}

.range {
	background-color: #E3F2FD !important;
}

.prev, .next, .datepicker-switch {
	border-radius: 0 !important;
	padding: 10px 10px 10px 10px !important;
	font-size: 18px;
	opacity: 0.7;
	color: #fff;
}

.prev:hover, .next:hover, .datepicker-switch:hover {
	background-color: inherit !important;
	opacity: 1;
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
<body>
	<script>
		// Data Picker Initialization
		$(document).ready(function() {

			$('.input-daterange').datepicker({
				format : 'yyyy/mm/dd',
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
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp" />
	</header>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<div class="col-lg-3 col-md-3 col-sm-3 sidebar-section hidden-xs">
		<br> <br> <br> <br> <br> <br>
		<div class="container sidebar-container" style="margin-left: 15px">
			<div class="navigation-section">
				<!-- 회원 정보 변경 버튼 -->
				<button class="setting col-sm-12 col-md-12 password " id="btn0">
					회원관리<i
						class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
				</button>
				<button class="setting col-sm-12 col-md-12 password" id="btn1">
					게임 관리<i
						class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
				</button>
				<button class="setting col-sm-12 col-md-12 password " id="btn2">
					게임 추가<i
						class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
				</button>
				<button class="setting col-sm-12 col-md-12 personal-info active"
					id="btn3">
					무료 게임 설정<i
						class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
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
									<form action = "/FreeGameAdmin.do" method="post" enctype="application/x-www-form-urlencoded">
										<div class="row">
											<div class="col-md-12 password-form-column">
												<div
													class="container form-container password-form-container">
													<div>
														<div class="title-section">
															<p class="title">한시적 무료 게임 등록</p>
															<p class="description">설정한 기간동안 게임이 무료로 제공됩니다.</p>
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
																										class="custom-select" name="game_id"
																										style="width: 40%">
																										<%
																											for (int i = 0; i < list.size(); i++) {
																											for (int j = 0; j < freeList.size(); j++) {
																												if (!list.get(i).getGame_id().equals(freeList.get(j).getGame_id())) {
																										%>
																										<option value="<%=list.get(i).getGame_id()%>"><%=list.get(i).getGame_name()%></option>
																										<%
																											break;
																										}
																										}
																										}
																										%>
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
																									<input type="text" id="start" name="fgm_sdt"
																										class="form-control text-left mr-2"
																										style="height: 40px"> <label
																										class="ml-3 form-control-placeholder" 
																										id="start-p" for="start">Start Date</label> <span
																										class="fa fa-calendar" id="fa-1"></span> <input
																										type="text" id="end" name = "fgm_fdt"
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
																			<button type="button" id = "cancel"
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
	<div id="free" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<form action="/FreeGameAdmin.do" method="post"
				enctype="application/x-www-form-urlencoded">
				<div class="modal-content">
					<input type="text" name="game_id" value="" hidden="hidden">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">기간을 설정해주세요</h4>
						fgm_sdt <input type="date" name="fgm_sdt" class="form-control">
						fgm_fdt <input type="date" name="fgm_fdt" class="form-control">
						<button type="submit">확인</button>
						<button type="button" onclick="hide(this)">취소</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"
		integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		document.querySelector("#btn0").addEventListener("click", function() {
			window.location.href = "/idListController.do";
		});
		document.querySelector("#btn1").addEventListener("click", function() {
			window.location.href = "/GameListAdmin.do";
		});
		document.querySelector("#btn2").addEventListener("click", function() {
			window.location.href = "/InsertGame.do";
		});
		document.querySelector("#btn3").addEventListener("click", function() {
			window.location.href = "/FreeGameAdmin.do";
		});
		document.querySelector("#cancel").addEventListener("click",function(){
			document.querySelector("#start").value = "";
			document.querySelector("#end").value = "";
		});
	</script>
</body>
</html>