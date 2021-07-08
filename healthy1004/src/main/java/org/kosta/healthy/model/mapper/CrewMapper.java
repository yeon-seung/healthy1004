package org.kosta.healthy.model.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.CrewVO;

@Mapper
public interface CrewMapper {
	List<CrewVO> findCrewListByName(String crewSearchName);
	List<CrewVO> getAllCrewList();
	void joinCrew(HashMap<String, Object> hashMap);
	int crewMemberCheck(HashMap<String, Object> hashMap);
}
