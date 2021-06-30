package org.kosta.healthy.model.service;

import org.kosta.healthy.model.vo.MemberVO;

public interface MemberService {

	MemberVO login(String memberId);

}