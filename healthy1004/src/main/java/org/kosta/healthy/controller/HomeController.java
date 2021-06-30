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
	@RequestMapping("contact")
	public String contact() {
		return "contact.tiles";
	}
	
	@RequestMapping("instructor")
	public String instructor() {
		return "instructor.tiles";
	}
	
	@RequestMapping("blog")
	public String blog() {
		return "blog.tiles";
	}
	
	@RequestMapping("about")
	public String about() {
		return "about.tiles";
	}
	
	@RequestMapping("course")
	public String course() {
		return "crew_board/map.tiles";
	}
	
	// MK의 게시글 작성
	@RequestMapping("board/board-form")
	public String boardForm() {
		return "crew_board/board-form.tiles";
	}
	// MK의 지도를 보기위한 컨트롤러 (삭제 요망)
	@RequestMapping("test/map")
	public String map() {
		return "test/map.tiles";
	}
	// MK의 diary를 보기위한 컨트롤러 (삭제 요망)
	@RequestMapping("test/diary")
	public String diary() {
		return "test/diary.tiles";
	}
}
