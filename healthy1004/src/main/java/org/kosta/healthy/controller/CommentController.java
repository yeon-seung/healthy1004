package org.kosta.healthy.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.healthy.model.service.CommentService;
import org.kosta.healthy.model.vo.CommentVO;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class CommentController {
	@Resource
	private CommentService commentService;
	
	//댓글 출력
	@RequestMapping("/findCommentListByBoardId")
	@ResponseBody
	public List<CommentVO> findCommentListByBoardId(String boardId){
		List<CommentVO> list= commentService.findCommentListByBoardId(boardId);
		System.out.println("리스트가 나와?");
		return list;
	}
	
	//댓글 입력
	@RequestMapping(value = "/insertComment")
	@ResponseBody
	public String insertComment(@RequestParam String boardId, @RequestParam String commentContent) {
		
		CommentVO commentVO = new CommentVO();
		MemberVO mvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		commentVO.setBoardId(boardId);
		commentVO.setCommentContent(commentContent);
		commentVO.setMemberId(mvo.getMemberId());
		
		return CommentService.insertComment(commentVO);
		
	}
	
	
}
