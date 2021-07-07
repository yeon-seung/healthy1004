package org.kosta.healthy.model.service;

import java.util.HashMap;
import java.util.List;

import org.kosta.healthy.model.vo.CrewVO;

public interface CrewService {

	Object findCrewListByName(String crewSearchName);

	List<CrewVO> getAllCrewList();

	void joinCrew(HashMap<String, Object> hashMap);

	boolean crewMemberCheck(HashMap<String, Object> hashMap);

}