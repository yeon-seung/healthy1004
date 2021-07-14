package org.kosta.healthy.model.service;

import java.util.List;

import org.kosta.healthy.model.vo.CommentVO;

public interface CommentService {

	List<CommentVO> findCommentListByBoardId(String boardId);

	
}