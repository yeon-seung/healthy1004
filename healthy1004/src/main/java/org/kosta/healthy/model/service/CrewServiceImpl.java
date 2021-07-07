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

	@Override
	public Object findCrewListByName(String crewSearchName) {
		return crewMapper.findCrewListByName(crewSearchName);
	}

	@Override
	public List<CrewVO> getAllCrewList() {
		return crewMapper.getAllCrewList();
	}

	@Override
	public void joinCrew(HashMap<String, Object> hashMap) {
		crewMapper.joinCrew(hashMap);
	}

	@Override
	public boolean crewMemberCheck(HashMap<String, Object> hashMap) {
		boolean flag = false;
		return flag;
	}

}
