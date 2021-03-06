package orders.service;

import java.util.List;

import games.game.vo.GameVO;
import members.member.vo.MemberVO;
import orders.dao.IOrderDao;
import orders.dao.OrderDaoImpl;
import orders.vo.OrderVO;

public class OrderServiceImpl implements IOrderService {

	private static IOrderService service;
	private IOrderDao dao;

	private OrderServiceImpl() {
		dao = OrderDaoImpl.getInstance();
	}

	public static IOrderService getInstance() {
		if (service == null) {
			service = new OrderServiceImpl();
		}
		return service;
	}

	@Override
	public List<GameVO> getGamesOfMyCart(String memId) {
		return dao.getGamesOfMyCart(memId);
	}

	@Override
	public GameVO getGamesInfo(String gameId) {
		return dao.getGamesInfo(gameId);
	}

	@Override
	public MemberVO MemInfo(String memId) {
		return dao.MemInfo(memId);
	}

	@Override
	public List<String> getOrderedGameId(String memId) {
		return dao.getOrderedGameId(memId);
	}

	@Override
	public void insertOrder(String cartNo) {
		// TODO Auto-generated method stub
		dao.insertOrder(cartNo);
	}


	@Override
	public String getCartNo(String gameId, String memId) {
		return dao.getCartNo(gameId, memId);
	}
	
	@Override
	public String orderExist(String cartNo) {
		return dao.orderExist(cartNo);
	}

	@Override
	public List<OrderVO> getOrderList(String memId) {
		return dao.getOrderList(memId);
	}

}
