package wishList.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import games.game.vo.FreeGameVO;
import games.game.vo.GameVO;
import wishList.vo.WishListVO;

public class WishListDaoImpl implements IWishListDAO{
	
	private static IWishListDAO wishDAO;
	
	private WishListDaoImpl() {
		
	}
	
	public static IWishListDAO getInstance() {
		if(wishDAO==null) {
			wishDAO = new WishListDaoImpl();
		}
		return wishDAO;
	}

	
	
	@Override
	public int insertWishList(SqlMapClient smc,WishListVO wishVO) {
		
		int cnt = 0;

		try {
			cnt = smc.update("wishList.insertWishList",wishVO);
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("위시리스트에 게임 추가중 예외 발생",ex);
		}
		
		return cnt;
	}

	
	
	
	@Override
	public int deleteWishList(SqlMapClient smc, String wishId) {
		
		int cnt = 0;

		try {
			cnt = smc.delete("wishList.deleteWishList",wishId);
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("위시리스트에 게임 삭제중 예외 발생",ex);
		}
		
		return cnt;
	}
	
	
	
	

	@Override
	public List<WishListVO> getWishList(SqlMapClient smc, String memId) {
		List<WishListVO> wishLists = new ArrayList<WishListVO>();
		
		try {
					
			wishLists = (List<WishListVO>) smc.queryForList("wishList.getWishList",memId);

				} catch (SQLException ex) {
					ex.printStackTrace();
					throw new RuntimeException("회원의 주문완료된 게임을 제외한 위시리스트 조회중 예외 발생!",ex);
				}
		
		return wishLists;
	}
	
	

	@Override
	public String checkExist(SqlMapClient smc, String wishId) {
		
		String check = null;

		try {
			check = (String) smc.queryForObject("wishList.checkExist",wishId);
			System.out.println(check);
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("위시리스트 게임존재 체크중 예외발생",ex);
		}
		
		return check;
	}

	@Override
	public GameVO gameDetail(SqlMapClient smc, String gameId) {
		
		GameVO gameDetails = null;
		
		try {
					
			gameDetails = (GameVO) smc.queryForObject("wishList.gameDetailList",gameId);

				} catch (SQLException ex) {
					ex.printStackTrace();
					throw new RuntimeException("위시리스트의 게임디테일 조회중 예외 발생!",ex);
				}
		
		return gameDetails;
	}

	@Override
	public List<WishListVO> getMemberWishList(SqlMapClient smc, String mem_id) {
		// TODO Auto-generated method stub
		List<WishListVO> list = null;
		
		try {
			list = smc.queryForList("wishList.getMemberWishList",mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return list;
	}

	@Override
	public FreeGameVO freeGameInWish(SqlMapClient smc, String gameId) {
		FreeGameVO freeGame = new FreeGameVO();

		try {
			freeGame = (FreeGameVO) smc.queryForObject("wishList.freeGameInWish",gameId);
			System.out.println("freeGame : "+freeGame);
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("위시리스트 게임존재 체크중 예외발생",ex);
		}
		
		return freeGame;
	}

	@Override
	public String getWishId(SqlMapClient smc, String memId, String gameId) {
		String wishId = null;

		try {
			wishId = (String) smc.queryForObject("wishList.getWishId",memId,gameId);
			System.out.println(wishId);
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("멤버아이디아 겜아이디에 해당하는 위시아이디 가져오는쿼리 예외발생",ex);
		}
		
		return wishId;
	}



}
