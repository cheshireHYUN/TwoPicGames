package members.member.service;

import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import games.game.vo.GameVO;
import members.member.dao.IMemberDAO;
import members.member.dao.MemberDAOImpl;
import members.member.vo.GameCodeVO;
import members.member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {
	private static IMemberService memService;
	private IMemberDAO memDAO;
	private SqlMapClient smc;

	private MemberServiceImpl() {
		smc = SqlMapClientFactory.getInstance();
		memDAO = MemberDAOImpl.getInstance();
	}

	public static IMemberService getInstance() {
		if (memService == null) {
			memService = new MemberServiceImpl();
		}
		return memService;
	}

	@Override
	public int insertMember(MemberVO member) {
		return memDAO.insertMember(smc, member);
	}

	@Override
	public int modifyInfo(MemberVO member) {
		return memDAO.modifyInfo(smc, member);
	}

	@Override
	public int modifyPw(MemberVO member) {
		return memDAO.modifyPw(smc, member);
	}

	@Override
	public boolean checkMember(MemberVO member) {
		return memDAO.checkMember(smc, member);
	}

	@Override
	public List<String> getAllMemberId() {
		return memDAO.getAllMemberId(smc);
	}

	@Override
	public MemberVO getMember(String id) {
		return memDAO.getMember(smc, id);
	}

	@Override
	public int withdrawMember(MemberVO member) {
		return memDAO.withdrawMember(smc, member);
	}

	@Override
	public int updatePoint(int point) {
		return memDAO.updatePoint(smc, point);
	}

	@Override
	public List<MemberVO> getAllMember() {
		return memDAO.getAllMember(smc);
	}

	@Override
	public MemberVO loginMember(MemberVO loginMember) {
		return memDAO.loginMember(smc, loginMember);
	}

	@Override
	public String searchGameCode(String code) {
		return memDAO.searchGameCode(smc, code);
	}

	@Override
	public int insertCodeOrder(GameCodeVO code) {
		return memDAO.insertCodeOrder(smc, code);
	}

	@Override
	public String searchPw(MemberVO vo) {
		return memDAO.searchPw(smc, vo);
	}

	@Override
	public void updatePw(MemberVO vo) {
		// TODO Auto-generated method stub
		memDAO.updatePw(smc, vo);
	}

}
