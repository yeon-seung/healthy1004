package org.kosta.healthy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.service.CrewBoardService;
import org.kosta.healthy.model.vo.CrewBoardVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class CrewBoardController {
	@Resource
	private CrewBoardService crewBoardService;
	
	// 크루 id에 맞는 크루 게시글 리스트 보여주기
	/*
	 * @RequestMapping("crew_board") public String findCrewBoardListByCrewId(String
	 * crewId, Model model) { //model.addAttribute("crewBoardList",
	 * crewBoardService.findCrewBoardListByCrewId(crewId)); return
	 * "crew_board/crew_board.tiles"; }
	 */
	@RequestMapping("crew_board")
	public String findCrewBoardListByCrewIdTest(String crewId, Model model) {
		//List<CrewBoardVO> crewBoardList = crewBoardService.findCrewBoardListByCrewIdTest(crewId);
		System.out.println(crewId);
		List<CrewBoardVO> crewBoardList = crewBoardService.findCrewBoardListByCrewId(crewId);
		//System.out.println("안녕" + crewBoardList);
		model.addAttribute("crewBoardList", crewBoardList);
		return "crew_board/crew_board.tiles";
	}
	
	// 게시글 상세 보기
	@RequestMapping("crew_board_detail")
	public String findCrewBoardByCrewBoardId(String crewBoardId, Model model) {
		//System.out.println(crewBoardService.findCrewBoardByCrewBoardId(crewBoardId));
		CrewBoardVO crewBoardDetail = crewBoardService.findCrewBoardByCrewBoardId(crewBoardId);
		model.addAttribute("crewBoard",  crewBoardDetail);
		model.addAttribute("crewVO", crewBoardService.findCrewByCrewId(crewBoardDetail.getCrewId()));
		return "crew_board/crew_board_details.tiles";
	}
	
	// 게시글 작성 폼으로
	@RequestMapping("postCrewBoardForm")
	public String postCrewBoardForm() {
		return "crew_board/board-form.tiles";
	}
	
	// 게시글 작성 (Post와 redirect로...)
	@PostMapping("postCrewBoard")
	public RedirectView postCrewBoard(CrewBoardVO crewBoardVO, Model model) {
		crewBoardService.postCrewBoard(crewBoardVO);
		model.addAttribute("crewBoardId", crewBoardVO.getBoardId());
		return new RedirectView("crew_board_detail.tiles");
	}
}
