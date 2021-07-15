package org.kosta.healthy.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.AdminMapper;
import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.utils.PagingVO;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminServiceImpl implements AdminService {
	@Resource
	private AdminMapper adminMapper;
	private CrewMapper crewMapper;

	
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
		@Override
		public List<CrewVO> crewList() {
			return adminMapper.crewList();
		}

		@Override
		public void deleteCrew(CrewVO vo) {
			adminMapper.deleteCrew(vo);
		}
}
