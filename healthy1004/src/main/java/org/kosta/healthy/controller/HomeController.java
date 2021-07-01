package org.kosta.healthy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value={"/", "home"})
	public String home() {
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
	
	@RequestMapping("signup") //크루 구하기
	public String signup() {
		return "member/signup.tiles";
	}
}
