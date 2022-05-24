package questions.service;

import java.util.List;

import questions.vo.NoticeVO;


public interface INoticeService {
	
	public List<NoticeVO> getAllNoticeList();
	
	public List<NoticeVO> searchNotice(String notTit);
	
	public int insertNotice(NoticeVO vo);
	
	public int updateNotice(NoticeVO vo);
	
	public int deleteNotice(String qesId);
	
	public NoticeVO getNotice(String qesId);
}
