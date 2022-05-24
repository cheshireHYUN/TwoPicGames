package games.game.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import games.game.vo.FreeGameVO;
import games.game.vo.GameDetailVO;
import games.game.vo.GameSearchVO;
import games.game.vo.GameVO;
import games.gamedetailcategory.vo.GameDetailCategoryVO;
import games.publisher.vo.PublishVO;
import members.member.vo.GameCodeVO;

public class GameDAOImpl implements IGameDAO {

	private SqlMapClient smc;
	private static IGameDAO dao;

	private GameDAOImpl() {
		smc = SqlMapClientFactory.getInstance();
	}

	public static IGameDAO getInstance() {
		if (dao == null) {
			dao = new GameDAOImpl();
		}
		return dao;
	}

	/**
	 * 전체 게임 데이터를 보여준다
	 */
	@Override
	public List<GameVO> AllGameList() {
		List<GameVO> list = null;
		try {
			list = smc.queryForList("game.AllGameList");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 장르, 기능 , 플랫폼을 선택시 조건에 해당하는 게임 데이터를 보여줌
	 */
	@Override
	public List<GameVO> AllGameList(GameSearchVO vo) {
		List<GameVO> list = null;
		try {
			list = smc.queryForList("game.getGameList", vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	/**
	 * 검색시 넣은 이름을 통해 게임 데이터를 가져옴
	 */
	@Override
	public List<GameVO> getGameInfo(String name) {
		List<GameVO> list = null;
		try {
			list = smc.queryForList("game.getGameInfo", name);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 게임 클릭시 해당 게임의 상세 데이터를 보여줌
	 */
	@Override
	public List<GameDetailVO> getDetailGameInfo(String id) {
		// TODO Auto-generated method stub
		List<GameDetailVO> list = null;
		try {
			list = smc.queryForList("game.getDetailGameInfo", id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int insertGame(GameVO vo) {
		int cnt = 0;

		try {
			cnt = smc.update("game.insertGame", vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public String nextGameId() {
		// TODO Auto-generated method stub
		String game_id = null;

		try {
			game_id = (String) smc.queryForObject("game.nextGameId");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return game_id;
	}

	@Override
	public int updateGame(GameVO vo) {
		int cnt = 0;

		try {
			cnt = smc.update("game.updateGame", vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public void deleteGame(String game_id) {
		// TODO Auto-generated method stub
		try {
			smc.delete("game.deleteGame", game_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public int insertFreeGame(FreeGameVO vo) {
		int cnt = 0;
		try {
			cnt = smc.update("game.insertFreeGame", vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public String IsFgmId(String game_id) {
		// TODO Auto-generated method stub
		String isFgmId = null;

		try {
			isFgmId = (String) smc.queryForObject("game.IsFgmId", game_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isFgmId;
	}

	@Override
	public List<String> getCodeOrderGame(String mem_id) {
		List<String> list = null;

		try {
			list = smc.queryForList("game.getCodeOrderGame", mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public void updateGameCode(GameCodeVO codeVO) {
		// TODO Auto-generated method stub
		try {
			smc.update("game.updateGameCode", codeVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String nextFreeGameId() {
		String freeGameId = null;

		try {
			freeGameId = (String) smc.queryForObject("game.nextFreeGameId");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return freeGameId;
	}

}
