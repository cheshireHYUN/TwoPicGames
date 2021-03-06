<%@page import="games.publisher.vo.PublisherVO"%>
<%@page import="games.publisher.vo.PublishVO"%>
<%@page import="games.comcategory.vo.CategoryDetailVO"%>
<%@page import="games.game.vo.GameVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<GameVO> gameList = (List<GameVO>) request.getAttribute("gameList");
List<GameVO> freeGameList = (List<GameVO>) request.getAttribute("freeGameList");
List<CategoryDetailVO> catList = (List<CategoryDetailVO>) request.getAttribute("catList");
List<PublisherVO> pubList = (List<PublisherVO>) request.getAttribute("pubList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../css/account.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp" />
	</header>
	<div class="col-lg-3 col-md-3 col-sm-3 sidebar-section hidden-xs">
		<br> <br> <br> <br> <br> <br>
		<div class="container sidebar-container" style="margin-left: 15px">
			<div class="navigation-section">
				<!-- 회원 정보 변경 버튼 -->
				<button class="setting col-sm-12 col-md-12 password" id="btn0">
					회원관리<i
						class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
				</button>
				<button class="setting col-sm-12 col-md-12 personal-info active"
					id="btn1">
					게임 관리<i
						class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
				</button>
				<button class="setting col-sm-12 col-md-12 password " id="btn2">
					게임 추가<i
						class="glyphicon glyphicon glyphicon-menu-right pull-right visible-xs custom-chevron"></i>
				</button>
				<button class="setting col-sm-12 col-md-12 password " id="btn3">
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
									<div class="row">
										<div class="col-md-12 password-form-column">
											<div class="container form-container password-form-container">
												<div class="container rounded bg-white">
													<div class="h2 font-weight-bold">게임목록</div>
													<div class="table-responsive">
														<table class="table align-middle text-center"
															style="text-align: center;">
															<thead>
																<tr style="text-align: center;">
																	<th scope="col" style="text-align: center;">게임ID</th>
																	<th scope="col" style="text-align: center;">게임이름</th>
																	<th scope="col" style="text-align: center;">가격</th>
																	<th scope="col" style="text-align: center;">개발사</th>
																	<th scope="col" style="text-align: center;">발매일</th>
																	<th scope="col" style="text-align: center;">연령제한</th>
																</tr>
															</thead>
															<tbody>
																<%
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
																<tr class="bg-blue align-middle">
																	<td class="pt-2">
																		<div class="pl-lg-5 pl-md-1 pl-1 name"
																			style="vertical-align: middle"><%=gameList.get(i).getGame_id()%></div>
																	</td>
																	<td class="pt-3 mt-1"><%=gameList.get(i).getGame_name()%></td>
																	<td class="pt-3"><%=gameList.get(i).getGame_price()%></td>
																	<td class="pt-6" style="vertical-align: middle"><%=gameList.get(i).getGame_dev()%></td>
																	<td class="pt-6" style="vertical-align: middle"><%=gameList.get(i).getRel_dt()%></td>
																	<td class="pt-6" style="vertical-align: middle"><%=gameList.get(i).getAge()%></td>
																	<td class="pt-2" style="vertical-align: middle"><button
																			type="button" id="updateGame" data-toggle="modal"
																			data-target="#update<%=i%>"
																			value="<%=gameList.get(i).getGame_id()%>"
																			class="btn btn-submit btn-custom"
																			style="background-color: #ffffff; border: none;">수정</button></td>
																	<td class="pt-2" style="vertical-align: middle"><button
																			class="btn btn-submit btn-custom"
																			onclick="location.href='/GameDeleteAdmin.do?game_id=<%=gameList.get(i).getGame_id()%>'"
																			style="background-color: #ffffff; border: none;">삭제</button></td>
																</tr>
																<!-- 구분영역 -->
																<tr id="spacing-row">
																	<td></td>
																</tr>

																<%
																	}
																for (int i = 0; i < gameList.size(); i++) {
																%>
																<div id="update<%=i%>" class="modal fade" role="dialog">

																	<div class="modal-dialog"
																		style="max-width: 60%; , width: auto; , display: inline-block; , text-align: left; , vertical-align: middle; , position: relative; top: 50px;">
																		<!-- Modal content-->

																		<form action="/GameUpdateAdmin.do" method="post"
																			enctype="multipart/form-data">
																			<div class="modal-content">
																				<div class="row">
																					<div class="col-md-12 password-form-column">
																						<div
																							class="container form-container password-form-container">
																							<div>
																								<br>
																								<div class="title-section">
																									<p class="title">게임 수정</p>
																									<p class="description">게임정보를 수정합니다</p>
																									<input type="text" name="updateGameId"
																										value="<%=gameList.get(i).getGame_id()%>"
																										readonly="readonly">
																								</div>
																								<div class="form--body">
																									<div class="form--body-column">
																										<div class="password-inner-container">
																											<div class="password-fields form-fields">
																												<div class="form-field--section clearfix">
																													<div class="form-group clearfix">
																														<div>
																															<div
																																class="form-field form-field--custom password-field">

																																<input class="input confirmPassword"
																																	type="text" maxlength="60"
																																	minlength="0" autocomplete="off"
																																	name="title" placeholder="이름" value="">
																															</div>
																															<!-- 이미지, 영상 등록 -->
																															<div class="custom-file">
																																<input type="file"
																																	class="custom-file-input" id="cover"
																																	width="300px" name="cover"> <label
																																	class="custom-file-label"
																																	for="customFile">COVER</label>
																															</div>
																															<div class="custom-file"
																																style="margin-top: 20px">
																																<input type="file"
																																	class="custom-file-input" id="trailer"
																																	name="trailer"> <label
																																	class="custom-file-label"
																																	for="customFile">TRAILER</label>
																															</div>
																															<div
																																class="form-field form-field--custom password-field">
																																<input class="input confirmPassword"
																																	type="text" maxlength="100"
																																	minlength="0" autocomplete="off"
																																	name="price" placeholder="price"
																																	value="">
																															</div>
																															<div
																																class="form-field form-field--custom password-field">
																																<input class="input confirmPassword"
																																	type="text" maxlength="100"
																																	minlength="0" autocomplete="off"
																																	name="age" placeholder="AGE" value="">
																															</div>
																															<div
																																class="form-field form-field--custom password-field">
																																<input class="input confirmPassword"
																																	type="text" maxlength="100"
																																	minlength="0" autocomplete="off"
																																	name="developer" placeholder="개발사"
																																	value="">
																															</div>
																															<!-- 달력 영역 -->
																															<laebl>RELDATE</laebl>
																															<input type="date" name="date" />
																															<div style="margin-top: 10px">
																																<label>퍼블리셔</label><br> <select
																																	name="publisher">
																																	<%
																																		for (int j = 0; j < pubList.size(); j++) {
																																	%>
																																	<option
																																		value="<%=pubList.get(j).getPub_name()%>"><%=pubList.get(j).getPub_name()%></option>
																																	<%
																																		}
																																	%>
																																</select>
																															</div>
																															<div style="margin-top: 10px">
																																<label>JENRE</label><br> <select
																																	multiple name="jenre">
																																	<%
																																		for (int j = 0; j < catList.size(); j++) {
																																		if (catList.get(j).getCom_name().equals("장르")) {
																																	%>
																																	<option
																																		value="<%=catList.get(j).getDetail_id()%>"><%=catList.get(j).getDetail_name()%></option>
																																	<%
																																		}
																																	}
																																	%>
																																</select>
																															</div>
																															<div style="margin-top: 10px">
																																<label>FUNCTION</label><br> <select
																																	multiple name="function">
																																	<%
																																		for (int j = 0; j < catList.size(); j++) {
																																		if (catList.get(j).getCom_name().equals("기능")) {
																																	%>
																																	<option
																																		value="<%=catList.get(j).getDetail_id()%>"><%=catList.get(j).getDetail_name()%></option>
																																	<%
																																		}
																																	}
																																	%>
																																</select>
																															</div>
																															<div style="margin-top: 10px">
																																<label>PLATFORM</label><br> <select
																																	multiple name="platform">
																																	<%
																																		for (int j = 0; j < catList.size(); j++) {
																																		if (catList.get(j).getCom_name().equals("플랫폼")) {
																																	%>
																																	<option
																																		value="<%=catList.get(j).getDetail_id()%>"><%=catList.get(j).getDetail_name()%></option>
																																	<%
																																		}
																																	}
																																	%>
																																</select>
																															</div>
																														</div>
																													</div>
																												</div>
																											</div>
																										</div>
																										<div class="submit-section col-md-12">
																											<div class="submit-btns hidden-mobile">
																												<div>
																													<button type="button" id="updateCancel"
																														data-dismiss="modal"
																														class="btn btn-default btn-custom ">취소</button>
																													<button type="submit"
																														class="btn btn-default btn-custom ">확인</button>
																												</div>
																											</div>
																											<br>
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
																
																<%
																	}
																for (int i = 0; i < freeGameList.size(); i++) {
																%>
																<tr class="bg-blue align-middle">
																	<td class="pt-2">
																		<div class="pl-lg-5 pl-md-1 pl-1 name"
																			style="vertical-align: middle"><%=freeGameList.get(i).getGame_id()%></div>
																	</td>
																	<td class="pt-3 mt-1"><%=freeGameList.get(i).getGame_name()%></td>
																	<td class="pt-3">무료<strike><%=freeGameList.get(i).getGame_price()%></strike></td>
																	<td class="pt-6" style="vertical-align: middle"><%=freeGameList.get(i).getGame_dev()%></td>
																	<td class="pt-6" style="vertical-align: middle"><%=freeGameList.get(i).getRel_dt()%></td>
																	<td class="pt-6" style="vertical-align: middle"><%=freeGameList.get(i).getAge()%></td>
																	<td class="pt-2"><button type="button"
																			id="updateGame" class="btn btn-submit btn-custom"
																			data-toggle="modal" data-target="#update"
																			style="background-color: #ffffff; border: none;">수정</button></td>
																	<td class="pt-2"><button type="button"
																			id="deleteGame" class="btn btn-submit btn-custom"
																			data-toggle="modal" data-target="#delete"
																			style="background-color: #ffffff; border: none;">삭제</button></td>
																</tr>
																<!-- 구분영역 -->
																<tr id="spacing-row">
																	<td></td>
																</tr>

																<%
																	}
																%>
															</tbody>
														</table>
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
		</div>
	</div>
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
		document.querySelector("#updateCancel").addEventListener("click",
				function() {
					$("#update").modal('hide');
				});
		document.querySelector("#deleteCancel").addEventListener("click",
				function() {
					$("#delete").modal('hide');
				});
	</script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>