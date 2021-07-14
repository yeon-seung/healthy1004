package org.kosta.healthy.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;

@Mapper
public interface AdminMapper {
	List<MemberVO> memberList();

	void deleteMember(MemberVO vo);
	
	List<CrewVO> crewList();
	
	void deleteCrew(CrewVO vo);
}
