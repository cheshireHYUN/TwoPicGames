package games.game.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import games.game.service.FreeGameServiceImpl;
import games.game.service.GameServiceImpl;
import games.game.service.IFreeGameService;
import games.game.service.IGameService;
import games.game.vo.FreeGameVO;
import games.game.vo.GameVO;

@WebServlet("/FreeGameAdmin.do")
public class FreeGameAdmin extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		IGameService gameService = GameServiceImpl.getInstance();
		IFreeGameService freeGameService = FreeGameServiceImpl.getInstance();
		
		List<GameVO> list = gameService.AllGameList();
		List<GameVO> freeList = freeGameService.AllFreeGameList();
		req.setAttribute("list", list);
		req.setAttribute("freeList", freeList);
		
		req.getRequestDispatcher("/games/FreeGame.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		IGameService gameService = GameServiceImpl.getInstance();
		
		String game_id = req.getParameter("game_id");
		String fgm_sdt = req.getParameter("fgm_sdt");
		String fgm_fdt = req.getParameter("fgm_fdt");
		int cnt = 0;
		String isFgmId = gameService.IsFgmId(game_id);
		if(isFgmId == null) {
			String freeGameId = String.valueOf(Integer.parseInt(gameService.nextFreeGameId()) + 1);
			FreeGameVO vo = new FreeGameVO();
			vo.setFgm_id(freeGameId);
			vo.setGame_id(game_id);
			vo.setFgm_sdt(fgm_sdt);
			vo.setFgm_fdt(fgm_fdt);
			cnt = gameService.insertFreeGame(vo);
		}
		
		if(cnt > 0) {			
			req.setAttribute("msg", "성공");
		}else {
			req.setAttribute("msg", "실패");
		}
		String redirectUrl = req.getContextPath() + "/GameListAdmin.do";

		// 요청 방향을 바꾸어줌(Response Header에 location 값으로 넣어주어 해당 링크로 다시 돌아가게 함)
		// status code가 302일 때 Reponseheader에는 항상 location이 들어가 있음
		resp.sendRedirect(redirectUrl);
	}
}
