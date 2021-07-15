package org.kosta.healthy.controller;

import java.util.List;

import javax.annotation.Resource;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.service.AdminService;
import org.kosta.healthy.model.service.MemberService;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.utils.PagingVO;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
	/* 
	 * @Secure 어노테이션: 인가 처리하는 어노테이션 - 권한이 부여된 사람들만 서비스를 제공받도록 설정한다 
	 * @Secured("ROLE_ADMIN") -> ROLE_ADMIN 권한이 있는 접속자만 서비스를 받을 수 있다 
										 인가가 되지 않은 경우에는 WebSecurityConfig에서 설정한 대로 
										 accessDeniedPage("/accessDeniedView") 로 이동한다 
	 */
	@Resource
	private AdminService adminService;
	
	@Secured("ROLE_ADMIN")
	@RequestMapping("admin")
	public String adminMain() {
		// 구현내용 
		return "admin/admin_home.tiles";
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
	
	//페이징 적용시킨 탈퇴시키기
		@Secured("ROLE_ADMIN")
		@RequestMapping("admin/memberDeleteFormPaging")
		public String memberDeleteFormPaging(PagingVO vo, Model model
				, @RequestParam(value="nowPage", required=false)String nowPage
				, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
			
			int total = adminService.countMember();
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "5";
			} else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "5";
			}
			vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			model.addAttribute("paging", vo);
			model.addAttribute("listpaging", adminService.memberListPaging(vo));
			return "admin/memberDeleteFormPaging.tiles";
		}
		
		@Secured("ROLE_ADMIN")
		@RequestMapping("admin/deleteMember")
		public String deleteMember(MemberVO vo, Model model) {
			adminService.deleteMember(vo);
			String name = vo.getMemberId();
			model.addAttribute("name",name);
			return "admin/member_delete_result.tiles";
		}
}
