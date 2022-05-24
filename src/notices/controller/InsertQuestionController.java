package notices.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.vo.MemberVO;
import notices.service.IQuestionService;
import notices.service.QuestionServiceImpl;
import notices.vo.QuestionVO;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 *3, maxFileSize = 1024 * 1024 * 40, maxRequestSize = 1024 * 1024 * 50)
@WebServlet("/insertQuestion.do")
public class InsertQuestionController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("notices/question/insert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String qesTit = req.getParameter("qesTit");
		String qesCon = req.getParameter("qesCon");
		
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		QuestionVO vo = new QuestionVO();
		vo.setQesTit(qesTit);
		vo.setQesCon(qesCon);
		HttpSession session = req.getSession();
		MemberVO memVO = (MemberVO) session.getAttribute("loginMember");
		vo.setMemId(memVO.getMem_id());
		
		qesService.insertQuestion(vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/listQuestion.do").forward(req, resp);
	}
}
