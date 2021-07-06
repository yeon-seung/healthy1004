package org.kosta.healthy.model.service;


import java.util.List;

import org.kosta.healthy.model.vo.DiaryVO;


public interface DiaryService {
	
	List<DiaryVO> getUserDiaryById(String id); 
	
	List<DiaryVO> getUserDiaryByIdTest();

	void registerDiary(DiaryVO dvo);
}