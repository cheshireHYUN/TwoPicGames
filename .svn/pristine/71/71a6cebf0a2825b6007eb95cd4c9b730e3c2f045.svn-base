package notices.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import notices.dao.IQuestionDao;
import notices.dao.QuestionDaoImpl;
import notices.vo.AnswerVO;
import notices.vo.QuestionVO;

public class QuestionServiceImpl implements IQuestionService {
	
	private static QuestionServiceImpl qesService;
	private SqlMapClient smc;
	private IQuestionDao qesDao;
	
	private QuestionServiceImpl() {
		smc = SqlMapClientFactory.getInstance();
		qesDao = QuestionDaoImpl.getInstance();
	}
	
	public static QuestionServiceImpl getInstance() {
		if(qesService == null) {
			qesService = new QuestionServiceImpl();
		}
		return qesService;
	}
	
	@Override
	public List<QuestionVO> getAllQuestionList() {
		return qesDao.getAllQuestionList(smc);
	}

	@Override
	public List<QuestionVO> myQuestionList(String memId) {
		return qesDao.myQuestionList(smc, memId);
	}
	
	@Override
	public List<QuestionVO> searchQuestion(String qesTit) {
		return qesDao.searchQuestion(smc, qesTit);
	}

	@Override
	public int insertQuestion(QuestionVO vo) {
		return qesDao.insertQuestion(smc, vo);
	}

	@Override
	public int updateQuestion(QuestionVO vo) {
		return qesDao.updateQuestion(smc, vo);
	}

	@Override
	public int deleteQuestion(String qesId) {
		return qesDao.deleteQuestion(smc, qesId);
	}

	@Override
	public QuestionVO getQuestion(String qesId) {
		return qesDao.getQuestion(smc, qesId);
	}

	@Override
	public List<AnswerVO> getAllAnswerList() {
		return qesDao.getAllAnswerList(smc);
	}
	
	@Override
	public AnswerVO getAnswer(String qesId) {
		return qesDao.getAnswer(smc, qesId);
	}
	
	@Override
	public AnswerVO getQesId(String qesId) {
		return qesDao.getQesId(smc, qesId);
	}

	@Override
	public int insertAnswer(AnswerVO vo) {
		return qesDao.insertAnswer(smc, vo);
	}

	@Override
	public int updateAnswer(AnswerVO vo) {
		return qesDao.updateAnswer(smc, vo);
	}

	@Override
	public int deleteAnswer(String ansId) {
		return qesDao.deleteAnswer(smc, ansId);
	}

}
