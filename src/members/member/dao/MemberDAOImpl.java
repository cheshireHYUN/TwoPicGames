package members.member.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.management.RuntimeErrorException;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import games.comcategory.dao.CategoryDAOImpl;
import games.comcategory.dao.ICategoryDAO;
import games.game.vo.GameVO;
import members.member.vo.GameCodeVO;
import members.member.vo.MemberVO;

public class MemberDAOImpl implements IMemberDAO {
	private static IMemberDAO memDAO;

	private MemberDAOImpl() {
	}

	public static IMemberDAO getInstance() {
		if (memDAO == null) {
			memDAO = new MemberDAOImpl();
		}
		return memDAO;
	}

	@Override
	public int insertMember(SqlMapClient smc, MemberVO member) {
		int cnt = 0;

		try {
			cnt = (int) smc.update("member.insertMember", member);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return cnt;
	}

	@Override
	public boolean checkMemId(SqlMapClient smc, String memId) {
		boolean chk = false;

		try {
			int cnt = (int) smc.queryForObject("member.checkMemId", memId);

			if (cnt > 0) {
				chk = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return chk;
	}

	@Override
	public int modifyInfo(SqlMapClient smc, MemberVO member) {
		int cnt = 0;

		try {
			cnt = smc.update("member.modifyInfo", member);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return cnt;
	}

	@Override
	public int modifyPw(SqlMapClient smc, MemberVO member) {
		int cnt = 0;

		try {
			cnt = smc.update("member.modifyPw", member);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return cnt;
	}

	@Override
	public boolean checkMember(SqlMapClient smc, MemberVO member) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<String> getAllMemberId(SqlMapClient smc) {
		List<String> idList = null;

		try {
			idList = (List<String>) smc.queryForList("member.getAllMemberId");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return idList;

	}

	@Override
	public MemberVO getMember(SqlMapClient smc, String id) {
		MemberVO member = null;

		try {
			member = (MemberVO) smc.queryForObject("member.getMember", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return member;
	}

	@Override
	public int withdrawMember(SqlMapClient smc, MemberVO member) {
		int cnt = 0;
		
		try {
			cnt = smc.update("member.withdrawMember", member);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int updatePoint(SqlMapClient smc, int point) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MemberVO> getAllMember(SqlMapClient smc) {
		List<MemberVO> memList = null;

		try {
			memList = smc.queryForList("member.getAllMember");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return memList;
	}

	@Override
	public MemberVO loginMember(SqlMapClient smc, MemberVO loginMember) {
		MemberVO member = null;

		try {
			member = (MemberVO) smc.queryForObject("member.loginMember", loginMember);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return member;
	}

	@Override
	public String searchGameCode(SqlMapClient smc, String code) {
		String game = null;

		try {
			game = (String) smc.queryForObject("game.getGameCode", code);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return game;
	}

	@Override
	public int insertCodeOrder(SqlMapClient smc, GameCodeVO code) {
		int cnt = 0;

		try {
			cnt = smc.update("member.insertCodeOrder", code);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return cnt;
	}
	

	@Override
	public String searchPw(SqlMapClient smc, MemberVO vo) {
		String pw = null;

		try {
			pw = (String) smc.queryForObject("member.searchPw", vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pw;
	}

	@Override
	public void updatePw(SqlMapClient smc, MemberVO vo) {
		// TODO Auto-generated method stub
		try {
			smc.update("member.updatePw", vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
}
