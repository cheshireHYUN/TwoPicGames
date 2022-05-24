package games.game.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import achivement.service.AchServiceImpl;
import achivement.service.IAchService;
import achivement.vo.AchVO;
import games.game.service.FreeGameServiceImpl;
import games.game.service.GameServiceImpl;
import games.game.service.IFreeGameService;
import games.game.service.IGameService;
import games.game.vo.GameDetailVO;
import games.game.vo.GameVO;
import members.member.vo.MemberVO;
import members.review.service.IReviewService;
import members.review.service.ReviewServiceImple;
import members.review.vo.ReviewVO;
import orders.cart.service.CartServiceImpl;
import orders.cart.service.ICartService;
import orders.cart.vo.CartVO;
import orders.service.IOrderService;
import orders.service.OrderServiceImpl;
import wishList.service.IWishListService;
import wishList.service.WishListServiceImpl;
import wishList.vo.WishListVO;

@WebServlet("/detailGame.do")
public class GameDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IGameService service = GameServiceImpl.getInstance();
		IFreeGameService freeService = FreeGameServiceImpl.getInstance();
		ICartService cartService = CartServiceImpl.getInstance();
		IReviewService reviewService = ReviewServiceImple.getInstance();
		IAchService achService = AchServiceImpl.getInstance();
		IWishListService wishService = WishListServiceImpl.getInstance();

		req.setCharacterEncoding("UTF-8");
		String id = req.getParameter("id");
		HttpSession session = req.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("loginMember");
		List<GameDetailVO> detailList = service.getDetailGameInfo(id);

		List<GameVO> freeList = freeService.getGameInfo(id);

		req.setAttribute("detailList", detailList);
		req.setAttribute("freeList", freeList);

		List<ReviewVO> reviewList = reviewService.getReviewList(id);
		req.setAttribute("reviewList", reviewList);
		if (vo != null) {
			List<CartVO> cartList = cartService.getCartList(vo.getMem_id());
			req.setAttribute("cartList", cartList);
			List<WishListVO> wishList = wishService.getMemberWishList(vo.getMem_id());
			req.setAttribute("wishList", wishList);
		}

		IOrderService orderSerice = OrderServiceImpl.getInstance();
		List<String> orderedGameIdList = new ArrayList<String>();
		System.out.println("돌아가긴 하는거유?");
		if (vo != null) {
			if (orderSerice.getOrderedGameId(vo.getMem_id()) == null) {

			} else {
				System.out.println("아이디가 왜 vo야   " + vo.getMem_id());
				orderedGameIdList = orderSerice.getOrderedGameId(vo.getMem_id());
			}
		}

		System.out.println("\n\n orderedGameIdList의 목록 잘 뜨나 확인\n\n");
		for (String or : orderedGameIdList) {
			System.out.println(or + "\n");
		}
		if (orderedGameIdList.isEmpty()) {
			System.out.println("비었다");
		} else {
			System.out.println("구매한 기록 있다");
		}
		req.setAttribute("orderedGameIdList", orderedGameIdList);

		req.getRequestDispatcher("games/detailGame.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
