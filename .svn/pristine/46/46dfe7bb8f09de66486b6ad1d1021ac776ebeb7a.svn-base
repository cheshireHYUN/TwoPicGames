package notices.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.vo.MemberVO;
import notices.service.IQuestionService;
import notices.service.QuestionServiceImpl;
import notices.vo.QuestionVO;

@WebServlet("/myQuestion.do")
public class myQuestionController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		MemberVO memVO = (MemberVO) session.getAttribute("loginMember");
		
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		List<QuestionVO> vo = qesService.myQuestionList(memVO.getMem_id());
		
		req.setAttribute("vo", vo);
		req.getRequestDispatcher("/notices/question/myQuestion.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
