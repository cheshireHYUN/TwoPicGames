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
@WebServlet("/achivement/insertAch.do")
public class InsertAchController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/achs/insert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String gameId = req.getParameter("gameId");
		String memId = req.getParameter("memId");
		String achXp = req.getParameter("achXp");
		String achGrd = req.getParameter("achGrd");
		String achRan = req.getParameter("achRan");
		
		IAchService achService = AchServiceImpl.getInstance();
		
		AchVO vo = new AchVO();
		vo.setGameId(gameId);
		vo.setMemId(memId);
		vo.setAchXp(achXp);
		vo.setAchGrd(achGrd);
		vo.setAchRan(achRan);
		
		achService.insertAch(vo);
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/achivement/listAch.do").forward(req, resp);
	}
}
