package orders.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import games.game.vo.GameVO;
import members.member.vo.MemberVO;
import orders.vo.OrderVO;

public class OrderDaoImpl implements IOrderDao {

	private static IOrderDao dao;
	private SqlMapClient smc;

	private OrderDaoImpl() {
		smc = SqlMapClientFactory.getInstance();
	}

	public static IOrderDao getInstance() {
		if (dao == null) {
			dao = new OrderDaoImpl();
		}
		return dao;
	}

	@Override
	public List<GameVO> getGamesOfMyCart(String memId) {

		List<GameVO> gamesOfCartList = new ArrayList<GameVO>();

		try {

			gamesOfCartList = (List<GameVO>) smc.queryForList("orders.getCartGameId", memId);

		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원의 장바구니에 있는 모든 게임 조회중 예외 발생!", ex);
		}

		return gamesOfCartList;
	}

	// gameId는 당연히 여러개임... 그 Id가 모두 들어가서 각 Id에 해당하는 vo들의 리스트가 만들어져야...
	// 컨트롤러에서 반복문 돌려도 되나? => 매번 새 리스트 만드는거니까 안됨..
	// 그럼 여기서 돌려보자 한번...

	// gameId는 당연히 여러개임... 그 Id가 모두 들어가서 각 Id에 해당하는 vo들의 리스트가 만들어져야...
	// 컨트롤러에서 반복문 돌려도 되나? => 매번 새 리스트 만드는거니까 안됨..
	// 그럼 여기서 돌려보자 한번...
	@Override
	public GameVO getGamesInfo(String gameId) {

		GameVO vo = new GameVO();

		try {
				vo = (GameVO) smc.queryForObject("orders.getGameInfo", gameId);

		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원이 구매하려는 게임의 기타정보들을 불러오던 중 예외 발생!", ex);
		}
		return vo;
	}

	@Override
	public MemberVO MemInfo(String memId) {

		MemberVO vo = new MemberVO();

		try {

			vo = (MemberVO) smc.queryForObject("orders.getMemInfo", memId);

		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("결제를 위한 회원 개인정보 조회중 예외 발생!", ex);
		}

		return vo;
	}

	@Override
	public List<String> getOrderedGameId(String memId) {
		List<String> OrderedGameIdList = new ArrayList<String>();

		try {

			OrderedGameIdList = (List<String>) smc.queryForList("orders.getOrderedGameId", memId);

		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원이 구매완료한 게임아이디 조회중 예외 발생!", ex);
		}

		return OrderedGameIdList;
	}

	@Override
	public void insertOrder(String cartNo) {
		// TODO Auto-generated method stub
		try {
			smc.update("orders.insertOrders", cartNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	@Override
	public String getCartNo(String gameId, String memId) {
		String cartNo = null;
		Map map = new HashMap();
		map.put("gameId", gameId);
		map.put("memId", memId);
		try {
			System.out.println("null나와라 뚝딱   :   "+cartNo);
			cartNo = (String) smc.queryForObject("orders.getCartNo",map);
			System.out.println("orders.getCartNo 쿼리 제대로 실행되니?????? => "+cartNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartNo;
	}
	
	
	@Override
	public String orderExist(String cartNo) {
		String orderExist = "";
		
		try {
					
			orderExist = (String) smc.queryForObject("orders.orderExist",cartNo);

				} catch (SQLException ex) {
					ex.printStackTrace();
					throw new RuntimeException("orderExist 조회중 예외!",ex);
				}
		
		return orderExist;
	}

	@Override
	public List<OrderVO> getOrderList(String memId) {
		List<OrderVO> orderList = new ArrayList<OrderVO>();
		
		try {
			orderList = (List<OrderVO>) smc.queryForList("orders.getOrderList", memId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("전체 주문사항 조회 중 예외발생!", ex);
		}
		return orderList;
	}

}
