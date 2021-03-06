package members.review.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import members.member.vo.MemberVO;
import members.review.dao.IReviewDAO;
import members.review.dao.ReviewDAOImpl;
import members.review.vo.MyReviewVO;
import members.review.vo.ReviewVO;

public class ReviewServiceImple implements IReviewService {
	private static IReviewService revService;
	private IReviewDAO revDAO;
	private SqlMapClient smc;
	
	private ReviewServiceImple() {
		smc = SqlMapClientFactory.getInstance();
		revDAO = ReviewDAOImpl.getInstance();
	}
	
	public static IReviewService getInstance() {
		if(revService == null) {
			revService = new ReviewServiceImple();
		}
		return revService;
	}

	@Override
	public int insertReview(ReviewVO review) {
		return revDAO.insertReview(smc, review);
	}

	@Override
	public int deleteReview(ReviewVO review) {
		return revDAO.deleteReview(smc, review);
	}
	
	@Override
	public int delete(String rev_id) {
		return revDAO.delete(smc, rev_id);
	}

	@Override
	public int updateReview(ReviewVO review) {
		return revDAO.updateReview(smc, review);
	}

	@Override
	public List<MyReviewVO> getMemberReview(MemberVO vo) {
		return revDAO.getMemberReview(smc, vo);
	}

	@Override
	public List<MyReviewVO> getReviewList() {
		// TODO Auto-generated method stub
		return revDAO.getReviewList(smc);
	}

	@Override
	public List<ReviewVO> getReviewList(String id) {
		// TODO Auto-generated method stub
		return revDAO.getReviewList(smc, id);
	}

	@Override
	public ReviewVO getReview(String rev_id) {
		// TODO Auto-generated method stub
		return revDAO.getReview(smc, rev_id);
	}

}
