package questions.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import questions.service.INoticeService;
import questions.service.NoticeServiceImpl;
import questions.vo.NoticeVO;


@WebServlet("/listNotice.do")
public class ListNoticeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		INoticeService notService = NoticeServiceImpl.getInstance();
		
		List<NoticeVO> notList = notService.getAllNoticeList();
		
		req.setAttribute("notList", notList);
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		RequestDispatcher rd = req.getRequestDispatcher("notices/notice/list.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
