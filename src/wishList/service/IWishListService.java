package wishList.service;

import java.util.List;

import games.game.vo.FreeGameVO;
import games.game.vo.GameVO;
import wishList.vo.WishListVO;

public interface IWishListService {
	
	/** WishListVO에 담은 자료를 DB에 insert하는 메소드
	 * @param wv insert할 자료가 저장된 VO객체
	 * @return 성공시 1 실패시 0 반환
	 */
	public int insertWishList(WishListVO wishVO);

	
	/** 게임Id를 매개변수로 받아서 해당 게임을 위시리스트에서 삭제
	 * @param gameId 삭제할 게임ID
	 * @return 작업성공:1, 작업실패:0
	 */
	public int deleteWishList(String wishId);
	

	
	public List<WishListVO> getWishList(String memId);
	
	
	public String checkExist(String wishId);
	
	public GameVO gameDetail (String gameId);


	public List<WishListVO> getMemberWishList(String mem_id);
	
	
	public FreeGameVO freeGameInWish(String gameId);


	public String getWishId(String memId, String gameId);
	
}
