package wishList.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import games.game.vo.FreeGameVO;
import games.game.vo.GameVO;
import wishList.dao.IWishListDAO;
import wishList.dao.WishListDaoImpl;
import wishList.vo.WishListVO;


public class WishListServiceImpl implements IWishListService {
	
	private static IWishListService wishService;
	private IWishListDAO wishDAO;
	private SqlMapClient smc;
	
	private WishListServiceImpl() {
		wishDAO = WishListDaoImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IWishListService getInstance() {
		if(wishService == null){
			wishService = new WishListServiceImpl();
		}
		return wishService;
	}
	

	@Override
	public int insertWishList(WishListVO wishVO) {
		return wishDAO.insertWishList(smc,wishVO);
	}

	@Override
	public int deleteWishList(String wishId) {
		return wishDAO.deleteWishList(smc,wishId);
	}

	@Override
	public List<WishListVO> getWishList(String memId) {
		return wishDAO.getWishList(smc, memId);
	}

	@Override
	public String checkExist(String wishId) {
		return wishDAO.checkExist(smc, wishId);
	}

	@Override
	public GameVO gameDetail(String gameId) {
		return wishDAO.gameDetail(smc, gameId);
	}

	@Override
	public List<WishListVO> getMemberWishList(String mem_id) {
		// TODO Auto-generated method stub
		return wishDAO.getMemberWishList(smc,mem_id);
	}

	@Override
	public FreeGameVO freeGameInWish(String gameId) {
		return wishDAO.freeGameInWish(smc, gameId);
	}

	@Override
	public String getWishId(String memId, String gameId) {
		return  wishDAO.getWishId(smc, memId, gameId);
	}



}
