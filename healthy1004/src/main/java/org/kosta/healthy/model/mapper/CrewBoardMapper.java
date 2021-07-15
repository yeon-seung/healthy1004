package org.kosta.healthy.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.CrewBoardVO;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.utils.PagingVO;

@Mapper
public interface CrewBoardMapper {
	
	int countCrewBoard(String crewId);

	List<CrewBoardVO> findCrewBoardListPagingByCrewId(PagingVO pagingvo,String crewId);

	CrewBoardVO findCrewBoardByCrewBoardId(String crewBoardId);

	CrewVO findCrewByCrewId(String crewId);

	void postCrewBoard(CrewBoardVO crewBoardVO);
	
	void deleteCrewBoardPost(String boardId);

	void updateCrewBoardPost(CrewBoardVO crewBoardVO);

}
