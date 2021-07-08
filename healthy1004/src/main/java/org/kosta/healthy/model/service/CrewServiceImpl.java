package org.kosta.healthy.model.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.vo.CrewVO;
import org.springframework.stereotype.Service;

@Service
public class CrewServiceImpl implements CrewService {
	@Resource
	private CrewMapper crewMapper;
	
	//검색 후 크루리스트
	@Override
	public Object findCrewListByName(String crewSearchName) {
		return crewMapper.findCrewListByName(crewSearchName);
	}

	//전체 크루리스트
	@Override
	public List<CrewVO> getAllCrewList() {
		return crewMapper.getAllCrewList();
	}

	//크루참가
	@Override
	public void joinCrew(HashMap<String, Object> hashMap) {
		crewMapper.joinCrew(hashMap);
	}

	//참가 시 중복확인
	@Override
	public boolean crewMemberCheck(HashMap<String, Object> hashMap) {
		boolean flag = false;
		// 크멤 테이블에 존재하는 조합이면 true 반환~
		if (crewMapper.crewMemberCheck(hashMap) >= 1)
			flag = true;
		return flag;
	}
	
	//내가 가입한 크루리스트
	@Override
	public List<CrewVO> getMyCrewList(String memberId) {
		return crewMapper.getMyCrewList(memberId);
	}

}
