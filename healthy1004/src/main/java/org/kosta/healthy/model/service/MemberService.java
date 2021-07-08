package org.kosta.healthy.model.service;

import java.util.List;

import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.model.vo.MemberVO;

public interface MemberService {

	MemberVO findMemberById(String id);

	String idcheck(String id);

	List<Authority> selectAuthorityByUsername(String username);

	void registerMember(MemberVO vo);
	
	void updateMember(MemberVO vo);
	
	List<MemberVO> memberList();
	
	void deleteMember(MemberVO vo);
}