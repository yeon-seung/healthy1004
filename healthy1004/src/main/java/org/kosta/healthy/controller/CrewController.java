package org.kosta.healthy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.vo.CrewVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CrewController {
	@Resource
	private CrewMapper crewMapper;

	@RequestMapping("/findCrewListByName")
	@ResponseBody
	public Object findCrewListByName(String crewSearchName) {
		return crewMapper.findCrewListByName(crewSearchName);
	}
	
	@RequestMapping("/getAllCrewList")
	@ResponseBody
	public List<CrewVO> getAllCrewList() {
		return crewMapper.getAllCrewList();
	}
}
