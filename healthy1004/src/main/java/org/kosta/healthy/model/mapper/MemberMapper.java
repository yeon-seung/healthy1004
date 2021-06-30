package org.kosta.healthy.model.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.MemberVO;
@Mapper
public interface MemberMapper {
	MemberVO login(String memberId);
}
