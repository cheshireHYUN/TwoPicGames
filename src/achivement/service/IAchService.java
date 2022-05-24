package achivement.service;

import java.util.List;

import achivement.vo.AchListVO;
import achivement.vo.AchVO;

public interface IAchService {
	
	// �뾽�쟻�쁽�솴
	public List<AchVO> getAllAchList();

	public List<AchVO> getAllAchList(String mem_id);
	
	public AchVO getAch(String achId);
	
	public int insertAchList(AchVO vo);
	
	public int insertAch(AchVO vo);
	
	public int updateAch(AchVO vo);
	
	public int deleteAch(String achId);
	
	
	//�뾽�쟻 由ъ뒪�듃
	public List<AchListVO> getAllAchSt();
}
