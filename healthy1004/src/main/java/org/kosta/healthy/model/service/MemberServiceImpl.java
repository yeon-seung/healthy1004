package org.kosta.healthy.model.service;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.MemberMapper;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	@Resource
	private MemberMapper memberMapper;
	
	/*
	 * @Resource private BCryptPasswordEncoder passwordEncoder;
	 */
	
	@Override
	public MemberVO login(String memberId) {
		return memberMapper.login(memberId);
	}
}
