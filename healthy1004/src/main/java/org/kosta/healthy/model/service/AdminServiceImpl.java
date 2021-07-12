package org.kosta.healthy.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.AdminMapper;
import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.utils.PagingVO;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminServiceImpl implements AdminService {
	@Resource
	private AdminMapper adminMapper;
	

	// 관리자가 사용하는 memberServiceImpl
		@Override
		public void deleteMember(MemberVO vo) {
			adminMapper.deleteMember(vo);
		}

		@Override
		public int countMember() {
			int count= adminMapper.countMember();
			return count;
		}

		@Override
		public List<MemberVO> memberListPaging(PagingVO vo) {
			List<MemberVO> list =  adminMapper.memberListPaging(vo);
			return list;
		}
}
