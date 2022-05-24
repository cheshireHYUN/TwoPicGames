package notices.service;

import java.util.List;

import notices.vo.AnswerVO;
import notices.vo.QuestionVO;

public interface IQuestionService {
	
	// 질문
	public List<QuestionVO> getAllQuestionList();
	
	public List<QuestionVO> myQuestionList(String memId);
	
	public List<QuestionVO> searchQuestion(String qesTit);
	
	public int insertQuestion(QuestionVO vo);
	
	public int updateQuestion(QuestionVO vo);
	
	public int deleteQuestion(String qesId);
	
	public QuestionVO getQuestion(String qesId);
	
	// 답변
	public List<AnswerVO> getAllAnswerList();
	
	public AnswerVO getAnswer(String qesId);
	
	public AnswerVO getQesId(String qesId);
	
	public int insertAnswer(AnswerVO vo);
	
	public int updateAnswer(AnswerVO vo);
	
	public int deleteAnswer(String ansId);
}
