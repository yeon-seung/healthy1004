package org.kosta.healthy.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value={"/", "home"})
	public String home() {
		//spring security 권한 출력
		System.out.println("home "+SecurityContextHolder.getContext().getAuthentication().getPrincipal());
		return "home.tiles";
	}
	
	@RequestMapping("mypage") //마이페이지
	public String mypage() {
		return "member/mypage.tiles";
	}
	
	@RequestMapping("diary") //다이어리
	public String diary() {
		return "diary/diary.tiles";
	}
	
	@RequestMapping("crewfind") //크루 구하기
	public String crewfind() {
		return "crew_board/crewfind.tiles";
	}
	

	@RequestMapping("registerForm") //회원가입
	public String signup() {
		return "member/registerForm.tiles";
	}
	
	@RequestMapping("accessDeniedView") //로그인 하였으나 권한 없는 요청할 때 페이지
	public String accessDeniedView() {
		return "auth/accessDeniedView";
	}
	
	@RequestMapping("admin")
	public String adminMain() {
		return "admin/admin_home.tiles";
	}
}
