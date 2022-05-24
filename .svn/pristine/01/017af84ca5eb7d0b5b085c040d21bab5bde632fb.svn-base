package notices.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import notices.service.IQuestionService;
import notices.service.QuestionServiceImpl;
import notices.vo.AnswerVO;
import notices.vo.QuestionVO;

@WebServlet("/listQuestion.do")
public class ListQuestionController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		IQuestionService qesService = QuestionServiceImpl.getInstance();
		
		List<QuestionVO> qesList = qesService.getAllQuestionList();
		HttpSession session = req.getSession();
		String admin = (String) session.getAttribute("login");
		req.setAttribute("qesList", qesList);
		
		IQuestionService ansService = QuestionServiceImpl.getInstance();
		List<AnswerVO> ansList = new ArrayList<AnswerVO>();
		
		for(QuestionVO vo : qesList) {
			if(ansService.getAnswer(vo.getQesId()) != null) {
				ansList.add(ansService.getAnswer(vo.getQesId()));
			}
		}
		for(AnswerVO vo : ansList) {
			System.out.println("ans 제대로 가져왔는지 확인"+vo.getAnsCon());
		}
		req.setAttribute("ansList", ansList);
		
		req.setAttribute("admin", admin);
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/notices/question/list.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
