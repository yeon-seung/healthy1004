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
	public List<DiaryVO> getUserDiaryById(String memberId) {
		return diaryMapper.getUserDiaryById(memberId);
	}
	@Override
	public void registerDiary(DiaryVO dvo) {
		diaryMapper.registerDiary(dvo);
	}
	@Override
	public void updateDiary(DiaryVO dvo) {
		diaryMapper.updateDiary(dvo);
		
	}
	@Override
	public void deleteDiary(String diaryId) {
		diaryMapper.deleteDiary(diaryId);	
	}

}
