<%@page import="orders.vo.OrderVO"%>
<%@page import="java.util.List"%>
<%@page import="members.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String admin = (String) session.getAttribute("login");
MemberVO member = (MemberVO) session.getAttribute("loginMember");
String msg = (String) request.getAttribute("msg");
System.out.println(msg);
List<OrderVO> vo = (List<OrderVO>) request.getAttribute("orderList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../css/account.css">
<link rel="stylesheet" href="../css/accountOrder.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script src="../js/jquery-3.6.0.min.js"></script>
<style>
#rev_con {
	width: 200px;
	height: 100px;
}

.star-rating {
	display: flex;
	flex-direction: row-reverse;
	font-size: 1.5em;
	padding: 0 .2em;
	text-align: center;
	width: 5em;
}

.star-rating input {
	display: none;
}

.star-rating label {
	color: #ccc;
	cursor: pointer;
}

.star-rating :checked ~ label {
	color: #f90;
}

.star-rating label:hover, .star-rating label:hover ~ label {
	color: #f90;
}
</style>
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>

	<div class="col-md-9 col-lg-9 col-sm-9 main-section">
		<div>
			<div class="">
				<div>
					<div class="">
						<div>
							<div class="container payment-container">
								<div class="main-container-title">
									<div class="form-container">
										<div class="title-section">
											<p class="title">구매 기록</p>
											<p class="description">
												<%
													if (member != null) {
												%>
												<span>계정 결제 세부사항 및 거래명세를 확인합니다.</span>

											</p>
										</div>
									</div>
								</div>
								<div class="results-container">
									<div class="main-container-transaction">
										<table class="table payment-history-table">
											<colgroup>
												<col class="col-date">
												<col span="2">
												<col class="col-order-status">
												<col class="col-payment-action">
											</colgroup>
											<thead>
												<tr>
													<%
														int voSize = vo.size();
													for (int i = 0; i < voSize; i++) {
													%>
													<th class="table-header"><button class="sort-btn">날짜</button></th>
													<th class="table-header"><button class="sort-btn">게임
															이름</button></th>
													<th class="table-header"><button class="sort-btn">가격</button></th>
													<th></th>
												</tr>
											</thead>
											<tbody class="mobile-table-body"
												data-orderid="F2101040826332163">
												<tr class="data-column">
													<!-- 구매 날짜 입력 부분 -->
													<td class="table-data"><%=vo.get(i).getOrderDt()%></td>
													<td class="table-data"><span class="order-description"
														data-tip="Procedural Nature Pack Vol.1"
														currentitem="false"><span> <!-- 게임 이름 입력 부분 -->
																<button class="expand-btn" data-item-length="0">
																	<span><span><%=vo.get(i).getGameName()%>
																	</span></span>
																</button></span></span></td>
													<!-- 가격 입력 부분 -->
													<td class="price table-data non-credit"><%=vo.get(i).getGamePrice()%></td>
													<td class="table-data order-status"><button
															class="MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedPrimary jss40 MuiButton-disableElevation MuiButton-fullWidth"
															tabindex="0" type="submit" id="btn-submit"
															data-bs-toggle="modal" data-bs-target="#reviewModal"
															aria-label="계속">
															<span class="MuiButton-label"><span class="jss44">리뷰작성</span></span>
														</button></td>
													<!-- 구매내역 블럭 끝 -->
													<%
														}
													} else {
													%>
													<p class="description">구매 내역이 없습니다.</p>
													<%
														}
													%>
												</tr>
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
		<div class="modal fade" tabindex="-1" role="dialog" id="reviewModal">
			<div class="modal-dialog" style="margin-top: 150px" role="document">
				<div class="modal-content rounded-4 shadow">
					<div class="modal-body p-5">
						<h2 class="fw-bold mb-0 text-center">리뷰 작성</h2>
						<form action="insertReview.do" method="post">
							<ul class="d-grid gap-4 my-5 list-unstyled">
								<li class="d-flex gap-4">
									<div class="star-rating space-x-4 mx-auto">
										<input type="radio" id="5-stars" name="rating" value="5"
											onClick="setStar(5)" /> <label for="5-stars"
											class="star pr-4">★</label> <input type="radio" id="4-stars"
											name="rating" value="4" onClick="setStar(4)" /> <label
											for="4-stars" class="star">★</label> <input type="radio"
											id="3-stars" name="rating" value="3" onClick="setStar(3)" />
										<label for="3-stars" class="star">★</label> <input
											type="radio" id="2-stars" name="rating" value="2"
											onClick="setStar(2)" /> <label for="2-stars" class="star">★</label>
										<input type="radio" id="1-star" name="rating" value="1"
											onClick="setStar(1)" /> <label for="1-star" class="star">★</label>
									</div>
								</li>
								<li class="d-flex gap-4">
									<div class="form-group">
										<input class="border-0 form-control" type="text"
											name="rev_tit" placeholder="제목"
											style="width: 400px; font-size: 15px;">
									</div>
								</li>
								<li class="d-flex gap-4">
									<div class="form-group">
										<input class="border-0 form-control" name="rev_con"
											placeholder="내용"
											style="width: 400px; height: 200px; font-size: 15px;">
									</div>
								</li>
							</ul>
							<button type="button" id="submit"
								class="btn btn-lg btn-primary w-100" data-bs-dismiss="modal"
								style="margin-top: 0px;">제출</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		document.querySelector("#submit").addEventListener("click", function() {
			window.location.href = "/members/insertReview.do";
		});
		document.querySelector("#memberInfo").addEventListener("click",
				function() {
					window.location.href = "/members/modifyMember.do?btn=0";
				});
		document.querySelector("#changePw").addEventListener("click",
				function() {
					window.location.href = "/members/modifyMember.do?btn=2";
				});
	</script>
</body>
</html>