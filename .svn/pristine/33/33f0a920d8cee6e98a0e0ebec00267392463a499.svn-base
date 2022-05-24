package orders.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.vo.MemberVO;
import orders.cart.service.CartServiceImpl;
import orders.cart.service.ICartService;
import orders.cart.vo.CartVO;
import wishList.service.IWishListService;
import wishList.service.WishListServiceImpl;
import wishList.vo.WishListVO;

@WebServlet("/cart/insertCart.do")
public class InsertCartController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginMember");
		
		// gameId랑 memId가 넘어온다고 치고
		String memId = member.getMem_id();
		
		String gameId = req.getParameter("gameId");
		System.out.println("insert카트에서 세션의 아이디 잘 들어오나?"+memId);
		
		ICartService cartService = CartServiceImpl.getInstance();
		CartVO vo = new CartVO();
		// vo.setCart_no(cart_no); 함수로 오라클에서 자동생성
		//vo.setCart_price(cartPrice); 가격정보는 어디서 받아오는거지...
		vo.setMemId(memId);
		vo.setGameId(gameId);
		// vo에 넣어줄 가격은 어디서 얻어?? >> 쿼리 하나 추가하자
		
		String price = cartService.getPrice(gameId);
		
		// price 잘 찍히는지 보고... Vo에 적재
		vo.setCartPrice(price);
		
		
		// 카트에 인서트 하기전에 이미 넣었던 게임인지 확인하기!!!!!!!!!!!!!!!!!!!!!!!!
		
		String check = cartService.checkExist(vo);
		int cnt1=0;
		int cnt2=0;
		if(check != null) {
			System.out.println("장바구니에 이미 존재함");
			
		} else {
			
			cnt1 = cartService.insertCart(vo); // memId, gameId, price 넣음 sysdate는 설정할필요없고..
			
			cnt2 = cartService.insertCartGame(gameId);	

		}
		
		
		String msg ="";
		
		if(cnt1>0&&cnt2>0) {
			msg = "장바구니 담기 성공";
		}else {
			msg="장바구니 담기 실패";
		}
		
		//System.out.println(msg+"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		
		session.setAttribute("msg", msg);
		
		//와 여기 오류 알았다 RedirectUrl에 
		String redirectUrl = req.getContextPath()+"/detailGame.do?id="+gameId;
		resp.sendRedirect(redirectUrl);
		
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
}
