package games.game.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import games.comcategory.service.CategoryServiceImpl;
import games.comcategory.service.ICategoryService;
import games.comcategory.vo.CategoryDetailVO;
import games.game.dao.IFreeGameDAO;
import games.game.service.FreeGameServiceImpl;
import games.game.service.GameServiceImpl;
import games.game.service.IFreeGameService;
import games.game.service.IGameService;
import games.game.vo.GameSearchVO;
import games.game.vo.GameVO;

@WebServlet("/Game.do")
public class GameController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IGameService gameService = GameServiceImpl.getInstance();
		ICategoryService catService = CategoryServiceImpl.getInstance();
		IFreeGameService freeGameService = FreeGameServiceImpl.getInstance();

		req.setCharacterEncoding("UTF-8");
		String dId = req.getParameter("detail_id");
		String dId1 = req.getParameter("detail_id1");
		String dId2 = req.getParameter("detail_id2");
		String gameName = req.getParameter("gameName");
		String gamePrice = req.getParameter("gamePrice");
		String detailName = req.getParameter("detail_name");
		String detailName1 = req.getParameter("detail_name1");
		String detailName2 = req.getParameter("detail_name2");

		List<GameVO> list;
		List<GameVO> freeList;
		List<GameVO> allList;
		List<GameVO> allFreeList;
		// 화면이 켜질때 모든 게임 출력할 때
		if (dId == null && gameName == null && gamePrice == null && detailName == null) {
			list = gameService.AllGameList();
			freeList = freeGameService.AllFreeGameList();
			req.setAttribute("list", list);
			req.setAttribute("freeList", freeList);
		}
		// 해당 게임의 장르로 검색을 할때 + 가격으로 검색(클릭시) + 키워드 검색시
		else if (gameName == null) {
			GameSearchVO vo = new GameSearchVO();
			vo.setDetail_id1(dId);
			vo.setDetail_id2(dId1);
			vo.setDetail_id3(dId2);
			vo.setGame_price(gamePrice);
			vo.setDetail_name1(detailName);
			vo.setDetail_name2(detailName1);
			vo.setDetail_name3(detailName2);
			list = gameService.AllGameList(vo);

			// 가격 장르 선택시 무료이면 무료게임 전체다 출력

			freeList = freeGameService.AllFreeGameList();
			req.setAttribute("freeList", freeList);

			allList = gameService.AllGameList();
			allFreeList = freeGameService.AllFreeGameList();
			req.setAttribute("list", list);
			req.setAttribute("allList", allList);
			req.setAttribute("allFreeList", allFreeList);
		}

		// 해당 게임의 이름으로 검색할 때
		else if (dId == null && gameName != null) {
			list = gameService.getGameInfo(gameName);
			freeList = freeGameService.getGameInfo(gameName);
			allList = gameService.AllGameList();
			allFreeList = freeGameService.AllFreeGameList();
			req.setAttribute("list", list);
			req.setAttribute("freeList", freeList);
			req.setAttribute("allList", allList);
			req.setAttribute("allFreeList", allFreeList);
		}
		List<CategoryDetailVO> category = catService.allCategoryList();

		req.setAttribute("category", category);
		req.getRequestDispatcher("games/allGame.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
