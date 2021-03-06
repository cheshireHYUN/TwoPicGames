<%@page import="members.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<MemberVO> memList = (List<MemberVO>) request.getAttribute("memList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 아이디 리스트</title>
<link rel="stylesheet" href="../css/adminMemInfo.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/account.css">
<script src="../js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp" />
	</header>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<div class="col-lg-3 col-md-3 col-sm-3 sidebar-section hidden-xs">
	<br><br> <br><br><br><br>
		<div class="container sidebar-container"  style="margin-left: 15px">
			<div class="navigation-section">
				<!-- 회원 정보 변경 버튼 -->
				<button class="setting col-sm-12 col-md-12 personal-info active" id="btn0">
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
													<br>
													<div class="h2 font-weight-bold">회원목록</div>
													<div class="table-responsive">
														<table class="table align-middle text-center">
															<thead>
																<tr>
																	<th scope="col" style="text-align: center;">ID</th>
																	<th scope="col" style="text-align: center;">이름</th>
																	<th scope="col"style="text-align: center;">비밀번호</th>
																	<th scope="col" style="text-align: center;">이메일</th>
																	<th scope="col" style="text-align: center;">전화번호</th>
																	<th scope="col" style="text-align: center;">주민번호</th>
																	<th scope="col" style="text-align: center;">탈퇴여부</th>
																	<th scope="col" style="text-align: center;">관리</th>
																</tr>
															</thead>
															<tbody>
																<%
																	for (int i = 0; i < memList.size(); i++) {
																%>
																<form action = "/idListController.do" method="post">
																<tr class="bg-blue align-middle">
																	<td class="pt-2" style="margin-top: 7px;">
																		<div class="pl-lg-5 pl-md-1 pl-1 name" style="vertical-align: middle;"><%=memList.get(i).getMem_id()%></div>
																		<input type="text" name="mem_id" value="<%=memList.get(i).getMem_id() %>" hidden="hidden">
																	</td>
																	<td class="pt-3 mt-1" ><%=memList.get(i).getMem_name()%></td>
													 				<td class="pt-3"><%=memList.get(i).getMem_pw()%></td>
																	<td class="pt-6" style="vertical-align: middle;"><%=memList.get(i).getMem_mail()%></td>
																	<td class="pt-6" style="vertical-align: middle;"><%=memList.get(i).getMem_ph()%></td>
																	<td class="pt-3"><%=memList.get(i).getMem_bir().substring(2, 10).replace("-", "")%></td>
																	<td class="pt-1" style="vertical-align: middle;"><%=memList.get(i).getMem_wit()%></td>
																	<td class="pt-2" ><button type="submit"
																			class="btn btn-submit btn-custom"
																			style="background-color: #ffffff; border: none;">회원 탈퇴</button></td>
																</tr>
																</form>
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
	document.querySelector("#btn0").addEventListener("click",function(){
		window.location.href = "/idListController.do"; 
	});
	document.querySelector("#btn1").addEventListener("click",function(){
		window.location.href = "/GameListAdmin.do"; 
	});
	document.querySelector("#btn2").addEventListener("click",function(){
		window.location.href = "/InsertGame.do"; 
	});
	document.querySelector("#btn3").addEventListener("click",function(){
		window.location.href = "/FreeGameAdmin.do"; 
	});
	</script>
</body>
</html>

