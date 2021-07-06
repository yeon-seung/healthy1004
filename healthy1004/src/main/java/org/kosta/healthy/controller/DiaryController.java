package org.kosta.healthy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.DiaryMapper;
import org.kosta.healthy.model.service.DiaryService;
import org.kosta.healthy.model.vo.DiaryVO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DiaryController {
	@Resource
	private DiaryService diaryService;
	@ResponseBody
	@RequestMapping("/getUserDiary") 
	public List<DiaryVO> getUserDiaryById( String id,Model model) {
		//이부분 모르겠음
		List<DiaryVO> list = diaryService.getUserDiaryById(id);
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/getUserDiaryTest") 
	public List<DiaryVO> getUserDiaryByIdTest() {
		List<DiaryVO> list = diaryService.getUserDiaryByIdTest();
		return list;
	}

	@ResponseBody
	@RequestMapping(value = "/diary/registerDiary", method = RequestMethod.POST)
	public void registerDiary(DiaryVO dvo) {
		diaryService.registerDiary(dvo);
	}
}
