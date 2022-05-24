<%@page import="java.util.List"%>
<%@page import="games.game.vo.GameVO"%>
<%@page import="orders.cart.vo.CartVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
           
<%

	int totalPrice = (int)request.getAttribute("totalPrice");	
	List<GameVO> gameInfoList = (List<GameVO>)request.getAttribute("gameInfoList");
	List<String> cartNoList = (List<String>)request.getAttribute("cartNoList");
	
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/pay.css">
</head>
<body>
	<div class="payment-summaries payment-summaries--mutiple">
		<span class="payment-title payment-summaries__title">주문 요약</span>
		
		<div><%=gameInfoList.size() %>개의 게임을 결제합니다</div>
		
		 	<%
				if(gameInfoList.size()>0){
					for(int i=0; i<gameInfoList.size(); i++){
			%>
			
			
		<div class="payment-summaries__scroll-container"
			id="payment-summaries__scroll-container">
			<div class="payment-offer-summary payment-offer-summary--mutiple">
				<div class="payment-offer-summary__content">
					<h2 class="payment-offer-summary__title"><%=gameInfoList.get(i).getGame_name() %></h2>
					<!-- <p class="payment-offer-summary__author">2K Games, Inc.</p> -->
					<span class="payment-offer-summary__origin-price"><%=gameInfoList.get(i).getGame_price() %></span><span
						class="payment-offer-summary__current-price"><%=gameInfoList.get(i).getGame_price() %></span>
				</div>
				<div class="payment-offer-summary__thumbnail-wrap">
					<img alt="<%=gameInfoList.get(i).getGame_name() %>"
						src="<%=gameInfoList.get(i).getGame_img() %>"
						class="payment-offer-summary__thumbnail">
				</div>
			</div>
			<div class="payment-order-summary payment-summaries__order">
				<div class="payment-price">
					<div class="payment-price__label">
						<span>가격</span>
					</div>
					<div class="payment-price__value">
						<span>₩<%=gameInfoList.get(i).getGame_price() %></span>
					</div>
				</div>
				
<!-- 				<div class="payment-price">
					<div class="payment-price__label">
						<span>판매 할인</span>
					</div>
					<div class="payment-price__value">
						-<span>₩64,900</span>
					</div>
				</div> -->
				
				
				<%	}} %>
				
				
				<!-- 여긴 하나만 출력  -->
				<hr class="payment-summaries__divider">
				<div class="payment-price">
					<div class="payment-price__label payment-price__label--YOUPAY">
						<span>합계</span>
					</div>
					<div class="payment-price__value payment-price__value--YOUPAY">
						<span>₩25,000</span>
					</div>
				</div>
			</div>
			<footer class="payment-contact-us">
				<p>
					<span>도움이 필요하신가요?</span>&nbsp;<a
						href="https://www.epicgames.com/help/ko/c99" target="_blank"
						rel="noopener noreferrer"><span>문의하기</span></a>
				</p>
			</footer>
		</div>
		<div class="payment-order-confirm">
			<button class="payment-btn payment-order-confirm__btn payment-btn--disabled payment-btn--primary">
				<div class="payment-loading">
					<div class="payment-loading__container">
						<span>주문하기</span>
					</div>
				</div>
			</button>
		</div>
	</div>
</body>
</html>