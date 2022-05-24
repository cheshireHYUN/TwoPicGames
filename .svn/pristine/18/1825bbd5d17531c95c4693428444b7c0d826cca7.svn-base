package games.gamedetailcategory.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import games.gamedetailcategory.vo.GameDetailCategoryVO;

public class GameDetailCategoryDAOImpl implements IGameDetailCategoryDAO {

	private SqlMapClient smc;
	private static IGameDetailCategoryDAO dao;
	
	private GameDetailCategoryDAOImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IGameDetailCategoryDAO getInstance() {
		if(dao == null) {
			dao = new GameDetailCategoryDAOImpl();
		}
		return dao;
	}
	
	@Override
	public int insertGameDetailCategory(String[] category, String game_id) {
		// TODO Auto-generated method stub
		int cnt = 0;
		GameDetailCategoryVO vo = new GameDetailCategoryVO();
		for (int i = 0; i < category.length; i++) {
			try {
				vo.setDetail_id(category[i]);
				vo.setGame_id(game_id);
				smc.update("gamedetailcategory.insertGameDetailCategory", vo);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return cnt;
	}

	@Override
	public void deleteGameDetailCagetory(String game_id) {
		// TODO Auto-generated method stub
		try {
			smc.delete("gamedetailcategory.deleteGameDetailCagetory",game_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
