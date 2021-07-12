package org.kosta.healthy.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.utils.PagingVO;
@Mapper
public interface AdminMapper {
	
	// 관리자가 사용하는 member 내용
	List<MemberVO> memberList();
		
	void deleteMember(MemberVO vo);
		
	int countMember();
		
	List<MemberVO> memberListPaging(PagingVO vo);
}
