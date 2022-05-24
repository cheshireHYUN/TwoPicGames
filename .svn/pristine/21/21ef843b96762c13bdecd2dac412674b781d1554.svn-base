package orders.dao;

import java.util.List;

import games.game.vo.GameVO;
import members.member.vo.MemberVO;
import orders.vo.OrderVO;

public interface IOrderDao {
	
	// 주문창
	public List<String> getOrderedGameId(String memId);
	public List<GameVO> getGamesOfMyCart(String memId);
	public GameVO getGamesInfo(String gameId);
	public String getCartNo(String gameId, String memId);
	
	// 카카오페이
	public MemberVO MemInfo(String memId);

	public void insertOrder(String cartNo);
	
	public String orderExist(String cartNo);
	
	// 주문내역
	public List<OrderVO> getOrderList(String memId);
	
	
}
