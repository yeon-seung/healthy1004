package org.kosta.healthy.model.service;

import java.util.List;

import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.utils.PagingVO;

public interface AdminService {

	// 관리자가 사용하는 memberService
	
	void deleteMember(MemberVO vo);
	
	int countMember();
	
	List<MemberVO> memberListPaging(PagingVO vo);
}