package faqs.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import faqs.vo.FaqVO;


public interface IFaqDao {
	
	public List<FaqVO> getAllFaqList(SqlMapClient smc);
	
	public int insertFaq(SqlMapClient smc, FaqVO vo);
	
	public int updateFaq(SqlMapClient smc, FaqVO vo);
	
	public int deleteFaq(SqlMapClient smc, String faqId);
	
	public FaqVO getFaq(SqlMapClient smc, String faqId);
}
