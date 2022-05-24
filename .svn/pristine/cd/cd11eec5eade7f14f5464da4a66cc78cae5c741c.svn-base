package members.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import games.game.service.GameServiceImpl;
import games.game.service.IGameService;
import games.game.vo.GameVO;
import members.member.service.IMemberService;
import members.member.service.MemberServiceImpl;
import members.member.vo.GameCodeVO;
import members.member.vo.MemberVO;
import orders.cart.service.CartServiceImpl;
import orders.cart.service.ICartService;
import orders.cart.vo.CartVO;
import orders.service.IOrderService;
import orders.service.OrderServiceImpl;
import wishList.service.IWishListService;
import wishList.service.WishListServiceImpl;
import wishList.vo.WishListVO;

@WebServlet("/members/registerCode.do")
public class RegisterCodeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/members/registerCode.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IMemberService memService = MemberServiceImpl.getInstance();
		IGameService gameService = GameServiceImpl.getInstance();
		IWishListService wishService = WishListServiceImpl.getInstance();
		ICartService cartService = CartServiceImpl.getInstance();
		IOrderService orderService = OrderServiceImpl.getInstance();

		String codeStr = req.getParameter("code");

		HttpSession session = req.getSession();
		// 로그인한 회원의 정보를 가져옴(세션에 있음)
		MemberVO vo = (MemberVO) session.getAttribute("loginMember");
		// 해당 코드의 게임에 대한 정보를 가져옴
		String game = memService.searchGameCode(codeStr);
		// 해당 게임이 없을 시 바로 입력창으로 돌려보냄
		if (game == null) {
			session.setAttribute("msg", "noGameCode");
			req.getRequestDispatcher("/members/registerCode.jsp").forward(req, resp);
		}
		// 주문테이블의 해당 게임이 있나 유무 확인
		List<String> gameList = gameService.getCodeOrderGame(vo.getMem_id());
		boolean isGame = false;
		// 해당 게임 이름이 있는가 확인
		if (gameList.size() > 0) {
			for (int i = 0; i < gameList.size(); i++) {
				if (gameList.get(i).equals(game)) {
					isGame = true;
					break;
				}
			}
		}
		// 해당 게임이 있으면 입력창으로 돌려보냄
		if (isGame == true) {
			session.setAttribute("msg", "existGame");
			req.getRequestDispatcher("/members/registerCode.jsp").forward(req, resp);
		}
		// 해당 게임이 구매기록도 없고 코드가 유효한 것이면 위시리스트에 있나 확인후 있으면 위시리스트에서 지움
		List<WishListVO> wishList = wishService.getWishList(vo.getMem_id());
		for (int i = 0; i < wishList.size(); i++) {
			if (wishList.get(i).getGameId().equals(game)) {
				wishService.deleteWishList(wishList.get(i).getWishId());
			}
		}
		// 카트에 값 집어넣기
		CartVO cartVO = new CartVO();
		cartVO.setGameId(game);
		cartVO.setMemId(vo.getMem_id());
		cartVO.setCartPrice("0");

		// 카트 추가
		cartService.insertCart(cartVO);
		// 카트 게임 추가
		cartService.insertCartGame(game);
		List<CartVO> cartList = cartService.getCartList(vo.getMem_id());
		for (int i = 0; i < cartList.size(); i++) {
			if (cartList.get(i).getGameId().equals(game)) {
				// 주문테이블 추가
				orderService.insertOrder(cartList.get(i).getCartNo());
				break;
			}
		}

		GameCodeVO codeVO = new GameCodeVO();
		codeVO.setGame_code(codeStr);
		codeVO.setGame_id(game);

		gameService.updateGameCode(codeVO);

		// 해당 등록한 게임 이미지를 넣기위함
		List<GameVO> gameAllList = gameService.AllGameList();
		for (int i = 0; i < gameAllList.size(); i++) {
			if (gameAllList.get(i).getGame_id().equals(game)) {
				req.setAttribute("gameVO", gameAllList.get(i));
			}
		}

		session.setAttribute("msg", "ok");
		req.getRequestDispatcher("/members/registerCode.jsp").forward(req, resp);
//		if(game.getGame_img() == null) {
//			req.setAttribute("chk", false);
//			req.getRequestDispatcher("/members/registerCode.jsp").forward(req, resp);
//		} else {
//			req.setAttribute("chk", true);
//			req.setAttribute("game_img", game.getGame_img());
//			
//			/* MemberVO member = (MemberVO) session.getAttribute("loginMember"); */
//			/* String mem_id = member.getMem_id(); */
//			
//			String mem_id = req.getParameter("loginMember");
//			String code_id = mem_id + codeStr.substring(0,5);
//			
//			GameCodeVO code = new GameCodeVO(code_id, mem_id, codeStr);
//			int cnt = memService.insertCodeOrder(code);
//		}

	}
}
