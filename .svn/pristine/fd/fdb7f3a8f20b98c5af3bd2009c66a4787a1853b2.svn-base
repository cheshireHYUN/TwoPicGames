package orders.cart.service;

import java.util.List;

import orders.cart.dao.CartDAOImpl;
import orders.cart.dao.ICartDAO;
import orders.cart.vo.CartVO;
import orders.vo.OrderVO;

public class CartServiceImpl implements ICartService {

	private static ICartService service;
	private ICartDAO dao;
	
	private CartServiceImpl() {
		dao= CartDAOImpl.getInstance();
	}
	
	public static ICartService getInstance() {
		if(service == null) {
			service = new CartServiceImpl();
		}
		return service;
	}
	
	
	
	
	
	@Override
	public int insertCart(CartVO vo) {
		return dao.insertCart(vo);
	}
	@Override
	public int insertCartGame(String gameId) {
		return dao.insertCartGame(gameId);
	}
	@Override
	public String getPrice(String gameId) {
		return dao.getPrice(gameId);
	}

	
	
	
	
	
	
	
	@Override
	public List<CartVO> getCartList(String memId) {
		return dao.getCartList(memId);
	}

	
	
	
	
	@Override
	public String checkExist(CartVO vo) {
		return dao.checkExist(vo);
	}

	
	
	@Override
	public int deleteCart(String cartNo) {
		return dao.deleteCart(cartNo);
	}

	@Override
	public int deleteCartGame(String cartNo) {
		return dao.deleteCartGame(cartNo);
	}

	
	@Override
	public List<String> orderList() {
		return dao.orderList();
	}

	@Override
	public List<CartVO> getSelectCart(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getSelectCart(mem_id);
	}

	@Override
	public String getSelectGame(String cartNo) {
		return dao.getSelectGame(cartNo);
				
	}



	
	
	

	
}
