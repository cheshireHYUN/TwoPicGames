package questions.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import questions.vo.NoticeVO;


public class NoticeDaoImpl implements INoticeDao {
	
	private static NoticeDaoImpl notDao;
	
	private NoticeDaoImpl() {
		
	}
	
	public static NoticeDaoImpl getInstance() {
		if(notDao == null) {
			notDao = new NoticeDaoImpl();
		}
		return notDao;
	}

	@Override
	public List<NoticeVO> getAllNoticeList(SqlMapClient smc) {
		List<NoticeVO> notList = new ArrayList<NoticeVO>();
		
		try {
			notList = smc.queryForList("notice.getNoticeAll");
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("전체 공지사항 조회 중 예외발생!", ex);
		}
		return notList;
	}
	
	@Override
	public List<NoticeVO> searchNotice(SqlMapClient smc, String notTit) {
		List<NoticeVO> notList = null;
		
		try {
			notList = smc.queryForList("notice.searchNotice", notTit);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("전체 공지사항 조회 중 예외발생!", ex);
		}
		return notList;
	}

	@Override
	public int insertNotice(SqlMapClient smc, NoticeVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("notice.insertNotice", vo);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("공지사항정보 입력 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public int updateNotice(SqlMapClient smc, NoticeVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("notice.updateNotice", vo);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("공지사항정보 수정 중 예외발생!", ex);
		}
		return cnt;
	}

	@Override
	public int deleteNotice(SqlMapClient smc, String notId) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("notice.deleteNotice", notId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("공지사항정보 삭제 중 예외발생!", ex);
		}
		return cnt;
	}

	@Override
	public NoticeVO getNotice(SqlMapClient smc, String notId) {
		NoticeVO vo = null;
		
		try {
			vo = (NoticeVO) smc.queryForObject("notice.getNotice", notId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("공지사항정보 조회 중 예외발생!", ex);
		}
		return vo;
	}

}
