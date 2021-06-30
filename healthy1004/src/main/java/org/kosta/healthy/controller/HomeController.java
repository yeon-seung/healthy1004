package org.kosta.healthy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value={"/", "home"})
	public String home() {
		return "home.tiles";
	}
	
	// 임의 이름임.
	// 변경 사항 -> jsp 명, header의 a태그 href 속성
	
	@RequestMapping("mypage") //마이페이지
	public String instructor() {
		return "member/mypage.tiles";
	}
	
	@RequestMapping("diary") //다이어리
	public String about() {
		return "diary/diary.tiles";
	}
	
	@RequestMapping("crewfind") //크루 구하기
	public String course() {
		return "crew_board/crewfind.tiles";
	}
}
