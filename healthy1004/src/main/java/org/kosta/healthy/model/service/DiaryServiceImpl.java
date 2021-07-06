package org.kosta.healthy.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.DiaryMapper;
import org.kosta.healthy.model.vo.DiaryVO;
import org.springframework.stereotype.Service;

@Service
public class DiaryServiceImpl implements DiaryService {
	
	@Resource
	private DiaryMapper diaryMapper;
	
	@Override
	public List<DiaryVO> getUserDiaryById(String id) {
		return diaryMapper.getUserDiaryById(id);
	}
	@Override
	public List<DiaryVO> getUserDiaryByIdTest() {
		return diaryMapper.getUserDiaryByIdTest();
	}
	@Override
	public void registerDiary(DiaryVO dvo) {
		diaryMapper.registerDiary(dvo);
	}
	

}
