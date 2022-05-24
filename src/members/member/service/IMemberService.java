package members.member.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import games.game.vo.GameVO;
import members.member.vo.GameCodeVO;
import members.member.vo.MemberVO;

public interface IMemberService {
	// 회원 로그인
	public MemberVO loginMember(MemberVO loginMember);

	// 모든 회원 정보를 출력하는 메소드
	public List<MemberVO> getAllMember();

	// 회원 정보를 저장하는 메소드
	public int insertMember(MemberVO member);

	// 회원 정보를 수정하는 메소드
	public int modifyInfo(MemberVO member);

	// 회원 비밀번호를 수정하는 메소드
	public int modifyPw(MemberVO member);

	// 회원 객체를 받아 아이디와 비밀번호가 일치하는지 검사하는 메소드
	public boolean checkMember(MemberVO member);

	// 전체 회원의 아이디를 조회하는 메소드
	public List<String> getAllMemberId();

	// 회원 아이디를 받아 해당 회원의 정보를 조회하는 메소드
	public MemberVO getMember(String id);

	// 회원 아이디를 받아 해당 회원의 탈퇴여부를 바꾸는 메소드
	public int withdrawMember(MemberVO member);

	// 포인트를 충전하는 메소드
	public int updatePoint(int point);

	// 코드를 받아 게임에 해당 코드가 있는지 검사하는 메소드
	public String searchGameCode(String code);

	// 코드와 멤버 아이디를 받아 코드 주문을 완료하는 메소드
	public int insertCodeOrder(GameCodeVO code);

	// 멤버 비밀번호 찾기
	public String searchPw(MemberVO vo);

	public void updatePw(MemberVO vo);

}
