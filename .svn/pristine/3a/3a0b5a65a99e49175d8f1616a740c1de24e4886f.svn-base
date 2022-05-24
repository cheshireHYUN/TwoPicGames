package questions.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import questions.service.INoticeService;
import questions.service.NoticeServiceImpl;
import questions.vo.NoticeVO;

@WebServlet("/searchNotice.do")
public class SearchNoticeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String searchNot = req.getParameter("searchNot");
		
		INoticeService notService = NoticeServiceImpl.getInstance();
		
		List<NoticeVO> vo = notService.searchNotice(searchNot);
		
		req.setAttribute("vo", vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/notices/notice/search.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
