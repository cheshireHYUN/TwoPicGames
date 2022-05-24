package members.review.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import members.member.vo.MemberVO;
import members.review.vo.MyReviewVO;
import members.review.vo.ReviewVO;

public interface IReviewService {
	// 새로 리뷰를 저장하는 메소드
	public int insertReview(ReviewVO review);
	
	// 기존 리뷰를 삭제하는 메소드
	public int deleteReview(ReviewVO review);
	
	// 리뷰를 수정하는 메소드
	public int updateReview(ReviewVO review);
	
	// 회원의 아이디를 받아 해당 회원의 리뷰들을 리스트로 가져오는 메소드
	public List<MyReviewVO> getMemberReview(MemberVO vo);
	
	public List<MyReviewVO> getReviewList();
	
	public List<ReviewVO> getReviewList(String id);
	
	public ReviewVO getReview(String rev_id);
	
	public int delete(String rev_id);
}
