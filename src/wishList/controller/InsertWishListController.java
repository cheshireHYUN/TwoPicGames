package wishList.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.vo.MemberVO;
import wishList.service.IWishListService;
import wishList.service.WishListServiceImpl;
import wishList.vo.WishListVO;
import wishList.service.IWishListService;
import wishList.service.WishListServiceImpl;
import wishList.vo.WishListVO;

@WebServlet("/wishList/insertWishList.do")
public class InsertWishListController extends HttpServlet{
	// 위시리스트에 추가 버튼을 누르면 나오는 페이지!!!!!! 새로운 게임을 insert하자
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		MemberVO vo = (MemberVO) session.getAttribute("loginMember");
		String memId = vo.getMem_id();
		String gameId = req.getParameter("gameId");
		
		WishListVO wishVO = new WishListVO();
		wishVO.setGameId(gameId);
		wishVO.setMemId(memId);
		
		
		// 인서트 처리 하기 전에 이미 존재하는지 검색부터 하고 보내자!
		IWishListService wishService = WishListServiceImpl.getInstance();
		String wishId = wishService.getWishId(memId, gameId);
		int cnt=0;
		if(wishId != null) {
			System.out.println("해당 위시아이디가 위시리스트에 이미 존재함");
		} else {
			System.out.println("해당 위시아이디가 위시리스트에 존재하지 않으므로 위시에 추가");
			cnt = wishService.insertWishList(wishVO);

		}
		
		String msg ="";
		
		if(cnt>0) {
			msg = "위시리스트추가성공";
		}else {
			msg="위시리스트추가실패";
		}
		
		System.out.println(msg);
		
		session.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath()+"/detailGame.do?&id="+gameId;
		resp.sendRedirect(redirectUrl);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}

}