package org.kosta.healthy.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.CrewBoardVO;
import org.kosta.healthy.model.vo.CrewVO;

@Mapper
public interface CrewBoardMapper {
	List<CrewBoardVO> findCrewBoardListByCrewId(String crewId);

	List<CrewBoardVO> findCrewBoardListByCrewIdTest(String crewId);

	CrewBoardVO findCrewBoardByCrewBoardId(String crewBoardId);

	CrewVO findCrewByCrewId(String crewId);

	void postCrewBoard(CrewBoardVO crewBoardVO);

}
