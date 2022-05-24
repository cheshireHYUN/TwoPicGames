package members.member.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import games.game.vo.GameVO;
import members.member.vo.GameCodeVO;
import members.member.vo.MemberVO;

public interface IMemberDAO {
	// 회원 로그인
	public MemberVO loginMember(SqlMapClient smc, MemberVO loginMember);

	// 모든 회원 정보를 출력하는 메소드
	public List<MemberVO> getAllMember(SqlMapClient smc);

	// 회원 정보를 저장하는 메소드
	public int insertMember(SqlMapClient smc, MemberVO member);

	// 회원 아이디를 받아 중복하는 아이디가 있는지 검사하는 메소드
	public boolean checkMemId(SqlMapClient smc, String memId);

	// 회원 정보를 수정하는 메소드
	public int modifyInfo(SqlMapClient smc, MemberVO member);
	
	// 회원 비밀번호를 수정하는 메소드
	public int modifyPw(SqlMapClient smc, MemberVO member);

	// 회원 객체를 받아 아이디와 비밀번호가 일치하는지 검사하는 메소드
	public boolean checkMember(SqlMapClient smc, MemberVO member);

	// 전체 회원의 아이디를 조회하는 메소드
	public List<String> getAllMemberId(SqlMapClient smc);

	// 회원 아이디를 받아 해당 회원의 정보를 조회하는 메소드
	public MemberVO getMember(SqlMapClient smc, String id);

	// 회원 아이디를 받아 해당 회원의 탈퇴여부를 바꾸는 메소드
	public int withdrawMember(SqlMapClient smc, MemberVO member);

	// 포인트를 충전하는 메소드
	public int updatePoint(SqlMapClient smc, int point);

	// 코드를 받아 게임에 해당 코드가 있는지 검사하는 메소드
	public String searchGameCode(SqlMapClient smc, String code);

	// 코드와 멤버 아이디를 받아 코드 주문을 완료하는 메소드
	public int insertCodeOrder(SqlMapClient smc, GameCodeVO code);
	
	// 비밀번호 찾기
	public String searchPw(SqlMapClient smc, MemberVO vo);

	public void updatePw(SqlMapClient smc, MemberVO vo);

}
