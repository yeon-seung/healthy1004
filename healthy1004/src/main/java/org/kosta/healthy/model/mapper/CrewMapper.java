package org.kosta.healthy.model.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.CrewVO;

@Mapper
public interface CrewMapper {
	//검색 후 크루리스트
	List<CrewVO> findCrewListByName(Map<String, Object> findCrew);
	
	//전체 크루리스트-참가한 크루는 제외
	List<CrewVO> getAllCrewList(String memberId);
	
	//크루 참가
	void joinCrew(HashMap<String, Object> hashMap);
	int crewMemberCheck(HashMap<String, Object> hashMap);
	
	//내가 가입한 크루리스트
	List<CrewVO> getMyCrewList(String memberId);
}
