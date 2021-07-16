package org.kosta.healthy.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.model.vo.MemberVO;
@Mapper
public interface MemberMapper {
	
	MemberVO findMemberById(String memberId);
	
	void updateMember(MemberVO vo);

	void registerMember(MemberVO vo);

	int idcheck(String id);
	
	List<Authority> selectAuthorityByUsername(String username);
	
	void registerRole(Authority authority);
	
	int selfdelete(String id);

	int checkAccount(@Param("memberId") String memberId, @Param("email") String email);

	void updateMemberPassword(@Param("memberId") String memberId, @Param("password") String password);

}
