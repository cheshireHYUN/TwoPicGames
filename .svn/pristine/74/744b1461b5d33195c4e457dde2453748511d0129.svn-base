package games.game.dao;

import java.util.List;

import games.game.vo.GameSearchVO;
import games.game.vo.GameVO;

public interface IFreeGameDAO {

	/**
	 * 한시적 무료 게임을 모두 가져옴
	 * @return
	 */
	public List<GameVO> AllFreeGameList();

	
	/**
	 * 클릭한 게임이 한시적 무료 게임일 경우 게임을 찾음.(장르 클릭시, 키워드 검색 시 동일)
	 * @param id 게임 아이디
	 * @return
	 */
	public List<GameVO> AllFreeGameList(GameSearchVO vo);
	
	/**
	 * 게임 이름으로 검색 했을 때 나오게 하는거
	 * @param name 게임 이름
	 * @return
	 */
	public List<GameVO> getGameInfo(String name);
}
