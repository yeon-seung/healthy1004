package org.kosta.healthy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.service.AdminService;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@Resource
	private AdminService adminService;
	
	@Secured("ROLE_ADMIN")
	@RequestMapping("admin")
	public String adminMain() {
		// 구현내용 
		return "admin/admin_home.tiles";
	}
	//관리자가 멤버 강퇴
	@Secured("ROLE_ADMIN")
	@RequestMapping("admin/memberDeleteForm")
	public String memberDeleteForm(Model model) {
		List<MemberVO> list = adminService.memberList();
		model.addAttribute("list", list);
		return "admin/memberDeleteForm.tiles";
	}

	@Secured("ROLE_ADMIN")
	@RequestMapping(value = "admin/deleteMember")
	public String deleteMember(MemberVO vo, Model model) {
		adminService.deleteMember(vo);
		String name = vo.getMemberId();
		model.addAttribute("name",name);
		return "admin/member_delete_result.tiles";
	}
	
	//관리자가 크루 삭제
	@Secured("ROLE_ADMIN")
	@RequestMapping("admin/crewDeleteForm")
	public String crewDeleteForm(Model model) {
		List<CrewVO> list = adminService.crewList();
		model.addAttribute("list",list);
		return "admin/crewDeleteForm.tiles";
	}
	
	@Secured("ROLE_ADMIN")
	@RequestMapping("admin/deleteCrew")
	public String deleteCrew(CrewVO vo, Model model) {
		adminService.deleteCrew(vo);
		String name = vo.getCrewName();
		model.addAttribute("name",name);
		return "admin/crew_delete_result.tiles";
	}
}
