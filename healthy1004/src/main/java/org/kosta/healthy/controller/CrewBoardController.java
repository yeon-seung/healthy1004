package org.kosta.healthy.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.kosta.healthy.model.service.CrewBoardService;
import org.kosta.healthy.model.vo.CrewBoardVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.kosta.healthy.utils.PagingVO;
import org.kosta.healthy.utils.UpLoadFileUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class CrewBoardController {
	@Resource
	private CrewBoardService crewBoardService;

	// 크루 보드 페이징
	@RequestMapping("crew_board_paging")
	public String findCrewBoardListPagingByCrewId(String crewId, PagingVO pagingvo, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage) {

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
		model.addAttribute("crewBoardListPaging", crewBoardService.findCrewBoardListPagingByCrewId(pagingvo, crewId));
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
	public RedirectView postCrewBoard(CrewBoardVO crewBoardVO, Model model, MultipartFile file, HttpServletRequest req)
			throws Exception {
		// 파일 첨부
		String uploadPath = req.getSession().getServletContext().getRealPath("/");
		String imgUploadPath = uploadPath + File.separator + "imgUpload"; // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		String ymdPath = UpLoadFileUtils.calcPath(imgUploadPath); // 위 폴더를 기준으로 연월일 폴더 생성
		String fileName = null;

		if (file.getOriginalFilename() != null && !file.getOriginalFilename().equals("")) {
			// 첨부된 파일이 이름이 없다면
			fileName = UpLoadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			// CrewImg에 원본 파일 경로 + 파일명 저장
			crewBoardVO.setBoardImg(fileName);
			// CrewThumbImg에 썸네일 파일 경로 + 썸네일 파일명 저장
			crewBoardVO.setBoardThumbImg("boardThumbnail_" + fileName);
		} else { // 첨부된 파일이 없으면
			fileName = "crew_default.png";
			crewBoardVO.setBoardImg(fileName);
			crewBoardVO.setBoardThumbImg(fileName);
		}
		System.out.println("boardfileName : " + fileName);

		MemberVO mvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
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
		return new RedirectView("crew_board_paging?crewId=" + crewId);
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
	public RedirectView updateCrewBoardPost(CrewBoardVO crewBoardVO, MultipartFile file, HttpServletRequest req) throws Exception {
		String uploadPath = req.getSession().getServletContext().getRealPath("/");
		String fileName = null;
		//새로운 파일이 등록되었는지 확인
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			//기존 파일을 삭제
			new File(uploadPath + req.getParameter("boardImg")).delete();
			new File(uploadPath + req.getParameter("boardThumbImg")).delete();
			
			//새로 첨부한 파일을 등록
			String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = UpLoadFileUtils.calcPath(imgUploadPath);
			fileName = UpLoadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			
			crewBoardVO.setBoardImg(fileName);
			crewBoardVO.setBoardThumbImg("boardThumbnail_" + fileName);
		} else { //새로운 파일이 등록되지 않았다면 기존 이미지를 그대로 사용
			crewBoardVO.setBoardImg(req.getParameter("boardImg"));
			crewBoardVO.setBoardThumbImg(req.getParameter("boardThumbImg"));
		}
		
		crewBoardService.updateCrewBoardPost(crewBoardVO);
		return new RedirectView("crew_board_detail?crewBoardId=" + crewBoardVO.getBoardId());
	}

}
