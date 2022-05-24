package achivement.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import achivement.vo.AchListVO;
import achivement.vo.AchVO;
import config.SqlMapClientFactory;

public class AchDaoImpl implements IAchDao {

	private static AchDaoImpl achDao;
	
	private AchDaoImpl() {
		
	}
	
	public static AchDaoImpl getInstance() {
		if(achDao == null) {
			achDao = new AchDaoImpl();
		}
		return achDao;
	}

	@Override
	public List<AchVO> getAllAchList(SqlMapClient smc) {
		List<AchVO> achList = null;
		
		try {
			achList = smc.queryForList("ach.getAchAll");
			System.out.println(achList.size());
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("�뾽�쟻 議고쉶 以� �삁�쇅諛쒖깮!", ex);
		}
		return achList;
	}
	

	@Override
	public List<AchVO> getAllAchList(SqlMapClient smc, String mem_id) {
		List<AchVO> achList = new ArrayList<AchVO>();
		
		try {
			achList = smc.queryForList("ach.getAllAchList",mem_id);
			System.out.println(achList.size());
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("�뾽�쟻 議고쉶 以� �삁�쇅諛쒖깮!", ex);
		}
		return achList;
	}
	
	@Override
	public AchVO getAch(SqlMapClient smc, String achId) {
		AchVO vo = null;
		
		try {
			vo = (AchVO) smc.queryForObject("ach.getAch", achId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("�뾽�쟻 議고쉶 以� �삁�쇅諛쒖깮!", ex);
		}
		return vo;
	}
	
	@Override
	public int insertAch(SqlMapClient smc, AchVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("ach.insertAch", vo);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("�뾽�쟻�젙蹂� �엯�젰 以� �삁�쇅諛쒖깮!", e);
		}
		return cnt;
	}
	
	@Override
	public int insertAchList(SqlMapClient smc, AchVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("ach.insertAchList", vo);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("�뾽�쟻�젙蹂� �엯�젰 以� �삁�쇅諛쒖깮!", e);
		}
		return cnt;
	}

	@Override
	public int updateAch(SqlMapClient smc, AchVO vo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("ach.updateAch", vo);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("�뾽�쟻�젙蹂� �닔�젙 以� �삁�쇅諛쒖깮!", ex);
		}
		return cnt;
	}

	@Override
	public int deleteAch(SqlMapClient smc, String achId) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("ach.deleteAch", achId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("�뾽�쟻�젙蹂� �궘�젣 以� �삁�쇅諛쒖깮!", ex);
		}
		return cnt;
	}

	@Override
	public List<AchListVO> getAllAchSt(SqlMapClient smc) {
		List<AchListVO> list = null;
		
		try {
			list = smc.queryForList("achList.getAchAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}


}
