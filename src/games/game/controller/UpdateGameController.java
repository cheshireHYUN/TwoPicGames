package games.game.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
@WebServlet("/GameUpdateAdmin.do")
public class UpdateGameController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		IGameService gameService = GameServiceImpl.getInstance();
		IPublisherService pubService = PublisherServiceImpl.getInstance();
		IGameDetailCategoryService catService = GameDetailCategoryServiceImpl.getInstance();

		String game_id = req.getParameter("updateGameId");
		String game_name = req.getParameter("title");
		String game_price = req.getParameter("price");
		String age = req.getParameter("age");
		String rel_dt = req.getParameter("date");
		String game_dev = req.getParameter("developer");

		List<String> game_img = gameService.saveGameImg(req);

		// 게임 수정
		GameVO vo = new GameVO();
		vo.setGame_id(game_id);
		vo.setGame_name(game_name);
		vo.setGame_price(game_price);
		vo.setAge(age);
		vo.setRel_dt(rel_dt);
		vo.setGame_dev(game_dev);
		vo.setGame_img(game_img.get(0));
		vo.setGame_trailer(game_img.get(1));
		gameService.updateGame(vo);

		// 퍼블리셔 수정
		String pub_name = req.getParameter("publisher");
		
		System.out.println("퍼블리셔 : " + pub_name);
		String isPubId = pubService.isPubId(pub_name);
		if (isPubId != null) {
			List<PublisherVO> pubList = pubService.allPubList();
			for (int i = 0; i < pubList.size(); i++) {
				if (pubList.get(i).getPub_name().equals(pub_name)) {
					// 선택한 퍼블리셔가 있으면 업데이트를 함
					PublisherVO publisherVO = new PublisherVO();
					publisherVO.setPub_id(pubList.get(i).getPub_id());
					publisherVO.setPub_name(pub_name);
					pubService.updatePublisher(publisherVO);
					// 퍼블리쉬 관계도 업데이트
					PublishVO pubVO = new PublishVO();
					pubVO.setPub_id(pubList.get(i).getPub_id());
					pubVO.setGame_id(game_id);
					pubService.updatePublish(pubVO);
					break;
				}
			}
		}else {
			// 입력한 퍼블리셔가 없을 경우 추가하는 방식
			pubService.insertPublisher(pub_name);
			isPubId = pubService.isPubId(pub_name);
			PublishVO pubVO = new PublishVO();
			pubVO.setGame_id(game_id);
			
		}
		
		// 해당 게임이 들어있는 카테고리 다삭제
		catService.deleteGameDetailCagetory(game_id);
		// 장르 추가
		String[] jenre = req.getParameterValues("jenre");
		catService.insertGameDetailCategory(jenre, game_id);
		String[] functions = req.getParameterValues("function");
		catService.insertGameDetailCategory(functions, game_id);
		String[] platform = req.getParameterValues("platform");
		catService.insertGameDetailCategory(platform, game_id);

		String redirectUrl = req.getContextPath() + "/InsertGame.do";

		// 요청 방향을 바꾸어줌(Response Header에 location 값으로 넣어주어 해당 링크로 다시 돌아가게 함)
		// status code가 302일 때 Reponseheader에는 항상 location이 들어가 있음
		resp.sendRedirect(redirectUrl);
	}

}
