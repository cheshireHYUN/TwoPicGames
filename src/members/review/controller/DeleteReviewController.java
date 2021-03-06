package members.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.vo.MemberVO;
import members.review.service.IReviewService;
import members.review.service.ReviewServiceImple;
import members.review.vo.ReviewVO;

@WebServlet("/members/DeleteReview.do")
public class DeleteReviewController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		String admin = (String) session.getAttribute("login");
		MemberVO member = (MemberVO) session.getAttribute("loginMember");
		String mem_id = member.getMem_id();
		String rev_id = req.getParameter("rev_id");
		ReviewVO vo = new ReviewVO();
		vo.setRev_id(rev_id);
		vo.setMem_id(mem_id);
		
		if( admin == null && mem_id != null) {
			IReviewService reviewService = ReviewServiceImple.getInstance();
			reviewService.deleteReview(vo);
			req.getRequestDispatcher("/members/reviews.do").forward(req, resp);
		} else if(admin!= null && mem_id == null) {
			IReviewService reviewService = ReviewServiceImple.getInstance();
			reviewService.delete(rev_id);
			req.getRequestDispatcher("/members/reviews.do").forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
