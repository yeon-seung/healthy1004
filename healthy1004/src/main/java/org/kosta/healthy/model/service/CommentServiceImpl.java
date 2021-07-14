package org.kosta.healthy.model.service;


import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.CommentMapper;
import org.kosta.healthy.model.vo.CommentVO;
import org.kosta.healthy.model.vo.CrewVO;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {
	@Resource
	private CommentMapper commentMapper;

	@Override
	public List<CommentVO> findCommentListByBoardId(String boardId) {
		return commentMapper.findCommentListByBoardId(boardId);
	}
}
