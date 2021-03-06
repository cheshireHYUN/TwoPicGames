package notices.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notices.service.IQuestionService;
import notices.service.QuestionServiceImpl;
import notices.vo.QuestionVO;

@WebServlet("/detailQuestion.do")
public class DetailQuestionController extends HttpServlet  {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String qesId = req.getParameter("qesId");
		
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		QuestionVO vo = qesService.getQuestion(qesId);
		
		req.setAttribute("vo", vo);
		req.getRequestDispatcher("/notices/question/detail.jsp").forward(req, resp);
	}
	
	 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
