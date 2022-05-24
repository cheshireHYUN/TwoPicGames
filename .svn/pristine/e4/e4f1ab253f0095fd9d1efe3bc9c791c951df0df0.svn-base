package members.review.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.vo.MemberVO;
import members.review.service.IReviewService;
import members.review.service.ReviewServiceImple;
import members.review.vo.MyReviewVO;
import members.review.vo.ReviewVO;
@WebServlet("/UpdateReview.do")
public class UpdateReviewController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		
		HttpSession session = req.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("loginMember");
		
		String rev_id = req.getParameter("rev_id");
		
		IReviewService reviewService = ReviewServiceImple.getInstance();
		
		ReviewVO reviewVO = (ReviewVO) reviewService.getReview(rev_id);
		req.setAttribute("reviewVO", reviewVO);
		
		req.getRequestDispatcher("/main/updatereview.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String rev_id = req.getParameter("revId");
		String mem_id = req.getParameter("memId");
		String game_id = req.getParameter("gameId");
		String rev_tit = req.getParameter("revTit");
		String revDt = req.getParameter("revDt");
		String rev_grd = req.getParameter("revGrd");
		String rev_con = req.getParameter("revCon");
		String rev_dt = revDt.substring(1, 10);
		
		ReviewVO reviewVO = new ReviewVO();
		reviewVO.setRev_id(rev_id);
		reviewVO.setMem_id(mem_id);
		reviewVO.setGame_id(game_id);
		reviewVO.setRev_tit(rev_tit);
		reviewVO.setRev_con(rev_con);
		reviewVO.setRev_dt(rev_dt);
		reviewVO.setRev_grd(rev_grd);
		
		IReviewService reviewService = ReviewServiceImple.getInstance();
		reviewService.updateReview(reviewVO);
		
		req.getRequestDispatcher("/members/reviews.do").forward(req, resp);
	}
}
