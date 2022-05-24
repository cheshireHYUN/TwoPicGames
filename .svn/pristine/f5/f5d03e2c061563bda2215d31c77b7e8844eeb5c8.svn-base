package achivement.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import achivement.service.AchServiceImpl;
import achivement.service.IAchService;

@WebServlet("/deleteAch.do")
public class DeleteAchController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String achId = req.getParameter("achId");
		
		IAchService achService = AchServiceImpl.getInstance();
		
		achService.deleteAch(achId);
		
		req.getRequestDispatcher("/listAch.do").forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
