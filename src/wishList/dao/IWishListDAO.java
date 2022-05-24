package wishList.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import games.game.vo.FreeGameVO;
import games.game.vo.GameVO;
import wishList.vo.WishListVO;

public interface IWishListDAO {
 
		public int insertWishList(SqlMapClient smc,WishListVO wishVO);


		public int deleteWishList(SqlMapClient smc,String wishId);
		

		public List<WishListVO> getWishList(SqlMapClient smc, String memId);
		
		
		public String checkExist(SqlMapClient smc,String wishId);

		
		public GameVO gameDetail (SqlMapClient smc,String gameId);


		public List<WishListVO> getMemberWishList(SqlMapClient smc, String mem_id);
		
		
		public FreeGameVO freeGameInWish (SqlMapClient smc,String gameId);


		public String getWishId(SqlMapClient smc, String memId, String gameId);
		
}
