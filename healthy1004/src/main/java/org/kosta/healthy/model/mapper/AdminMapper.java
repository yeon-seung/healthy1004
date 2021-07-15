package org.kosta.healthy.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.utils.PagingVO;

@Mapper
public interface AdminMapper {
	
	void deleteMember(MemberVO vo);
	
	int countMember();
	
	List<MemberVO> memberListPaging(PagingVO vo);
	
	int countCrew();

	List<CrewVO> crewListPaging(PagingVO vo);
	
	void deleteCrew(CrewVO vo);
}
