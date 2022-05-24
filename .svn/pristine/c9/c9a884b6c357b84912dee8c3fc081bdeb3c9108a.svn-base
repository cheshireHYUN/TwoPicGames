package achivement.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import achivement.vo.AchListVO;
import achivement.vo.AchVO;

public interface IAchDao {
	
	// �뾽�쟻�쁽�솴
	public List<AchVO> getAllAchList(SqlMapClient smc);
	
	public List<AchVO> getAllAchList(SqlMapClient smc, String mem_id);
	
	public AchVO getAch(SqlMapClient smc, String achId);
	
	public int insertAchList(SqlMapClient smc, AchVO vo);
	
	public int insertAch(SqlMapClient smc, AchVO vo);
	
	public int updateAch(SqlMapClient smc, AchVO vo);
	
	public int deleteAch(SqlMapClient smc, String achId);
	
	
	//�뾽�쟻 由ъ뒪�듃
	public List<AchListVO> getAllAchSt(SqlMapClient smc);

	
}
