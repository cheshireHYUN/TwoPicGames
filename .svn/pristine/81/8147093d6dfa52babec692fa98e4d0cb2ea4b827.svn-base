package faqs.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import faqs.dao.FaqDaoImpl;
import faqs.dao.IFaqDao;
import faqs.vo.FaqVO;

public class FaqServiceImpl implements IFaqService {
	
	private static FaqServiceImpl FaqService;
	private SqlMapClient smc;
	private IFaqDao faqDao;
	
	private FaqServiceImpl() {
		smc = SqlMapClientFactory.getInstance();
		faqDao = FaqDaoImpl.getInstance();
	}
	
	public static FaqServiceImpl getInstance() {
		if(FaqService == null) {
			FaqService = new FaqServiceImpl();
		}
		return FaqService;
	}
	
	@Override
	public List<FaqVO> getAllFaqList() {
		return faqDao.getAllFaqList(smc);
	}

	@Override
	public int insertFaq(FaqVO vo) {
		return faqDao.insertFaq(smc, vo);
	}

	@Override
	public int updateFaq(FaqVO vo) {
		return faqDao.updateFaq(smc, vo);
	}

	@Override
	public int deleteFaq(String faqId) {
		return faqDao.deleteFaq(smc, faqId);
	}

	@Override
	public FaqVO getFaq(String faqId) {
		return faqDao.getFaq(smc, faqId);
	}

}
