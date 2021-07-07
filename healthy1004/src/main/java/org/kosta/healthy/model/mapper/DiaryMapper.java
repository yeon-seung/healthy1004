package org.kosta.healthy.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.healthy.model.vo.DiaryVO;

@Mapper
public interface DiaryMapper {

	List<DiaryVO> getUserDiaryById(String id);
	
	List<DiaryVO> getUserDiaryByIdTest();

	void registerDiary(DiaryVO dvo);
	
	void updateDiary(DiaryVO dvo);

	void deleteDiary(DiaryVO dvo);
}
