<%@page import="java.util.List"%>
<%@page import="games.game.vo.GameVO"%>
<%@page import="orders.cart.vo.CartVO"%>
<%@page import="games.game.vo.FreeGameVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
           
<%

	String totalPrice = (String)request.getAttribute("totalPrice");	
	List<GameVO> gameInfoList = (List<GameVO>)request.getAttribute("gameInfoList");
	List<String> cartNoList = (List<String>)request.getAttribute("cartNoList");
	List<FreeGameVO> freeGameList = (List<FreeGameVO>)request.getAttribute("freeGameList");
	
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
					<span class="payment-offer-summary__origin-price"></span><span
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
				
				<%
					if(freeGameList.isEmpty()){ //한시적무료 없을때
				%>
	 				<div class="payment-price">
						<div class="payment-price__label">
							<span>판매 할인</span>
						</div>

						<div class="payment-price__value">
							-<span>₩0</span>
						</div>
					</div> 
				<%	
																				
					}else{ //한시적 무료 존재할때
						for(FreeGameVO vo : freeGameList){
							// 한시적무료게임의 경우
							if(vo.getGame_id().equals(gameInfoList.get(i).getGame_id())){
				%>
								<div class="payment-price">
									<div class="payment-price__label">
										<span>판매 할인</span>
									</div>
									
									<div class="payment-price__value">
										-<span>₩<%=gameInfoList.get(i).getGame_price() %></span>
									</div>
								</div> 
				<%
							} else{ // 한시적무료게임이 아닌경우
				%>	
								<div class="payment-price">
									<div class="payment-price__label">
										<span>판매 할인</span>
									</div>
			
									<div class="payment-price__value">
										-<span>₩0</span>
									</div>
								</div> 
				<%
								}
					}
					}
				%>
				<%	}} %>
				
				
				
				<!-- 여긴 하나만 출력  -->
				<hr class="payment-summaries__divider">
				<div class="payment-price">
					<div class="payment-price__label payment-price__label--YOUPAY">
						<span>합계</span>
					</div>
					<div class="payment-price__value payment-price__value--YOUPAY">
						<span>₩<%=totalPrice %></span>
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
				
				<% 
					String cartNoPara="";
					int size2 = cartNoList.size();
					if(size2>0){
						for(int i=0; i<size2; i++){
							cartNoPara += "&cartNoPara"+"="+cartNoList.get(i);
						}
					}
				
					
				%>
				
				
		<%
			if(totalPrice.equals("0")){
				%>
						<div class="payment-order-confirm">
							<button class="payment-btn payment-order-confirm__btn payment-btn--disabled payment-btn--primary"
							onClick="location.href='../order/SuccessOrderController.do?><%=cartNoPara%>'">
								<div class="payment-loading">
									<div class="payment-loading__container">
										<span>주문하기</span>
									</div>
								</div>
							</button>
						</div>
				<%
			} else{
				%>
						<div class="payment-order-confirm">
							<button class="payment-btn payment-order-confirm__btn payment-btn--disabled payment-btn--primary"
							onClick="location.href='../order/kakaoPayController.do?totalPrice=<%=totalPrice%><%=cartNoPara%>'">
								<div class="payment-loading">
									<div class="payment-loading__container">
										<span>주문하기</span>
									</div>
								</div>
							</button>
						</div>
				<%
			}
		%>

		
	</div>
</body>
</html>