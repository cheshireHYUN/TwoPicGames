package games.publisher.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import games.publisher.vo.PublishVO;
import games.publisher.vo.PublisherVO;

public class PublisherDAOImpl implements IPublisherDAO {

	private SqlMapClient smc;
	private static IPublisherDAO dao;
	
	private PublisherDAOImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IPublisherDAO getInstance() {
		if(dao == null) {
			dao = new PublisherDAOImpl();
		}
		return dao;
	}
	
	@Override
	public int insertPublisher(String pub_name) {
		int cnt = 0;

		try {
			cnt = smc.update("publisher.insertPublisher", pub_name);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}
	
	@Override
	public int insertPublish(PublishVO vo) {
		// TODO Auto-generated method stub
		int cnt = 0;

		try {
			cnt = smc.update("publisher.insertPublish", vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}
	
	@Override
	public String nextPubId() {
		// TODO Auto-generated method stub
		String pub_id = null;
		try {
			pub_id = (String) smc.queryForObject("publisher.nextPubId");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return pub_id;
	}

	@Override
	public void updatePublisher(PublisherVO pv) {
		// TODO Auto-generated method stub
		try {
			smc.update("publisher.updatePublisher",pv);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void updatePublish(PublishVO pv) {
		// TODO Auto-generated method stub
		try {
			smc.update("publisher.updatePublish",pv);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void deletePublish(String game_id) {
		// TODO Auto-generated method stub
		try {
			smc.delete("publisher.deletePublish",game_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String isPubId(String pub_name) {
		// TODO Auto-generated method stub
		String isPubId = null;
		
		try {
			isPubId = (String) smc.queryForObject("publisher.isPubId",pub_name);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isPubId;
	}

	@Override
	public List<PublisherVO> allPubList() {
		// TODO Auto-generated method stub
		List<PublisherVO> list = null;
		try {
			list = smc.queryForList("publisher.allPubList");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
