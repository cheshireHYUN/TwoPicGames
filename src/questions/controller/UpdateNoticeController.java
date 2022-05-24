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
@WebServlet("/updateNotice.do")
public class UpdateNoticeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String notId = req.getParameter("notId");
		
		INoticeService notService = NoticeServiceImpl.getInstance();
		
		NoticeVO vo = notService.getNotice(notId);
		
		req.setAttribute("vo", vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/notices/notice/update.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String notId = req.getParameter("notId");
		String notTit = req.getParameter("notTit");
		String notCon = req.getParameter("notCon");
		
		INoticeService notService = NoticeServiceImpl.getInstance();
		
		NoticeVO vo = new NoticeVO();
		vo.setNotId(notId);
		vo.setNotTit(notTit);
		vo.setNotCon(notCon);
		
		notService.updateNotice(vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("listNotice.do").forward(req, resp);
	}
}
