package org.kosta.healthy.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.CrewBoardMapper;
import org.kosta.healthy.model.vo.CrewBoardVO;
import org.kosta.healthy.model.vo.CrewVO;
import org.springframework.stereotype.Service;

@Service
public class CrewBoardServiceImpl implements CrewBoardService {
	@Resource
	private CrewBoardMapper crewBoardMapper;

	@Override
	public List<CrewBoardVO> findCrewBoardListByCrewId(String crewId) {
		return crewBoardMapper.findCrewBoardListByCrewId(crewId);
	}

	@Override
	public List<CrewBoardVO> findCrewBoardListByCrewIdTest(String crewId) {
		return crewBoardMapper.findCrewBoardListByCrewIdTest(crewId);
	}

	@Override
	public CrewBoardVO findCrewBoardByCrewBoardId(String crewBoardId) {
		return crewBoardMapper.findCrewBoardByCrewBoardId(crewBoardId);
	}
	
	// 크루 아이디로 크루 이름 찾기  (크루 service에 있을듯.. 합칠떈 그거 쓰기) -> detail 보기에서 crewName을 보기 위해 사용 (join하지 않고~) -> 
	// -> 사용가능한 이유 -> crewboard를 가져오면 crewid를 가지고 오는데 그걸 사용해 crewName을 가져오는 sql문실행할 수 있어서
	// -> 1. crewId 받아서 crewName 찾는 mapper 사용
	// 	  2. CrewBoardVO에 CrewName 추가 (? -> join 후에 crewBoardVO에 넣어주기 위해)
	//	  3. mapper에서 join 후, Map 객체에 담아서 보내기
	public CrewVO findCrewByCrewId(String crewId) {
		return crewBoardMapper.findCrewByCrewId(crewId);
	}

	@Override
	public void postCrewBoard(CrewBoardVO crewBoardVO) {
		crewBoardMapper.postCrewBoard(crewBoardVO);
	}
	
	
}
