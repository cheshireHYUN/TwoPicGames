package games.publisher.dao;

import java.util.List;

import games.publisher.vo.PublishVO;
import games.publisher.vo.PublisherVO;

public interface IPublisherDAO {
	
	public int insertPublisher(String pub_name);

	public int insertPublish(PublishVO vo);

	public String nextPubId();

	public void updatePublisher(PublisherVO pv);

	public void updatePublish(PublishVO pv);

	public void deletePublish(String game_id);

	public String isPubId(String pub_name);

	public List<PublisherVO> allPubList();
}
