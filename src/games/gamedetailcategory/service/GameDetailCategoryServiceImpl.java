package games.gamedetailcategory.service;

import games.gamedetailcategory.dao.GameDetailCategoryDAOImpl;
import games.gamedetailcategory.dao.IGameDetailCategoryDAO;

public class GameDetailCategoryServiceImpl implements IGameDetailCategoryService {

	private IGameDetailCategoryDAO dao;
	private static IGameDetailCategoryService service;
	
	private GameDetailCategoryServiceImpl() {
		dao = GameDetailCategoryDAOImpl.getInstance();
	}
	
	public static IGameDetailCategoryService getInstance() {
		if(service == null) {
			service = new GameDetailCategoryServiceImpl();
		}
		return service;
	}

	@Override
	public int insertGameDetailCategory(String[] category, String game_id) {
		// TODO Auto-generated method stub
		return dao.insertGameDetailCategory(category, game_id);
	}

	@Override
	public void deleteGameDetailCagetory(String game_id) {
		// TODO Auto-generated method stub
		dao.deleteGameDetailCagetory(game_id);
	}
}
