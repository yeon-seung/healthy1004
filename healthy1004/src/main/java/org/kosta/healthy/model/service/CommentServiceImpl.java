package org.kosta.healthy.model.service;


import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.CommentMapper;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {
	@Resource
	private CommentMapper commentMapper;

	
}
