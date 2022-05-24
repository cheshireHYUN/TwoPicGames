package faqs.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import faqs.vo.FaqVO;


public class FaqDaoImpl implements IFaqDao {
	
	private static FaqDaoImpl faqDao;
	
	private FaqDaoImpl() {
		
	}
	
	public static FaqDaoImpl getInstance() {
		if(faqDao == null) {
			faqDao = new FaqDaoImpl();
		}
		return faqDao;
	}

	@Override
	public List<FaqVO> getAllFaqList(SqlMapClient smc) {
		List<FaqVO> faqList = new ArrayList<FaqVO>();
		
		try {
			faqList = smc.queryForList("faq.getFaqAll");
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("전체 자주묻는질문 조회 중 예외발생!", ex);
		}
		return faqList;
	}

	@Override
	public int insertFaq(SqlMapClient smc, FaqVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("faq.insertFaq", vo);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("자주묻는질문정보 입력 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public int updateFaq(SqlMapClient smc, FaqVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("faq.updateFaq", vo);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("자주묻는질문정보 수정 중 예외발생!", ex);
		}
		return cnt;
	}

	@Override
	public int deleteFaq(SqlMapClient smc, String faqId) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("faq.deleteFaq", faqId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("자주묻는질문정보 삭제 중 예외발생!", ex);
		}
		return cnt;
	}

	@Override
	public FaqVO getFaq(SqlMapClient smc, String faqId) {
		FaqVO vo = null;
		
		try {
			vo = (FaqVO) smc.queryForObject("faq.getFaq", faqId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("자주묻는질문정보 조회 중 예외발생!", ex);
		}
		return vo;
	}

}
