package faqs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import faqs.service.FaqServiceImpl;
import faqs.service.IFaqService;
import faqs.vo.FaqVO;


@MultipartConfig(fileSizeThreshold = 1024 * 1024 *3, maxFileSize = 1024 * 1024 * 40, maxRequestSize = 1024 * 1024 * 50)
@WebServlet("/updateFaq.do")
public class UpdateFaqController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String faqId = req.getParameter("faqId");
		
		IFaqService faqService = FaqServiceImpl.getInstance();
		
		FaqVO vo = faqService.getFaq(faqId);
		
		req.setAttribute("vo", vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/notices/faq/update.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String faqId = req.getParameter("faqId");
		String faqTit = req.getParameter("faqTit");
		String faqCon = req.getParameter("faqCon");
		
		IFaqService faqService = FaqServiceImpl.getInstance();
		
		FaqVO vo = new FaqVO();
		vo.setFaqId(faqId);
		vo.setFaqTit(faqTit);
		vo.setFaqCon(faqCon);
		
		faqService.updateFaq(vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("listFaq.do").forward(req, resp);
	}
}
