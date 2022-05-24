package games.game.controller;

import java.io.IOException;
import java.security.PublicKey;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import games.comcategory.service.CategoryServiceImpl;
import games.comcategory.service.ICategoryService;
import games.comcategory.vo.CategoryDetailVO;
import games.comcategory.vo.CategoryVO;
import games.game.dao.IFreeGameDAO;
import games.game.service.FreeGameServiceImpl;
import games.game.service.GameServiceImpl;
import games.game.service.IFreeGameService;
import games.game.service.IGameService;
import games.game.vo.FreeGameVO;
import games.game.vo.GameDetailVO;
import games.game.vo.GameVO;
import games.gamedetailcategory.service.GameDetailCategoryServiceImpl;
import games.gamedetailcategory.service.IGameDetailCategoryService;
import games.publisher.service.IPublisherService;
import games.publisher.service.PublisherServiceImpl;
import games.publisher.vo.PublishVO;
import games.publisher.vo.PublisherVO;

@MultipartConfig()
@WebServlet("/GameListAdmin.do")
public class GameListAdmin extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		IGameService gameService = GameServiceImpl.getInstance();
		IFreeGameService freeGameService = FreeGameServiceImpl.getInstance();
		
		List<GameVO> gameList = gameService.AllGameList();
		List<GameVO> freeGameList = freeGameService.AllFreeGameList();
		ICategoryService catService = CategoryServiceImpl.getInstance();
		IPublisherService pubService = PublisherServiceImpl.getInstance();
		List<CategoryDetailVO> catList = catService.allCategoryList();
		List<PublisherVO> pubList = pubService.allPubList();
		
		req.setAttribute("catList",catList);
		req.setAttribute("pubList", pubList);
		req.setAttribute("gameList",gameList);
		req.setAttribute("freeGameList", freeGameList);

		req.getRequestDispatcher("/games/gamesListAdmin.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		IGameService gameService = GameServiceImpl.getInstance();
		IPublisherService pubService = PublisherServiceImpl.getInstance();
		IGameDetailCategoryService catService = GameDetailCategoryServiceImpl.getInstance();

		String game_name = req.getParameter("title");
		String game_price = req.getParameter("price");
		String age = req.getParameter("age");
		String rel_dt = req.getParameter("date");
		String game_dev = req.getParameter("developer");

		// 다음 게임ID 받아오기, 다음 pubID 받아오기
		String game_id = gameService.nextGameId();
		
		List<String> game_img = gameService.saveGameImg(req);

		// 게임 추가
		GameVO vo = new GameVO();
		vo.setGame_name(game_name);
		vo.setGame_price(game_price);
		vo.setAge(age);
		vo.setRel_dt(rel_dt);
		vo.setGame_dev(game_dev);
		vo.setGame_img(game_img.get(0));
		vo.setGame_trailer(game_img.get(1));
		gameService.insertGame(vo);

		// 퍼블리셔 추가
		String pub_name = req.getParameter("publisher");
		String isPubId = pubService.isPubId(pub_name);
		PublishVO pv = new PublishVO();
		pv.setGame_id(game_id);
		// 이미 존재하는 퍼블리셔일 경우 해당 퍼블리셔를 추가하지않고 가져온다
		if(isPubId == null) {			
			pubService.insertPublisher(pub_name);
			String pub_id = pubService.nextPubId();
			pv.setPub_id(pub_id);
		}else {
			pv.setPub_id(isPubId);
		}
		// 퍼블리쉬 테이블 내용 추가
		pubService.insertPublish(pv);

		// 장르 추가
		String[] jenre = req.getParameterValues("jenre");
		catService.insertGameDetailCategory(jenre, game_id);
		String[] functions = req.getParameterValues("function");
		catService.insertGameDetailCategory(functions, game_id);
		String[] platform = req.getParameterValues("platform");
		catService.insertGameDetailCategory(platform, game_id);

		String redirectUrl = req.getContextPath() + "/GameListAdmin.do";

		// 요청 방향을 바꾸어줌(Response Header에 location 값으로 넣어주어 해당 링크로 다시 돌아가게 함)
		// status code가 302일 때 Reponseheader에는 항상 location이 들어가 있음
		resp.sendRedirect(redirectUrl);

	}
}
