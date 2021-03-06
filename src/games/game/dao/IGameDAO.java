package games.game.dao;

import java.util.List;

import games.game.vo.FreeGameVO;
import games.game.vo.GameDetailVO;
import games.game.vo.GameSearchVO;
import games.game.vo.GameVO;
import games.publisher.vo.PublishVO;
import members.member.vo.GameCodeVO;

public interface IGameDAO {

	public List<GameVO> AllGameList();

	public List<GameVO> AllGameList(GameSearchVO vo);

	public List<GameVO> getGameInfo(String name);

	public List<GameDetailVO> getDetailGameInfo(String id);

	public int insertGame(GameVO vo);
	
	public int updateGame(GameVO vo);
	
	public String nextGameId();

	public void deleteGame(String game_id);

	public int insertFreeGame(FreeGameVO vo);

	public String IsFgmId(String game_id);

	public List<String> getCodeOrderGame(String mem_id);

	public void updateGameCode(GameCodeVO codeVO);

	public String nextFreeGameId();
	
}
