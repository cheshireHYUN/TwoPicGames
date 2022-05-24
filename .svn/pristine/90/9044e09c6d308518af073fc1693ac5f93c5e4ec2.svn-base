package notices.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notices.service.IQuestionService;
import notices.service.QuestionServiceImpl;
import notices.vo.AnswerVO;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 *3, maxFileSize = 1024 * 1024 * 40, maxRequestSize = 1024 * 1024 * 50)
@WebServlet("/updateAnswer.do")
public class UpdateAnswerController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String qesId = req.getParameter("qesId");
		
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		AnswerVO vo = qesService.getAnswer(qesId);
		
		req.setAttribute("vo", vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/notices/answer/update.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String ansCon = req.getParameter("ansCon");
		String qesId = req.getParameter("qesId");
		
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		AnswerVO vo = new AnswerVO();
		vo.setAnsCon(ansCon);
		vo.setQesId(qesId);
		
		qesService.updateAnswer(vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/listQuestion.do").forward(req, resp);
	}
}
