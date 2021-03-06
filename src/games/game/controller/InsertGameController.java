package games.game.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import games.comcategory.service.CategoryServiceImpl;
import games.comcategory.service.ICategoryService;
import games.comcategory.vo.CategoryDetailVO;
import games.game.service.GameServiceImpl;
import games.game.service.IGameService;
import games.game.vo.GameVO;
import games.gamedetailcategory.service.GameDetailCategoryServiceImpl;
import games.gamedetailcategory.service.IGameDetailCategoryService;
import games.publisher.service.IPublisherService;
import games.publisher.service.PublisherServiceImpl;
import games.publisher.vo.PublishVO;
import games.publisher.vo.PublisherVO;

@MultipartConfig()
@WebServlet("/InsertGame.do")
public class InsertGameController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		ICategoryService catService = CategoryServiceImpl.getInstance();
		IPublisherService pubService = PublisherServiceImpl.getInstance();
		List<CategoryDetailVO> catList = catService.allCategoryList();
		List<PublisherVO> pubList = pubService.allPubList();
		
		req.setAttribute("catList",catList);
		req.setAttribute("pubList", pubList);

		req.getRequestDispatcher("/games/InsertGame.jsp").forward(req, resp);
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

		// ?????? ??????ID ????????????, ?????? pubID ????????????
		String game_id = gameService.nextGameId();
		
		List<String> game_img = gameService.saveGameImg(req);
		System.out.println(game_img.size());

		// ?????? ??????
		GameVO vo = new GameVO();
		vo.setGame_name(game_name);
		vo.setGame_price(game_price);
		vo.setAge(age);
		vo.setRel_dt(rel_dt);
		vo.setGame_dev(game_dev);
		vo.setGame_img(game_img.get(0));
		vo.setGame_trailer(game_img.get(1));
		gameService.insertGame(vo);

		// ???????????? ??????
		String pub_name = req.getParameter("publisher");
		String isPubId = pubService.isPubId(pub_name);
		PublishVO pv = new PublishVO();
		pv.setGame_id(game_id);
		// ?????? ???????????? ??????????????? ?????? ?????? ??????????????? ?????????????????? ????????????
		if(isPubId == null) {			
			pubService.insertPublisher(pub_name);
			String pub_id = pubService.nextPubId();
			pv.setPub_id(pub_id);
		}else {
			pv.setPub_id(isPubId);
		}
		// ???????????? ????????? ?????? ??????
		pubService.insertPublish(pv);

		// ?????? ??????
		String[] jenre = req.getParameterValues("jenre");
		catService.insertGameDetailCategory(jenre, game_id);
		String[] functions = req.getParameterValues("function");
		catService.insertGameDetailCategory(functions, game_id);
		String[] platform = req.getParameterValues("platform");
		catService.insertGameDetailCategory(platform, game_id);

		String redirectUrl = req.getContextPath() + "/InsertGame.do";

		// ?????? ????????? ????????????(Response Header??? location ????????? ???????????? ?????? ????????? ?????? ???????????? ???)
		// status code??? 302??? ??? Reponseheader?????? ?????? location??? ????????? ??????
		resp.sendRedirect(redirectUrl);
	}
}
