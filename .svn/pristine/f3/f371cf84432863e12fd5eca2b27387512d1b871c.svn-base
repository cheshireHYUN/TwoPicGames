package questions.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import questions.service.INoticeService;
import questions.service.NoticeServiceImpl;


@WebServlet("/deleteNotice.do")
public class DeleteNoticeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String notId = req.getParameter("notId");
		
		INoticeService notService = NoticeServiceImpl.getInstance();
		
		notService.deleteNotice(notId);
		
		req.getRequestDispatcher("/listNotice.do").forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
