package achivement.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import achivement.dao.AchDaoImpl;
import achivement.dao.IAchDao;
import achivement.vo.AchListVO;
import achivement.vo.AchVO;
import config.SqlMapClientFactory;

public class AchServiceImpl implements IAchService {
	
	private static AchServiceImpl achService;
	private SqlMapClient smc;
	private IAchDao achDao;
	
	private AchServiceImpl() {
		achDao = AchDaoImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static AchServiceImpl getInstance() {
		if(achService == null) {
			achService = new AchServiceImpl();
		}
		return achService;
	}

	@Override
	public List<AchVO> getAllAchList() {
		return achDao.getAllAchList(smc);
	}
	
	@Override
	public AchVO getAch(String achId) {
		return achDao.getAch(smc, achId);
	}

	@Override
	public int insertAch(AchVO vo) {
		return achDao.insertAch(smc, vo);
	}

	@Override
	public int updateAch(AchVO vo) {
		return achDao.updateAch(smc, vo);
	}

	@Override
	public int deleteAch(String achId) {
		return achDao.deleteAch(smc, achId);
	}
	
	@Override
	public List<AchListVO> getAllAchSt() {
		return achDao.getAllAchSt(smc);
	}

	@Override
	public List<AchVO> getAllAchList(String mem_id) {
		// TODO Auto-generated method stub
		return achDao.getAllAchList(smc, mem_id);
	}

	@Override
	public int insertAchList(AchVO vo) {
		// TODO Auto-generated method stub
		return achDao.insertAchList(smc, vo);
	}
}
