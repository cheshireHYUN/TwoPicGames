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
import wishList.vo.WishListVO;

@WebServlet("/cart/cartDetail.do")
public class CartDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("\n\n겟카트컨트롤러에 들어옴");
		System.out.println("멤버 아이디 잘들어오나확인해볼게");

		// 장바구니 안의 gameID, price를 쿼리해와서 jsp에 뿌려줄거임
		ICartService cartService = CartServiceImpl.getInstance();

		HttpSession session = req.getSession();
		if(session.getAttribute("loginMember") == null) {
			req.setAttribute("msg", "장바구니 조회는 로그인후에 가능합니다.");
			req.getRequestDispatcher("/main/main.jsp").forward(req, resp);
			return;
		}
		
		MemberVO member = (MemberVO) session.getAttribute("loginMember");

		
		 String memId = member.getMem_id();
		 System.out.println("멤버 아이디 잘들어오나?????"+memId);

		// 애초에 오더에 없는 카트만 불러오는 쿼리
		List<CartVO> selectCartList = cartService.getSelectCart(memId);
		// 게임정보도 띄워줘야하니 위 리스트 VO에 들어있는 cartNo로 정보 서치해주기
		List<String> selectGameList = new ArrayList<String>();
		for(CartVO vo : selectCartList) {
			selectGameList.add(cartService.getSelectGame(vo.getCartNo()));
		}
		
		
		for(CartVO vo : selectCartList) {
			System.out.println("카트리스트:"+vo.getCartNo());
		}
		
		for(String vo : selectGameList) {
			System.out.println("겜리스트:"+vo);
		}

		// 주문완료된거 제외한 사용자의장바구니 (cartPrice와 cartNo 가짐)
		req.setAttribute("selectCartList", selectCartList);
		// 주문완료된거 제외한 사용자의장바구니에 해당하는 게임들 (gameId 가짐)
		req.setAttribute("selectGameList", selectGameList);
		// 사용자가 주문할수있는 카트 내 게임에 대한 게임ID를 가져다 게임정보를 가져오자
		
		IOrderService orderService = OrderServiceImpl.getInstance();
		List<GameVO> gameInfoList = new ArrayList<GameVO>();
		for(String vo : selectGameList) {
			gameInfoList.add(orderService.getGamesInfo(vo));
		}
		
		
		// 한시적무료게임과 그 게임의 가격
		IWishListService wishService = WishListServiceImpl.getInstance();
		List<FreeGameVO> freeGameList = new ArrayList<FreeGameVO>();
		for(String vo : selectGameList) {
			if(wishService.freeGameInWish(vo) != null) {
				freeGameList.add(wishService.freeGameInWish(vo));
			}
		}
		for(FreeGameVO vo : freeGameList) {
			System.out.println("[리스트] 장바구니에 있는 무료게임 아이디 : "+vo.getGame_id());
		}
		
		req.setAttribute("freeGameList", freeGameList);
		
		
		req.setAttribute("gameInfoList", gameInfoList);
		
		req.getRequestDispatcher("/cart/cartDetail.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
