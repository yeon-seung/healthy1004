package org.kosta.healthy.model.service;

import java.util.List;

import org.kosta.healthy.model.vo.CrewBoardVO;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.utils.PagingVO;

public interface CrewBoardService {
	
	// 크루 보드 페이징 처리
	int countCrewBoard(String crewId);

	List<CrewBoardVO> findCrewBoardListPagingByCrewId(PagingVO vo,String crewId);

	CrewBoardVO findCrewBoardByCrewBoardId(String crewBoardId);

	CrewVO findCrewByCrewId(String crewId);

	void postCrewBoard(CrewBoardVO crewBoardVO);
	
	void deleteCrewBoardPost(String boardId);

	void updateCrewBoardPost(CrewBoardVO crewBoardVO);
}