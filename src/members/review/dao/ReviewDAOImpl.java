package members.review.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import members.member.vo.MemberVO;
import members.review.vo.MyReviewVO;
import members.review.vo.ReviewVO;

public class ReviewDAOImpl implements IReviewDAO {
	private static IReviewDAO revDAO;

	private ReviewDAOImpl() {
	}

	public static IReviewDAO getInstance() {
		if (revDAO == null) {
			revDAO = new ReviewDAOImpl();
		}
		return revDAO;
	}

	@Override
	public int insertReview(SqlMapClient smc, ReviewVO review) {
		int cnt = 0;
		try {
			cnt = smc.update("review.insertReview", review);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int deleteReview(SqlMapClient smc, ReviewVO review) {
		int cnt = 0;
		try {
			cnt = smc.delete("review.deleteReview",review);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}
	
	@Override
	public int delete(SqlMapClient smc, String rev_id) {
		int cnt = 0;
		try {
			cnt = smc.delete("review.delete", rev_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int updateReview(SqlMapClient smc, ReviewVO review) {
		// TODO Auto-generated method stub
		int cnt =0;
		try {
			cnt = smc.update("review.updateReview",review);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<MyReviewVO> getMemberReview(SqlMapClient smc, MemberVO vo) {
		List<MyReviewVO> revList = null;

		try {
			revList = (List<MyReviewVO>) smc.queryForList("review.getMemberReview", vo.getMem_id());
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return revList;
	}

	@Override
	public List<MyReviewVO> getReviewList(SqlMapClient smc) {
		List<MyReviewVO> list = null;

		try {
			list = smc.queryForList("review.getReviewList");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<ReviewVO> getReviewList(SqlMapClient smc, String id) {
		List<ReviewVO> list = null;

		try {
			list = smc.queryForList("review.getReviewDetailList" ,id);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	
	@Override
	public ReviewVO getReview(SqlMapClient smc, String rev_id) {
		ReviewVO list = null;
		
		try {
			list = (ReviewVO) smc.queryForObject("review.getReview", rev_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
