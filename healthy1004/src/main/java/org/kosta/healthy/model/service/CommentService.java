package org.kosta.healthy.model.service;

import java.util.List;

import org.kosta.healthy.model.vo.CommentVO;
import org.kosta.healthy.model.vo.CrewBoardVO;

public interface CommentService {

	List<CommentVO> findCommentListByBoardId(String boardId);
	
	void insertComment(CommentVO commentVO);
	
}