package org.kosta.healthy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.DiaryMapper;
import org.kosta.healthy.model.service.DiaryService;
import org.kosta.healthy.model.vo.DiaryVO;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class DiaryController {
	@Resource
	private DiaryService diaryService;
	@ResponseBody
	@RequestMapping("/getUserDiary") 
	public List<DiaryVO> getUserDiaryById(String memberId) {
		System.out.println(memberId);
		List<DiaryVO> list = diaryService.getUserDiaryById(memberId);
		return list;
	}

	@PostMapping("/diary/registerDiary")
	public RedirectView registerDiary(DiaryVO dvo) {
		diaryService.registerDiary(dvo);
		return new RedirectView("/diary");
	}
	
	@PostMapping("/diary/updateDiary")
	public RedirectView updateDiary(DiaryVO dvo) {
		diaryService.updateDiary(dvo);
		return new RedirectView("/diary");
	}
	
	@PostMapping("/diary/deleteDiary")
	public RedirectView deleteDiary(String diaryId) {
		diaryService.deleteDiary(diaryId);
		return new RedirectView("/diary");
	}
}
