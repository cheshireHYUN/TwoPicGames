package games.publisher.service;

import java.util.List;

import games.publisher.dao.IPublisherDAO;
import games.publisher.dao.PublisherDAOImpl;
import games.publisher.vo.PublishVO;
import games.publisher.vo.PublisherVO;

public class PublisherServiceImpl implements IPublisherService {

	private static IPublisherService service;
	private IPublisherDAO dao;

	private PublisherServiceImpl() {
		dao = PublisherDAOImpl.getInstance();
	}

	public static IPublisherService getInstance() {
		if (service == null) {
			service = new PublisherServiceImpl();
		}
		return service;
	}
	
	@Override
	public int insertPublisher(String pub_name) {
		// TODO Auto-generated method stub
		return dao.insertPublisher(pub_name);
	}


	@Override
	public void updatePublisher(PublisherVO pv) {
		// TODO Auto-generated method stub
		dao.updatePublisher(pv);
	}
	
	@Override
	public String nextPubId() {
		// TODO Auto-generated method stub
		return dao.nextPubId();
	}

	@Override
	public int insertPublish(PublishVO vo) {
		// TODO Auto-generated method stub
		return dao.insertPublish(vo);
	}

	@Override
	public void updatePublish(PublishVO pv) {
		// TODO Auto-generated method stub
		dao.updatePublish(pv);
	}

	@Override
	public void deletePublish(String game_id) {
		// TODO Auto-generated method stub
		dao.deletePublish(game_id);
	}

	@Override
	public String isPubId(String pub_name) {
		// TODO Auto-generated method stub
		return dao.isPubId(pub_name);
	}

	@Override
	public List<PublisherVO> allPubList() {
		// TODO Auto-generated method stub
		return dao.allPubList();
	}



}
