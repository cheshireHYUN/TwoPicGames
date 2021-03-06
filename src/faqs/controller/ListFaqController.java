package faqs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import faqs.service.FaqServiceImpl;
import faqs.service.IFaqService;
import faqs.vo.FaqVO;


@WebServlet("/listFaq.do")
public class ListFaqController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IFaqService faqService = FaqServiceImpl.getInstance();
		
		List<FaqVO> faqList = faqService.getAllFaqList();
		
		req.setAttribute("faqList", faqList);
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("notices/faq/list.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
