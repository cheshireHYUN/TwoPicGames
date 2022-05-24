package notices.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import notices.vo.AnswerVO;
import notices.vo.QuestionVO;

public class QuestionDaoImpl implements IQuestionDao {
	
	private static QuestionDaoImpl qesDao;
	
	private QuestionDaoImpl() {
		
	}
	
	public static QuestionDaoImpl getInstance() {
		if(qesDao == null) {
			qesDao = new QuestionDaoImpl();
		}
		return qesDao;
	}

	@Override
	public List<QuestionVO> getAllQuestionList(SqlMapClient smc) {
		List<QuestionVO> qesList = new ArrayList<QuestionVO>();
		
		try {
			qesList = smc.queryForList("question.getQuestionAll");
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("전체 질문정보 조회 중 예외발생!", ex);
		}
		return qesList;
	}

	@Override
	public List<QuestionVO> myQuestionList(SqlMapClient smc, String memId) {
		List<QuestionVO> qesList = new ArrayList<QuestionVO>();
		
		try {
			qesList = smc.queryForList("question.getMyQuestion", memId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("질문정보 검색 중 예외발생!", ex);
		}
		return qesList;
	}
	
	@Override
	public List<QuestionVO> searchQuestion(SqlMapClient smc, String qesTit) {
		List<QuestionVO> vo = null;
		
		try {
			vo = smc.queryForList("question.searchQuestion", qesTit);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("질문제목 검색 중 예외발생!", ex);
		}
		return vo;
	}

	@Override
	public int insertQuestion(SqlMapClient smc, QuestionVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("question.insertQuestion", vo);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("질문정보 입력 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public int updateQuestion(SqlMapClient smc, QuestionVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("question.updateQuestion", vo);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("질문정보 수정 중 예외발생!", ex);
		}
		return cnt;
	}

	@Override
	public int deleteQuestion(SqlMapClient smc, String qesId) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("question.deleteQuestion", qesId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("질문정보 삭제 중 예외발생!", ex);
		}
		return cnt;
	}

	@Override
	public QuestionVO getQuestion(SqlMapClient smc, String qesId) {
		QuestionVO vo = null;
		
		try {
			vo = (QuestionVO) smc.queryForObject("question.getQuestion", qesId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("질문정보 조회 중 예외발생!", ex);
		}
		return vo;
	}

	@Override
	public List<AnswerVO> getAllAnswerList(SqlMapClient smc) {
		List<AnswerVO> ansList = new ArrayList<AnswerVO>();
		
		try {
			ansList = smc.queryForList("answer.getAnswerAll");
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("전체  답변정보 조회 중 예외발생!", ex);
		}
		return ansList;
	}
	
	@Override
	public AnswerVO getAnswer(SqlMapClient smc, String qesId) {
		AnswerVO vo = null;
		
		try {
			vo = (AnswerVO) smc.queryForObject("answer.getAnswer", qesId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("전체  답변정보 조회 중 예외발생!", ex);
		}
		return vo;
	}

	@Override
	public AnswerVO getQesId(SqlMapClient smc, String qesId) {
		AnswerVO vo = null;
		
		try {
			vo = (AnswerVO) smc.queryForObject("answer.getQesId", qesId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("질문아이디정보 조회 중 예외발생!", ex);
		}
		return vo;
	}

	@Override
	public int insertAnswer(SqlMapClient smc, AnswerVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("answer.insertAnswer", vo);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("답변정보 입력 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public int updateAnswer(SqlMapClient smc, AnswerVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("answer.updateAnswer", vo);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("답변정보 수정 중 예외발생!", ex);
		}
		return cnt;
	}

	@Override
	public int deleteAnswer(SqlMapClient smc, String ansId) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("answer.deleteAnswer", ansId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("답변정보 삭제 중 예외발생!", ex);
		}
		return cnt;
	}

}
