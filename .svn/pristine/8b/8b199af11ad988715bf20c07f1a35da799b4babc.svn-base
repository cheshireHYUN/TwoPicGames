package members.review.controller;

import java.io.IOException;
import java.util.List;

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

@WebServlet("/members/reviews.do")
public class MyReviewListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IReviewService revService = ReviewServiceImple.getInstance();

		HttpSession session = req.getSession();

		MemberVO mem_id = (MemberVO) session.getAttribute("loginMember");
		String admin = (String) session.getAttribute("login");
		System.out.println(mem_id);
		System.out.println(admin);

		if(mem_id !=null) {
			List<MyReviewVO> revList = revService.getMemberReview(mem_id);
			req.setAttribute("revList", revList);			
			req.getRequestDispatcher("/main/myReview.jsp").forward(req, resp);
		}else if (admin != null) {
			List<MyReviewVO> revList = revService.getReviewList();
			req.setAttribute("revList", revList);			
			req.getRequestDispatcher("/main/myReview.jsp").forward(req, resp);			
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
