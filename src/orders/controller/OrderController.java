package orders.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import games.game.vo.FreeGameVO;
import games.game.vo.GameVO;
import members.member.vo.MemberVO;
import orders.cart.service.CartServiceImpl;
import orders.cart.service.ICartService;
import orders.cart.vo.CartVO;
import orders.service.IOrderService;
import orders.service.OrderServiceImpl;
import wishList.service.IWishListService;
import wishList.service.WishListServiceImpl;

@WebServlet("/orderController.do")
public class OrderController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 게임상세에서 memId와 gameId를 포함하여 들어올수도 있고, 장바구니에서 memId만 갖고 들어올수도 있음
		// 구분은 파라미터 존재여부로 나누려고 한다. gameId를 가지고 있는가>
		List<String> gamesIdList = new ArrayList<String>(); 
		List<GameVO> gameInfoList = new ArrayList<GameVO>(); 
		List<String> cartNoList = new ArrayList<String>();
		IOrderService orderSerice = OrderServiceImpl.getInstance();
		String msg="";
		System.out.println("상세페이지에서 주문하기 눌러 주문창 진입");
		// 이미 결제된 항목도 결제창으로 넘어가져버림... 검사해서 분기문으로 처리하자!!!!!
		 if(req.getParameterMap().containsKey("gameId")) { 
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// /// 1 상세페이지에서 구매할때
			 	
				 
				 String gameId = req.getParameter("gameId"); 			 
				 HttpSession session = req.getSession();
				 MemberVO member = (MemberVO) session.getAttribute("loginMember");
				 String memId = member.getMem_id();
				 
				 // 사용자의 구매완료 cartNO를 구해 gameId를 찾고, URL의 gameId를 비교해야됨
				 // 우선 구매한 gameId를 찾았다
				 List<String> orderedGameIdList = orderSerice.getOrderedGameId(memId);
				 System.out.println("\n\n orderedGameIdList의 목록 잘 뜨나 확인\n\n");
				 for(String or : orderedGameIdList) {
					 System.out.println(or+"\n");
				 }
				 boolean check = orderedGameIdList.contains(gameId);
				 System.out.println("\n\n 지금 구매하려는 게임Id가 order테이블에 존재합니까? => "+check+"\n\n");
				 
				 
				 
				 
				 if(check==true) {
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 1-1 이미 구매한 게임인경우
						msg="이미 구매한 게임입니다";
						
						session.setAttribute("msg", msg);
						
						//와 여기 오류 알았다 RedirectUrl에 
						String redirectUrl = req.getContextPath()+"/detailGame.do?id="+gameId;
						resp.sendRedirect(redirectUrl);
					
				 } else {
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 1-2 구매하지 않은 게임!!!!!!!!!!!!!
					 // 장바구니 테이블에 넣어주고 주문페이지로 넘어간다
					 // 그런데 구매는 안했으나 장바구니에는 이미 존재할수도 있음! 따라서 그것도 체크해줘야한다
					 
					 // 장바구니에 있는 내용을 가져오기
					 ICartService cartService = CartServiceImpl.getInstance();
					 List<CartVO> cartList = cartService.getCartList(memId);
					 List<String> cartIdList = new ArrayList<String>();
					 // 장바구니에 있는 내 게임중 id만 모아서 리스트 만듦
					 for(CartVO cart : cartList) {
						 cartIdList.add(cart.getGameId());
					 }
					 // 리스트에 gameId 존재하면 넘어가고 없으면 테이블에 추가작업
					 boolean isInCartChk = cartIdList.contains(gameId);
					 System.out.println("\n\n 장바구니에 존재하나요???? => "+isInCartChk+"\n\n");
					 
					 
					 if(isInCartChk == true) {
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 1-2-1 장바구니에 이미 그 게임이 존재하면 카트추가없이 넘어간다
						 String totalPrice = cartService.getPrice(gameId);
						 gamesIdList.add(gameId);
						// gameInfoList = orderSerice.getGamesInfo(gamesIdList);
						 
						 
						 IWishListService wishService = WishListServiceImpl.getInstance();
						 List<FreeGameVO> freeGameList = new ArrayList<FreeGameVO>();
						 if(wishService.freeGameInWish(gameId) != null) {
							 freeGameList.add(wishService.freeGameInWish(gameId));
						 }
						 req.setAttribute("freeGameList", freeGameList);
						 
						 if(freeGameList.isEmpty() == false) {
							 totalPrice = "0";
						 }
						 
						 req.setAttribute("totalPrice", totalPrice);
						 // 사려는 게임의 정보담은거
						 gameInfoList.add(orderSerice.getGamesInfo(gameId));
						 req.setAttribute("gameInfoList", gameInfoList);
						 // 사려는 게임의 카트번호
						 
						 System.out.println("getCartNo()에 넣을 첫번째 파라미터 : "+gameId);
						 System.out.println("getCartNo()에 넣을 두번째 파라미터 : "+memId);
						 cartNoList.add(orderSerice.getCartNo(gameId, memId));
						 
						 
						 System.out.println("사려는 게임의 카트번호 제발 들어와주ㅜㅜㅜㅜ"+cartNoList.get(0));
						 
						 req.setAttribute("cartNoList", cartNoList);
						 req.getRequestDispatcher("/orders/orderDetail.jsp").forward(req, resp);
						 
						 	
					 }else {
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 1-2-2 장바구니에도 존재하지 앟으면 카트테이블 추가해주고 넘어간다
							CartVO vo = new CartVO();
							vo.setMemId(memId);
							vo.setGameId(gameId);
							String price = cartService.getPrice(gameId);
							vo.setCartPrice(price);
							int cnt1 = cartService.insertCart(vo);
							int cnt2 = cartService.insertCartGame(gameId);	
								if(cnt1>0&&cnt2>0) {
									System.out.println("상세에서 구매 > Cart 테이블 잘 들어옴");
									System.out.println("상세에서 구매 > Cart_game 테이블 잘 들어옴");
								
									
									
									
									IWishListService wishService = WishListServiceImpl.getInstance();
									List<FreeGameVO> freeGameList = new ArrayList<FreeGameVO>();
									if(wishService.freeGameInWish(gameId) != null) {
										freeGameList.add(wishService.freeGameInWish(gameId));
									}
									req.setAttribute("freeGameList", freeGameList);
								
								// 주문페이지로 넘어가기 - 총가격과 게임인포리스트가 필요하다
								 String totalPrice = cartService.getPrice(gameId);
								 
								 // 한시적무료에 해당하면 가격 0으로 세팅해야함
								 if(freeGameList.isEmpty() == false) {
									 totalPrice = "0";
								 }
								 
								// gameInfoList = orderSerice.getGamesInfo(gamesIdList);
								 req.setAttribute("totalPrice", totalPrice);
								 
								 
								 gameInfoList.add(orderSerice.getGamesInfo(gameId));
								 req.setAttribute("gameInfoList", gameInfoList);
								 
								 
								 // 사려는 게임의 카트번호
								 cartNoList.add(orderSerice.getCartNo(gameId, memId));
								 
								 
								 
								 
								 req.setAttribute("cartNoList", cartNoList);
								 req.getRequestDispatcher("/orders/orderDetail.jsp").forward(req, resp);
								 
								 
								}else {
									System.out.println("상세에서 구매 > Cart 거쳐가기 미실행");
									String redirectUrl = req.getContextPath()+"/detailGame.do?id="+gameId;
									resp.sendRedirect(redirectUrl);
								}
					 }

				 }

			 

			 
		
		 }else { 
			 System.out.println("memId만 존재한다");
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 2 장바구니에서 온 요청
			 
			 System.out.println("장바구니에서 온 요청");
			 //memId의 장바구니 싹다 List<VO>로 쿼리해와서setAttribute 
			 HttpSession session = req.getSession();
			MemberVO member = (MemberVO) session.getAttribute("loginMember");
			String memId = member.getMem_id();
			 
			 ICartService cartService = CartServiceImpl.getInstance();
			 
			 // 결제완료된거 제외한 카트리스트이다(cartPrice와 cartNo 가짐)
			 List<CartVO> selectCartList = cartService.getSelectCart(memId);
			 
			// 게임Id 알기위해 위 리스트 VO에 들어있는 cartNo로 정보 서치해주기 (gameId 가짐)
			List<String> selectGameList = new ArrayList<String>();
			for(CartVO vo : selectCartList) {
				selectGameList.add(cartService.getSelectGame(vo.getCartNo()));
			}
			// gameId를 이용하여 게임정보 가져오기
			for(String gameId : selectGameList) {
				gameInfoList.add(orderSerice.getGamesInfo(gameId));
			}
			// totalPrice jsp에서 겟
			String totalPrice = req.getParameter("totalPrice");
			
			// 카트No만!! 들어있는 리스트
			for(CartVO vo : selectCartList) {
				cartNoList.add(vo.getCartNo());
			}
			
			 // api로 넘겨줄 내용들!
		     // 총가격은 jsp로부터 받아옴
			 req.setAttribute("totalPrice", totalPrice);
			 // 한시적무료게임과 그 게임의 가격
			IWishListService wishService = WishListServiceImpl.getInstance();
			List<FreeGameVO> freeGameList = new ArrayList<FreeGameVO>();
			for(String vo : selectGameList) {
				if(wishService.freeGameInWish(vo) != null) {
					freeGameList.add(wishService.freeGameInWish(vo));
				}
			}
			req.setAttribute("freeGameList", freeGameList);
			 
			 // 사려는 게임의 기타정보
			 req.setAttribute("gameInfoList", gameInfoList);
			 // 사려는 게임의 카트번호
			 req.setAttribute("cartNoList", cartNoList);
			 
			 
			 req.getRequestDispatcher("/orders/orderDetail.jsp").forward(req, resp);
			 

			
		 }
		 

		 
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
