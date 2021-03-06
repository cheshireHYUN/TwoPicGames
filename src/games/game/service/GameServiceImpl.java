package games.game.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import games.game.dao.GameDAOImpl;
import games.game.dao.IGameDAO;
import games.game.vo.FreeGameVO;
import games.game.vo.GameDetailVO;
import games.game.vo.GameSearchVO;
import games.game.vo.GameVO;
import games.publisher.vo.PublishVO;
import members.member.vo.GameCodeVO;

public class GameServiceImpl implements IGameService {

	private static final String UPLOAD_DIR = "D:/A_TeachingMaterial/04_MiddelProject/file";
	private static IGameService service;
	private IGameDAO dao;

	private GameServiceImpl() {
		dao = GameDAOImpl.getInstance();
	}

	public static IGameService getInstance() {
		if (service == null) {
			service = new GameServiceImpl();
		}
		return service;
	}

	@Override
	public List<GameVO> AllGameList() {
		// TODO Auto-generated method stub
		return dao.AllGameList();
	}

	@Override
	public List<GameVO> AllGameList(GameSearchVO vo) {
		// TODO Auto-generated method stub
		return dao.AllGameList(vo);
	}

	/**
	 * 게임 이름으로 찾기
	 */
	@Override
	public List<GameVO> getGameInfo(String name) {
		// TODO Auto-generated method stub
		return dao.getGameInfo(name);
	}

	@Override
	public List<GameDetailVO> getDetailGameInfo(String id) {
		// TODO Auto-generated method stub
		return dao.getDetailGameInfo(id);
	}

	@Override
	public int insertGame(GameVO vo) {
		// TODO Auto-generated method stub
		return dao.insertGame(vo);
	}

	@Override
	public List<String> saveGameImg(HttpServletRequest req) {

		// File.separator : OS마다 파일 경로 구분자가 다르기 때문에 구분자를 OS에 맞춰서 변경해줌
		String uploadPath = UPLOAD_DIR;

		File uploadDir = new File(uploadPath);

		if (!uploadDir.exists()) { // 업로드 경로가 존재하지 않으면...
			uploadDir.mkdir();
		}
		String saveFileName = ""; // 저장 파일 이름(따로 만들어서 지정)
		String saveFilePath = ""; // 저장 파일 경로
		List<String> gamepath = new ArrayList<String>();
		File storeFile = null; // 저장파일 객체
		try {
			String fileName = "";
			int i = 0;
			boolean isFirstFile = true; // 첫번째 파일 여부 체크용

			for (Part part : req.getParts()) {
				fileName = getFileName(part); // 파일명 추출
				// 파일임(파일이면 파일명이 있기 때문에) -> null이면 폼필드이거나 첨부를 하지않은것임
				if (fileName != null && !fileName.equals("")) {

					do {
						// UUID : 범용 고유 식별자(각 개체를 고유하게 식별 가능한 값)
						// => 기간제나 임시 유저의 Key값을 줄 때 사용하거나,
						// 파일등을 업로드 할 때 어떤파일을 올렷나 식별이 가능하도록 key값 줄 때 사용
						saveFileName = UUID.randomUUID().toString().replace("-", "");
						System.out.println("저장 파일명 : " + saveFileName);
						saveFilePath = uploadPath + File.separator + saveFileName;
						System.out.println("저장 파일경로 : " + saveFilePath);
						storeFile = new File(saveFilePath);
					} while (storeFile.exists());
					gamepath.add(saveFileName);
					// 해당 파일 경로로 저장(업로드 파일)
					part.write(saveFilePath);
					// 임시로 저장 업로드 파일 삭제
					part.delete();

					System.out.println("파일명 : " + fileName + "업로드 완료");

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// atchFileId가 들어 있음(sequence로 생성한)
		return gamepath;
	}

	private String getFileName(Part part) {
		/*
		 * // 업로드, 다운로드에서도 사용됨 Content-Disposition 헤더에 대하여...
		 * 
		 * 1. 응답헤더에 사용되는 경우... ex) 파일 다운로드 Content-Disposition: inline (default)
		 * Content-Disposition: attachment // 파일 다운로드 Content-Disposition: attachment;
		 * filename="a.jpg" => a.jpg이름으로 다운로드
		 * 
		 * 2. multipart body를 위한 헤더 정보로 사용되는 경우... ex) 파일 업로드 Content-Disposition:
		 * form-data Content-Disposition: form-data; name="fieldName"
		 * Content-Disposition: form-data; name="fieldName"; filename="a.jpg"
		 */
		for (String content : part.getHeader("Content-Disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf("=") + 1).trim().replace("\"", "");
			}
		}
		return null; // filename이 없는 경우 ... (폼필드)

	}

	@Override
	public String nextGameId() {
		// TODO Auto-generated method stub
		return dao.nextGameId();
	}

	@Override
	public int updateGame(GameVO vo) {
		// TODO Auto-generated method stub
		return dao.updateGame(vo);
	}

	@Override
	public void deleteGame(String game_id) {
		// TODO Auto-generated method stub
		dao.deleteGame(game_id);
	}

	@Override
	public int insertFreeGame(FreeGameVO vo) {
		// TODO Auto-generated method stub
		return dao.insertFreeGame(vo);
	}

	@Override
	public String IsFgmId(String game_id) {
		// TODO Auto-generated method stub
		return dao.IsFgmId(game_id);
	}

	@Override
	public List<String> getCodeOrderGame(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getCodeOrderGame(mem_id);
	}

	@Override
	public void updateGameCode(GameCodeVO codeVO) {
		// TODO Auto-generated method stub
		dao.updateGameCode(codeVO);
	}

	@Override
	public String nextFreeGameId() {
		// TODO Auto-generated method stub
		return dao.nextFreeGameId();
	}

}
