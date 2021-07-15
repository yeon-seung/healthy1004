package org.kosta.healthy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.service.CrewBoardService;
import org.kosta.healthy.model.vo.CrewBoardVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.utils.PagingVO;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class CrewBoardController {
	@Resource
	private CrewBoardService crewBoardService;
	
	//크루 보드 페이징
		@RequestMapping("crew_board_paging")
		public String findCrewBoardListPagingByCrewId(String crewId, PagingVO pagingvo, Model model
				, @RequestParam(value="nowPage", required=false)String nowPage
				, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
			
				int total = crewBoardService.countCrewBoard(crewId);
				if (nowPage == null && cntPerPage == null) {
					nowPage = "1";
					cntPerPage = "3";
				} else if (nowPage == null) {
					nowPage = "1";
				} else if (cntPerPage == null) { 
					cntPerPage = "3";
				}
				pagingvo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
				model.addAttribute("paging", pagingvo);
				model.addAttribute("crewBoardListPaging", crewBoardService.findCrewBoardListPagingByCrewId(pagingvo,crewId));
				model.addAttribute("crewId", crewId);
				
				return "crew_board/crew_board_paging.tiles";
		}
	
	// 게시글 상세 보기
	@Transactional
	@RequestMapping("crew_board_detail")
	public String findCrewBoardByCrewBoardId(String crewBoardId, Model model) {
		CrewBoardVO crewBoardDetail = crewBoardService.findCrewBoardByCrewBoardId(crewBoardId);
		model.addAttribute("crewBoard", crewBoardDetail);
		model.addAttribute("crewVO", crewBoardService.findCrewByCrewId(crewBoardDetail.getCrewId()));
		return "crew_board/crew_board_details.tiles";
	}
	
	// 게시글 작성 폼으로
	@RequestMapping("postCrewBoardForm")
	public String postCrewBoardForm(String crewId, Model model) {
		model.addAttribute("crewId", crewId);
		return "crew_board/board-form.tiles";
	}
	
	// 게시글 작성 (Post와 redirect로...)
	@PostMapping("postCrewBoard")
	public RedirectView postCrewBoard(CrewBoardVO crewBoardVO, Model model) {
		MemberVO mvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("안녕하시짖요?? " + mvo);
		crewBoardVO.setMemberId(mvo.getMemberId());
		crewBoardService.postCrewBoard(crewBoardVO);
		// detail에서는 board_id가 필요함 -> 그러나 우리가 가진 CrewBoardVO에서는 board_id가 없음
		// 그래서 select key키를 써야함.
		return new RedirectView("crew_board_detail?crewBoardId=" + crewBoardVO.getBoardId());
	}
	
	// 게시글 삭제
	@PostMapping("deleteCrewBoardPost")
	public RedirectView deleteCrewBoardPost(String boardId, String crewId, Model model) {
		crewBoardService.deleteCrewBoardPost(boardId);
		return new RedirectView("crew_board?crewId="+crewId);
	}
	
	// 게시글 수정 폼으로 이동
	@RequestMapping("updateCrewBoardPostForm")
	public String updateCrewBoardPostForm(CrewBoardVO crewBoardVO, Model model) {
//		System.out.println(crewBoardVO);
		model.addAttribute("crewBoardVO", crewBoardVO);
		return "crew_board/board-update-form.tiles";
	}
	
	// 게시글 수정
	@PostMapping("updateCrewBoardPost")
	public RedirectView updateCrewBoardPost(CrewBoardVO crewBoardVO) {
		crewBoardService.updateCrewBoardPost(crewBoardVO);
		return new RedirectView("crew_board_detail?crewBoardId=" + crewBoardVO.getBoardId());
	}
	
}
