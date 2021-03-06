package org.kosta.healthy.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.kosta.healthy.model.vo.CrewVO;

public interface CrewService {
	//검색 후 크루리스트
	List<CrewVO> findCrewListByName(Map<String, Object> findCrew);
	
	//전체 크루리스트 - 참가한 크루 제외
	List<CrewVO> getAllCrewList(String memberId);

	//크루참가
	void joinCrew(HashMap<String, Object> hashMap);
	
	//참가시 중복확인
	boolean crewMemberCheck(HashMap<String, Object> hashMap);
	
	//내가 가입한 크루 리스트
	List<CrewVO> getMyCrewList(String memberId);

	//크루 생성
	void createCrew(CrewVO cvo);
	
	//크루 현원 조회
	int countCrewMember(String crewId);

	//크루 정원 조회
	int getCrewSize(String crewId);

	//크루 현원 증가
	void addCrewMember(String crewId);
	
	//크루 현원 감소
	void removeCrewMember(String crewId);
}