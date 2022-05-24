package orders.cart.service;

import java.util.List;

import orders.cart.vo.CartVO;
import orders.vo.OrderVO;

public interface ICartService {
	
	public String getPrice(String gameId);
	public int insertCart(CartVO vo);
	public int insertCartGame(String gameId);
	
	public List<CartVO> getCartList(String memId);
	
	public String checkExist(CartVO vo);
	
	public int deleteCart(String cartNo);
	public int deleteCartGame(String cartNo);
	
	public List<String> orderList();
	
	public List<CartVO> getSelectCart(String mem_id);
	public String getSelectGame(String cartNo);
	
	
	
}
