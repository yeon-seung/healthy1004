package org.kosta.healthy.model.service;

import java.util.List;

import org.kosta.healthy.model.vo.CrewBoardVO;
import org.kosta.healthy.model.vo.CrewVO;

public interface CrewBoardService {
	List<CrewBoardVO> findCrewBoardListByCrewId(String crewId);

	List<CrewBoardVO> findCrewBoardListByCrewIdTest(String crewId);

	CrewBoardVO findCrewBoardByCrewBoardId(String crewBoardId);

	CrewVO findCrewByCrewId(String crewId);

	void postCrewBoard(CrewBoardVO crewBoardVO);
	
	void deleteCrewBoardPost(String boardId);

	void updateCrewBoardPost(CrewBoardVO crewBoardVO);
}