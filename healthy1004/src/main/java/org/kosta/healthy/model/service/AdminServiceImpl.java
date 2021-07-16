package org.kosta.healthy.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.AdminMapper;
import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.utils.PagingVO;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
	@Resource
	private AdminMapper adminMapper;
	@Resource
	private CrewMapper crewMapper;

		@Override
		public void deleteMember(MemberVO vo) {
			adminMapper.deleteMember(vo);
			List<CrewVO> list = new ArrayList<CrewVO>();
			list = crewMapper.getMyCrewList(vo.getMemberId());
			for (int i = 0; i < list.size(); i++) {
				crewMapper.removeCrewMember(list.get(i).getCrewId());
			}
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
		public int countCrew() {
			int count= adminMapper.countCrew();
			return count;
		}

		@Override
		public List<CrewVO> crewListPaging(PagingVO vo) {
			return adminMapper.crewListPaging(vo);
		}

		@Override
		public void deleteCrew(CrewVO vo) {
			adminMapper.deleteCrew(vo);
		}
}
