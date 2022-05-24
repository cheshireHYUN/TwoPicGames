package achivement.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import achivement.service.AchServiceImpl;
import achivement.service.IAchService;
import achivement.vo.AchVO;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 *3, maxFileSize = 1024 * 1024 * 40, maxRequestSize = 1024 * 1024 * 50)
@WebServlet("/updateAch.do")
public class UpdateAchController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String achId = req.getParameter("achId");
		
		IAchService achService = AchServiceImpl.getInstance();
		
		AchVO vo = achService.getAch(achId);
		
		req.setAttribute("vo", vo);
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/achs/update.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String achId = req.getParameter("achId");
//		String achId = req.getParameter("orderNo");  멤버아이디 불러오기
		String achXp = req.getParameter("achXp");
		String achGrd = req.getParameter("achGrd");
		String achRan = req.getParameter("achRan");
		
		IAchService achService = AchServiceImpl.getInstance();
		
		AchVO vo = new AchVO();
		vo.setAchId(achId);
		vo.setAchXp(achXp);
		vo.setAchGrd(achGrd);
		vo.setAchRan(achRan);
		
		achService.updateAch(vo);
		
		req.getRequestDispatcher("/listAch.do").forward(req, resp);
	}
}
