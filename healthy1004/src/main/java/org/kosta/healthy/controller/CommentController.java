package org.kosta.healthy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.service.CommentService;
import org.kosta.healthy.model.service.CrewBoardService;
import org.kosta.healthy.model.vo.CrewBoardVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class CommentController {
	@Resource
	private CommentService commentService;
	
	
}
