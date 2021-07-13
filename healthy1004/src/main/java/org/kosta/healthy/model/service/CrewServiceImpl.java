package org.kosta.healthy.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<CrewVO> findCrewListByName(Map<String, Object> findCrew) {
		return crewMapper.findCrewListByName(findCrew);
	}

	//전체 크루리스트 - 참가한 크루는 제외
	@Override
	public List<CrewVO> getAllCrewList(String memberId) {
		return crewMapper.getAllCrewList(memberId);
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
	
	//크루생성
	@Override
	public void createCrew(CrewVO cvo) {
		crewMapper.createCrew(cvo);
	}

	//크루생성 위해 최신크루id 반환
//	@Override
//	public int recentCrewId() {
//		return crewMapper.recentCrewId();
//	}

}
