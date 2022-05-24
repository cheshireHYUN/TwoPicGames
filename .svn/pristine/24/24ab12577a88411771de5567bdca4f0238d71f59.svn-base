package achivement.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import achivement.service.AchServiceImpl;
import achivement.service.IAchService;
import achivement.vo.AchListVO;
import achivement.vo.AchVO;
import games.game.service.GameServiceImpl;
import games.game.service.IGameService;
import games.game.vo.GameVO;
import members.member.service.IMemberService;
import members.member.service.MemberServiceImpl;
import members.member.vo.MemberVO;

@WebServlet("/achivement/listAch.do")
public class ListAchController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String adminId = (String)session.getAttribute("login");
		MemberVO vo = (MemberVO)session.getAttribute("loginMember");

		IAchService achService = AchServiceImpl.getInstance();
		IGameService gameService = GameServiceImpl.getInstance();

		List<AchVO> achList = new ArrayList<AchVO>();
		
		achList = achService.getAllAchList();
		
		if (adminId != null && adminId.equals("admin")) {
			achList = achService.getAllAchList();
			req.setAttribute("achList", achList);
			List<GameVO> gameList = gameService.AllGameList();
			req.setAttribute("gameList", gameList);
			req.getRequestDispatcher("/achs/listAdmin2.jsp").forward(req, resp);

		} else if(adminId == null && vo != null){
			achList = achService.getAllAchList(vo.getMem_id());;
			req.setAttribute("achList", achList);
			List<GameVO> gameList = gameService.AllGameList();
			req.setAttribute("gameList", gameList);
			req.getRequestDispatcher("/achs/listMember.jsp").forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
