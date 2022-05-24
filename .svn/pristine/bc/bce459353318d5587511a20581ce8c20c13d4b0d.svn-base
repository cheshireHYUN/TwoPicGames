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
@WebServlet("/insertAnswer.do")
public class InsertAnswerController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String qesId = req.getParameter("qesId");
		
		AnswerVO vo = new AnswerVO();
		vo.setQesId(qesId);
		
		req.setAttribute("vo", vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("notices/answer/insert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String qesId = req.getParameter("qesId");
		String ansCon = req.getParameter("ansCon");
		
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		AnswerVO vo = new AnswerVO();
		vo.setQesId(qesId);
		vo.setAnsCon(ansCon);
		
		qesService.insertAnswer(vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("listQuestion.do").forward(req, resp);
	}
}
