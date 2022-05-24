package notices.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notices.service.IQuestionService;
import notices.service.QuestionServiceImpl;

@WebServlet("/deleteQuestion.do")
public class DeleteAnswerController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String qesId = req.getParameter("qesId");
		
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		qesService.deleteQuestion(qesId);
		
		req.getRequestDispatcher("/listQuestion.do").forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
