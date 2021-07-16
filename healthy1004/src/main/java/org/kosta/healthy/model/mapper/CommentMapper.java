package org.kosta.healthy.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.CommentVO;

@Mapper
public interface CommentMapper {
	
	//댓글 갯수
	int commentCount();
	
	//댓글 목록
	List<CommentVO> findCommentListByBoardId(String boardId);
	
	//댓글 삽입
	void insertComment(CommentVO commentVO);
}
