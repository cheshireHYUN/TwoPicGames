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

@WebServlet("/wishList/deleteWishList.do")
public class deleteWishListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("\n\n[deleteWishList] get 진입");
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginMember");
		String memId = member.getMem_id();
		
		String wishId= (String) req.getParameter("wishId");
		
		System.out.println("url의 위시아이디 파라미터 확인:"+wishId+"\n");
		IWishListService wishService = WishListServiceImpl.getInstance();
		
		int cnt = wishService.deleteWishList(wishId);
		
		String msg ="";
		
		if(cnt>0) {
			msg = "위시삭제성공";
		}else {
			msg="위시삭제실패";
		}
		
		session.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath()+"wishListDetail.do";
		resp.sendRedirect(redirectUrl);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}

}
