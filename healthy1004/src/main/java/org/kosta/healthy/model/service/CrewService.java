package org.kosta.healthy.model.service;

import java.util.HashMap;
import java.util.List;

import org.kosta.healthy.model.vo.CrewVO;

public interface CrewService {
	//검색 후 크루리스트
	Object findCrewListByName(String crewSearchName);
	
	//전체 크루리스트
	List<CrewVO> getAllCrewList();

	//크루참가
	void joinCrew(HashMap<String, Object> hashMap);
	
	//참가시 중복확인
	boolean crewMemberCheck(HashMap<String, Object> hashMap);
	
	//내가 가입한 크루 리스트
	List<CrewVO> getMyCrewList(String memberId);

}