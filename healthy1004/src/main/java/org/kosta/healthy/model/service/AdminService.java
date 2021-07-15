package org.kosta.healthy.model.service;

import java.util.List;
import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.utils.PagingVO;

public interface AdminService {
	
	void deleteMember(MemberVO vo);
	
	int countMember();
	
	List<MemberVO> memberListPaging(PagingVO vo);
	
	int countCrew();
	
	Object crewListPaging(PagingVO vo);
	
	void deleteCrew(CrewVO vo);
}