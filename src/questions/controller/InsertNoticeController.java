package questions.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import questions.service.INoticeService;
import questions.service.NoticeServiceImpl;
import questions.vo.NoticeVO;


@MultipartConfig(fileSizeThreshold = 1024 * 1024 *3, maxFileSize = 1024 * 1024 * 40, maxRequestSize = 1024 * 1024 * 50)
@WebServlet("/insertNotice.do")
public class InsertNoticeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("notices/notice/insert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String notId = req.getParameter("notId");
		String notTit = req.getParameter("notTit");
		String notCon = req.getParameter("notCon");
		String notDt = req.getParameter("notDt");
		
		INoticeService notService = NoticeServiceImpl.getInstance();
		
		NoticeVO vo = new NoticeVO();
		vo.setNotId(notId);
		vo.setNotTit(notTit);
		vo.setNotCon(notCon);
		vo.setNotDt(notDt);
		
		notService.insertNotice(vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("listNotice.do").forward(req, resp);
	}
}
