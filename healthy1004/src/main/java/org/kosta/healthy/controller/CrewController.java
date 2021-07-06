package org.kosta.healthy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.vo.CrewVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
    @RequestMapping("/joinCrew")
//	@ResponseBody
    public void joinCrew(HttpServletRequest request, Model model) {
        String mId = request.getParameter("memberId");
        String cId = request.getParameter("crewId");
        
        Map<String, String> map = new HashMap<String, String>();
        map.put("item1", mId);
        map.put("item2", cId);
        
        crewMapper.joinCrew(map);
        
    }


}
