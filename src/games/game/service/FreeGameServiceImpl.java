package games.game.service;

import java.util.List;

import games.game.dao.FreeGameDAOImpl;
import games.game.dao.IFreeGameDAO;
import games.game.vo.GameSearchVO;
import games.game.vo.GameVO;

public class FreeGameServiceImpl implements IFreeGameService {

	private static IFreeGameService service;
	private IFreeGameDAO dao;
	
	private FreeGameServiceImpl(){
		dao = FreeGameDAOImpl.getInstance();
	}
	
	public static IFreeGameService getInstance() {
		if(service == null) {
			service = new FreeGameServiceImpl();
		}
		return service;
	}
	
	@Override
	public List<GameVO> AllFreeGameList() {
		// TODO Auto-generated method stub
		return dao.AllFreeGameList();
	}

	@Override
	public List<GameVO> AllFreeGameList(GameSearchVO vo) {
		// TODO Auto-generated method stub
		return dao.AllFreeGameList(vo);
	}

	@Override
	public List<GameVO> getGameInfo(String name) {
		// TODO Auto-generated method stub
		return dao.getGameInfo(name);
	}

}
