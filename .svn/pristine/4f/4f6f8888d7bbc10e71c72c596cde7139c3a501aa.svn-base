package orders.cart.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

@WebServlet("/cart/deleteCart.do")
public class DeleteCartController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		HttpSession session = req.getSession();
		MemberVO vvo = (MemberVO) session.getAttribute("loginMember");
		String memId = vvo.getMem_id();	
		System.out.println(memId);
		
		String gameId = req.getParameter("gameId");
		
		CartVO vo = new CartVO();
		vo.setGameId(gameId);
		vo.setMemId(memId);
		
		ICartService cartService = CartServiceImpl.getInstance();
		String cartNo = null;
		
		cartNo = cartService.checkExist(vo);
		
		
		// 이제 삭제를 해보자
		int cnt1 =0;
		int cnt2 =0;
		
		if(cartNo != null) {
			// 이미 테이블에 존재할때 삭제 ㄱㄴ
			cnt1 = cartService.deleteCartGame(cartNo);
			cnt2 = cartService.deleteCart(cartNo);			
		}else {
			System.out.println("테이블에 해당 사용자의 게임이 존재하지 않음..........");
		}
		
		String msg ="";
		
		if(cnt1>0 && cnt2>0) {
			msg = "성공";
		}else {
			msg="실패";
		}
		
		session.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath()+"/cart/cartDetail.do";
		resp.sendRedirect(redirectUrl);
	
		
		
		
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
}
