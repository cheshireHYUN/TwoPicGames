package questions.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import questions.vo.NoticeVO;


public interface INoticeDao {
	
	public List<NoticeVO> getAllNoticeList(SqlMapClient smc);
	
	public List<NoticeVO> searchNotice(SqlMapClient smc, String notTit);
	
	public int insertNotice(SqlMapClient smc, NoticeVO vo);
	
	public int updateNotice(SqlMapClient smc, NoticeVO vo);
	
	public int deleteNotice(SqlMapClient smc, String notId);
	
	public NoticeVO getNotice(SqlMapClient smc, String notId);
}
