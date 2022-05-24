package orders.cart.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import orders.cart.vo.CartVO;

public class CartDAOImpl implements ICartDAO {

	private static ICartDAO dao;
	private SqlMapClient smc;
	
	private CartDAOImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static ICartDAO getInstance() {
		if(dao == null) {
			dao= new CartDAOImpl();
		}
		return dao;
	}
	
	
	
	
	//////////////////////////인서트 관련/////////////////////////////////////////////////////////
	
	@Override
	public int insertCart(CartVO vo) {
		
		int cnt =0;
		try {
			cnt = smc.update("cart.insertCart", vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int insertCartGame(String gameId) {
		// TODO Auto-generated method stub
		int cnt =0;
		try {
			cnt = (int) smc.update("cart.insertGameCart",gameId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public String getPrice(String gameId) {
		String price= null;
		
		try {
			price = (String) smc.queryForObject("cart.getPrice",gameId);
			System.out.println("게임의 가격 찾아오기 : "+price);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return price;
	}

	
	
	////////////////////////////조회 관련/////////////////////////////////////////////////////////
	
	
	@Override
	public List<CartVO> getCartList(String mem_id) {
		List<CartVO> cartList = new ArrayList<CartVO>();
		
		try {
					
			cartList = smc.queryForList("cart.getCart",mem_id);

				} catch (SQLException ex) {
					ex.printStackTrace();
					throw new RuntimeException("회원의 장바구니 조회중 예외 발생!",ex);
				}
		
		return cartList;
	}

	
	@Override
	public List<String> orderList() {
		
		List<String> orderLsit = null;
		
		try {
					
			orderLsit = (List<String>) smc.queryForList("cart.orderList");

				} catch (SQLException ex) {
					ex.printStackTrace();
					throw new RuntimeException("주문완료한 카트넘버 쿼리해오는중 예외 발생!",ex);
				}
		
		return orderLsit;
	}
	
	
	///////////////////////////삭제 관련/////////////////////////////////////////////////////////
	
	
	// 삭제할 cartNo를 검색하는 메소드
	@Override
	public String checkExist(CartVO vo) {
		
		String check = null;
		
		try {
					
			check = (String) smc.queryForObject("cart.checkExist",vo);

				} catch (SQLException ex) {
					ex.printStackTrace();
					throw new RuntimeException("카트넘버 쿼리해오는중 예외 발생!",ex);
				}
		
		return check;
	}

	
	
	// cartNo를 이용해 장바구니목록에서 삭제하는 메소드
	// 두 테이블 모두 삭제해야하니 delete도 두번
	// 심지어 cartNo가 상당히 많을수도 있으니 for문을 이용해 List안에 들어있는 cartNo의 갯수만큼 반복문 실행
	@Override
	public int deleteCart(String cartNo) {
		int cnt = 0;

		try {
			cnt = smc.delete("cart.deleteCart",cartNo);
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("Cart테이블 게임 삭제중 예외 발생",ex);
		}
		
		return cnt;
	}

	@Override
	public int deleteCartGame(String cartNo) {
		int cnt = 0;

		try {
			cnt = smc.delete("cart.deleteCartGame",cartNo);
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("CartGme테이블 게임 삭제중 예외 발생",ex);
		}
		
		return cnt;
	}

	
	
	@Override
	public List<CartVO> getSelectCart(String mem_id) {
		List<CartVO> selectCartList = new ArrayList<CartVO>();
		
		try {
					
			selectCartList = smc.queryForList("cart.selectCart",mem_id);

				} catch (SQLException ex) {
					ex.printStackTrace();
					throw new RuntimeException("회원이 주문완료한 게임을 제외한 장바구니목록 조회중 예외발생!",ex);
				}
		
		return selectCartList;
	}

	@Override
	public String getSelectGame(String cartNo) {
		String selectGame = "";
		
		try {
					
			selectGame = (String) smc.queryForObject("cart.getSelectGameId",cartNo);
			System.out.println("셀렉트겜네임 쿼리 잘되나 >>"+selectGame);

				} catch (SQLException ex) {
					ex.printStackTrace();
					throw new RuntimeException("주문완료 제외 장바구니의 게임아이디 조회중 예외!",ex);
				}
		
		return selectGame;
	}
	
	

	
	
	

}
