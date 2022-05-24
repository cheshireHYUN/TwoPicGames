package orders.cart.dao;

import java.util.List;


import orders.cart.vo.CartVO;
import orders.vo.OrderVO;

public interface ICartDAO {
	
	public int insertCart(CartVO vo);
	
	public int insertCartGame(String gameId);

	public String getPrice(String gameId);
	
	public List<CartVO> getCartList(String mem_id);
	
	public String checkExist(CartVO vo);
	
	public int deleteCart(String cartNo);
	public int deleteCartGame(String cartNo);

	public List<String> orderList();
	
	public List<CartVO> getSelectCart(String mem_id);
	public String getSelectGame(String cartNo);
	
	
}
