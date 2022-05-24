package wishList.controller;

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
import wishList.service.IWishListService;
import wishList.service.WishListServiceImpl;
import wishList.vo.WishListVO;

@WebServlet("/wishList/wishListDetail.do")
public class detailWishListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		if (session.getAttribute("loginMember") == null) {
			req.setAttribute("msg", "위시리스트는 로그인 후에 확인이 가능합니다");
			req.getRequestDispatcher("/main/main.jsp").forward(req, resp);
			return;
		}
		
		// 위시리스트엔 구매 완료된 게임은 띄우면 X
		MemberVO member = (MemberVO) session.getAttribute("loginMember");
		String memId = member.getMem_id();
		IWishListService wishService = WishListServiceImpl.getInstance();

		// 구매완료된 게임 제외한 위시리스트
		List<WishListVO> wishLists = wishService.getWishList(memId);

		for (WishListVO vo : wishLists) {
			System.out.println("위시리스트겜아이디 리스트 확인 :" + vo.getGameId());
			System.out.println("위시리스트위시아이디 리스트 확인 :" + vo.getWishId());
		}

		List<GameVO> gameDetailList = new ArrayList<GameVO>();
		// 선별한 게임 아이디에 대한 게임정보
		for (WishListVO vo : wishLists) {
			gameDetailList.add((GameVO) wishService.gameDetail(vo.getGameId()));
		}
		for (GameVO vo : gameDetailList) {
			System.out.println("위시리스트겜기타정보 리스트 확인 " + vo.getGame_name());
		}

		// 한시적무료
		List<FreeGameVO> freeGameList = new ArrayList<FreeGameVO>();
		for (WishListVO vo : wishLists) {
			if (wishService.freeGameInWish(vo.getGameId()) != null) {
				freeGameList.add(wishService.freeGameInWish(vo.getGameId()));
			}
		}
		for (FreeGameVO vo : freeGameList) {
			System.out.println("[리스트] 위시리스트에 있는 무료게임 아이디 : " + vo.getGame_id());
		}

		
		// 주문완료 제외한 위시리스트 / 해당 위시리스트의 게임디테일, 해당 위시리스트중 무료게임 req

		req.setAttribute("wishLists", wishLists);
		req.setAttribute("gameDetailList", gameDetailList);
		req.setAttribute("freeGameList", freeGameList);
		req.getRequestDispatcher("/wishList/detail.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
