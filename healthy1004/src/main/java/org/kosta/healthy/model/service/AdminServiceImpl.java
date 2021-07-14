package org.kosta.healthy.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.AdminMapper;
import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
	@Resource
	private AdminMapper adminMapper;
	private CrewMapper crewMapper;

	@Override
	public List<MemberVO> memberList() {
		return adminMapper.memberList();
	}

	@Override
	public void deleteMember(MemberVO vo) {
		adminMapper.deleteMember(vo);
		List<CrewVO> list = crewMapper.getMyCrewList(vo.getMemberId());
		for (int i = 0; i < list.size(); i++) {
			crewMapper.removeCrewMember(list.get(i).getCrewId());
		}
	}

	@Override
	public List<CrewVO> crewList() {
		return adminMapper.crewList();
	}

	@Override
	public void deleteCrew(CrewVO vo) {
		adminMapper.deleteCrew(vo);
	}
}
