package wishList.controller;

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


@WebServlet("/wishList/wishToCart.do")
public class WishToCartController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("\n\n[wishToCart doGet()요청 진입]");
		
		HttpSession session = req.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("loginMember");
		String memId = vo.getMem_id();	
		
		String gameId = (String) req.getParameter("gameId");
		System.out.println("파라미터를 게임아이디로 변환 : "+gameId);
		
		// 멤버와 게임아이디 가지고있는 상태
		// 장바구니에 집어넣는 연산 전에 이미 해당 memId에 해당하는 gmaeId가 장바구니에 있는지 확인부터 한다
		ICartService cartService = CartServiceImpl.getInstance();
		CartVO cvo = new CartVO();
		cvo.setMemId(memId);
		cvo.setGameId(gameId);
		String price = cartService.getPrice(gameId);
		cvo.setCartPrice(price);
		System.out.println("\n\nwishToCart할 겜아이디:"+gameId+"가격"+price);
		String check = cartService.checkExist(cvo);
		int cnt1=0;
		int cnt2=0;
		String msg ="";
		if(check != null) {
			System.out.println("[위시>장바구니]장바구니에 이미 존재함");
			msg="위시리스트게임을 장바구니 담기 실패";
			
		} else {
			
			cnt1 = cartService.insertCart(cvo); // memId, gameId, price 넣음 sysdate는 설정할필요없고..
			cnt2 = cartService.insertCartGame(gameId);	

		}
		
		if(cnt1>0&&cnt2>0) {
			msg = "위시리스트게임을 장바구니 담기 성공";
		}else {
			msg="위시리스트게임을 장바구니 담기 실패";
		}
		session.setAttribute("msg", msg);
		
		
		String redirectUrl = req.getContextPath()+"/wishList/wishListDetail.do";
		resp.sendRedirect(redirectUrl);
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}
