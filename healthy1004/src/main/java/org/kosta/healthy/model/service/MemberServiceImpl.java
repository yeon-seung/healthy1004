package org.kosta.healthy.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.mapper.MemberMapper;
import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberServiceImpl implements MemberService {
	@Resource
	private MemberMapper memberMapper;
	private CrewMapper crewMapper;
	
	@Resource
	private BCryptPasswordEncoder passwordEncoder;

	@Override
	public MemberVO findMemberById(String id) {
		return memberMapper.findMemberById(id);
	}
	
	@Transactional
	@Override
	public void registerMember(MemberVO vo) {
		// 비밀번호를 bcrypt 알고리즘으로 암호화하여 DB에 저장한다
		String encodedPwd = passwordEncoder.encode(vo.getPassword());
		vo.setPassword(encodedPwd);
		memberMapper.registerMember(vo);
		// 회원 가입시 반드시 권한이 등록되도록 트랜잭션처리를 한다
		Authority authority = new Authority(vo.getMemberId(), "ROLE_MEMBER");
		memberMapper.registerRole(authority);
	}
	
	@Override
	public String idcheck(String id) {
		int count = memberMapper.idcheck(id);
		return (count == 0) ? "ok" : "fail";
	}

	@Override
	public List<Authority> selectAuthorityByUsername(String username) {
		return memberMapper.selectAuthorityByUsername(username);
	}

	@Override
	public void updateMember(MemberVO vo) {
		// 변경할 비밀번호를 암호화한다
		String encodePassword = passwordEncoder.encode(vo.getPassword());
		vo.setPassword(encodePassword);
		System.out.println("noob");
		memberMapper.updateMember(vo);
	}
	
	@Override
	public void deleteMember(MemberVO vo) {
		memberMapper.deleteMember(vo);
		List<CrewVO> list = crewMapper.getMyCrewList(vo.getMemberId());
		for (int i = 0; i < list.size(); i++) {
			crewMapper.removeCrewMember(list.get(i).getCrewId());
		}
		
	}

	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return memberMapper.memberList();
	}
}
