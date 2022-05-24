<%@page import="members.member.vo.MemberVO"%>
<%@page import="members.review.vo.MyReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<MyReviewVO> rev = (List<MyReviewVO>) request.getAttribute("rev");
	String admin = (String) session.getAttribute("login");
	MemberVO member = (MemberVO) session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review All</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.star {
	color: #f90;
	display: inline-block;
	flex-direction: row-reverse;
	font-size: 1.5em;
	text-align: center;
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
	<h2>전체 리뷰</h2>
	<p>모든 리뷰 보기</p>
	<br>
	<table border="1">
		<tr>
			<th>게임 이름</th>
			<th>게임 이미지</th>
			<th>리뷰 제목</th>
			<th>리뷰 날짜</th>
			<th>리뷰 평점</th>
			<th>리뷰 내용</th>
			<th>버튼</th>
		</tr>
	<%
		if (rev.size() > 0) {
			for (int i = 0; i < rev.size(); i++) {
		%>
		<tr>
			<td><%=rev.get(i).getGame_name()%></td>
			<td><img src="<%=rev.get(i).getGame_img()%>" width="116px"
				height="155px"></td>
			<td><%=rev.get(i).getRev_tit()%></td>
			<td><%=rev.get(i).getRev_dt()%></td>
			<td>
				<%
					for (int j = 0; j < rev.get(i).getRev_grd(); j++) {
				%> <label class="star">★</label> <%
 	}
 %>
			</td>
			<td><%=rev.get(i).getRev_con()%></td>
			<td><button type="button" class="btn" data-toggle="modal"
					id="update">수정</button>
				<button type="button" id = "delete">삭제</button>
		</tr>
	
	</table>
	<div class="modal fade" id="updateReview" role="dialog">
			<div class="modal-dialog">
				<form action="/UpdateReview.do" method="post" enctype="application/x-www-form-urlencoded">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
						<input type="text" name="game_id" value = <%=rev.get(i).getGame_id() %> hidden="hidden" >
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<br><input type="text" name="rev_tit" placeholder="변경할 제목을 입력해주세요">
							<br><textarea name="rev_con" cols="20" rows="10" placeholder="변경할 내용을 입력해주세요"></textarea>
							<br><input type="date" name = "rev_dt">
							<br><div class="star-rating space-x-4 mx-auto">
								<input type="radio" id="5-stars" name="rev_grd" value="5"
									onClick="setStar(5)" /> <label for="5-stars" class="star pr-4">★</label>
								<input type="radio" id="4-stars" name="rev_grd" value="4"
									onClick="setStar(4)" /> <label for="4-stars" class="star">★</label>
								<input type="radio" id="3-stars" name="rev_grd" value="3"
									onClick="setStar(3)" /> <label for="3-stars" class="star">★</label>
								<input type="radio" id="2-stars" name="rev_grd" value="2"
									onClick="setStar(2)" /> <label for="2-stars" class="star">★</label>
								<input type="radio" id="1-star" name="rev_grd" value="1"
									onClick="setStar(1)" /> <label for="1-star" class="star">★</label>
							</div>
						</div>
						<div class="modal-footer">
							<input type="submit" value="수정">
						</div>
					</div>
				</form>
			</div>
		</div>
		
		<div id="deleteReview" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<form action="/DeleteReview.do" method ="post" enctype="application/x-www-form-urlencoded">
			<div class="modal-content">
				<input type="text" name="game_id" value = <%=rev.get(i).getGame_id() %> hidden="hidden" >
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">정말로 삭제하시겟습니까?</h4>
					<button type="submit">확인</button>
					<button type="button" onclick = "hide()">취소</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	<%
			}
		} else {
	%>
	<h4>작성한 리뷰가 없습니다.</h4>
	<%
		}
	%>
	<script>
	document.querySelector("#update").addEventListener("click",
			function() {
				$("#updateReview").modal({
					backdrop : 'static'
				}); // jQuery객체는 jQuery 객체만 사용 -> 검은 배경 외부 누르면 안내려감
				// 			$("#myModal").modal({backdrop : false}); // jQuery객체는 jQuery 객체만 사용 -> 흰 배경 외부 누르면 안내려감
				// 			$("#myModal").modal({backdrop : true}); // jQuery객체는 jQuery 객체만 사용 -> 검은 배경 외부 누르면 내려감
			});
	
	document.querySelector("#delete").addEventListener("click",
			function() {
				$("#deleteReview").modal({
					backdrop : 'static'
				}); // jQuery객체는 jQuery 객체만 사용 -> 검은 배경 외부 누르면 안내려감
				// 			$("#myModal").modal({backdrop : false}); // jQuery객체는 jQuery 객체만 사용 -> 흰 배경 외부 누르면 안내려감
				// 			$("#myModal").modal({backdrop : true}); // jQuery객체는 jQuery 객체만 사용 -> 검은 배경 외부 누르면 내려감
			});
	</script>
</body>
</html>