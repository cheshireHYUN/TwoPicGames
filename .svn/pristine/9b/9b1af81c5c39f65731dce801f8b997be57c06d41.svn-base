package notices.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import notices.vo.AnswerVO;
import notices.vo.QuestionVO;

public interface IQuestionDao {
	
	// 회원
	public List<QuestionVO> getAllQuestionList(SqlMapClient smc);
	
	public List<QuestionVO> myQuestionList(SqlMapClient smc, String memId);
	
	public List<QuestionVO> searchQuestion(SqlMapClient smc, String qesTit);
	
	public int insertQuestion(SqlMapClient smc, QuestionVO vo);
	
	public int updateQuestion(SqlMapClient smc, QuestionVO vo);
	
	public int deleteQuestion(SqlMapClient smc, String qesId);
	
	public QuestionVO getQuestion(SqlMapClient smc, String qesId);
	
	
	// 답변
	public List<AnswerVO> getAllAnswerList(SqlMapClient smc);
	
	public AnswerVO getAnswer(SqlMapClient smc, String qesId);
	
	public AnswerVO getQesId(SqlMapClient smc, String qesId);
	
	public int insertAnswer(SqlMapClient smc, AnswerVO vo);
	
	public int updateAnswer(SqlMapClient smc, AnswerVO vo);
	
	public int deleteAnswer(SqlMapClient smc, String ansId);
}
