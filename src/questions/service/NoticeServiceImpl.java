package questions.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import questions.dao.INoticeDao;
import questions.dao.NoticeDaoImpl;
import questions.vo.NoticeVO;

public class NoticeServiceImpl implements INoticeService {
	
	private static NoticeServiceImpl NotService;
	private SqlMapClient smc;
	private INoticeDao notDao;
	
	private NoticeServiceImpl() {
		smc = SqlMapClientFactory.getInstance();
		notDao = NoticeDaoImpl.getInstance();
	}
	
	public static NoticeServiceImpl getInstance() {
		if(NotService == null) {
			NotService = new NoticeServiceImpl();
		}
		return NotService;
	}
	
	@Override
	public List<NoticeVO> getAllNoticeList() {
		return notDao.getAllNoticeList(smc);
	}
	
	@Override
	public List<NoticeVO> searchNotice(String notTit) {
		return notDao.searchNotice(smc, notTit);
	}

	@Override
	public int insertNotice(NoticeVO vo) {
		return notDao.insertNotice(smc, vo);
	}

	@Override
	public int updateNotice(NoticeVO vo) {
		return notDao.updateNotice(smc, vo);
	}

	@Override
	public int deleteNotice(String notId) {
		return notDao.deleteNotice(smc, notId);
	}

	@Override
	public NoticeVO getNotice(String notId) {
		return notDao.getNotice(smc, notId);
	}

}
