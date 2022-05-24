package games.game.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import games.game.vo.GameSearchVO;
import games.game.vo.GameVO;

public class FreeGameDAOImpl implements IFreeGameDAO {
	
	private SqlMapClient smc;
	private static IFreeGameDAO dao;
	
	private FreeGameDAOImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IFreeGameDAO getInstance() {
		if(dao == null) {
			dao = new FreeGameDAOImpl();
		}
		return dao;
	}

	@Override
	public List<GameVO> AllFreeGameList() {
		List<GameVO> list = null;
		
		try {
			list = smc.queryForList("freegame.AllFreeGameList");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<GameVO> AllFreeGameList(GameSearchVO vo) {
		List<GameVO> list = null;
		try {
			list = smc.queryForList("freegame.getFreeGameList",vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<GameVO> getGameInfo(String name) {
		List<GameVO> list = null;
		try {
			list = smc.queryForList("freegame.getFreeGameInfo",name);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
