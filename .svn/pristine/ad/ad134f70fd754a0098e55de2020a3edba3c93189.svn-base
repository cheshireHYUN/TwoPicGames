package members.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.vo.MemberVO;
import members.review.service.IReviewService;
import members.review.service.ReviewServiceImple;
import members.review.vo.ReviewVO;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 *1000, maxFileSize = 1024 * 1024 * 1000, maxRequestSize = 1024 * 1024 * 1000)
@WebServlet("/members/insertReview.do")
public class InsertReviewController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginMember");

		String game_id = req.getParameter("gameId");
		String rev_grd = req.getParameter("rating");
		String rev_tit = req.getParameter("rev_tit");
		String rev_con = req.getParameter("rev_con");
		String mem_id = member.getMem_id();
		
		System.out.println("게임아이디 : " + game_id);
		System.out.println("등급 : " + rev_grd);
		System.out.println("제목 : " + rev_tit);
		System.out.println("내용 : " + rev_con);
		
		IReviewService reviewService = ReviewServiceImple.getInstance();
		ReviewVO insertReview = new ReviewVO();
		insertReview.setGame_id(game_id);
		insertReview.setRev_grd(rev_grd);
		insertReview.setRev_tit(rev_tit);
		insertReview.setRev_con(rev_con);
		insertReview.setMem_id(mem_id);
		int cnt = reviewService.insertReview(insertReview);
		
		
		req.getRequestDispatcher("/listOrder.do").forward(req, resp);
	}
}
