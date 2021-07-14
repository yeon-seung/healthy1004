package org.kosta.healthy.model.service;

import java.util.List;

import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;

public interface AdminService {
	List<MemberVO> memberList();

	void deleteMember(MemberVO vo);
	
	List<CrewVO> crewList();
	
	void deleteCrew(CrewVO vo);
}