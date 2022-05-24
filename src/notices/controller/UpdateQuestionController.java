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
import notices.vo.QuestionVO;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 *3, maxFileSize = 1024 * 1024 * 40, maxRequestSize = 1024 * 1024 * 50)
@WebServlet("/updateQuestion.do")
public class UpdateQuestionController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String qesId = req.getParameter("qesId");
		
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		QuestionVO vo = qesService.getQuestion(qesId);
		
		req.setAttribute("vo", vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/notices/question/update.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String qesId = req.getParameter("qesId");
		String qesTit = req.getParameter("qesTit");
		String qesCon = req.getParameter("qesCon");
		
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		QuestionVO vo = new QuestionVO();
		vo.setQesId(qesId);
		vo.setQesTit(qesTit);
		vo.setQesCon(qesCon);
		
		qesService.updateQuestion(vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		String redirectUrl = req.getContextPath() + "/listQuestion.do";

		// 요청 방향을 바꾸어줌(Response Header에 location 값으로 넣어주어 해당 링크로 다시 돌아가게 함)
		// status code가 302일 때 Reponseheader에는 항상 location이 들어가 있음
		resp.sendRedirect(redirectUrl);
	}
}
