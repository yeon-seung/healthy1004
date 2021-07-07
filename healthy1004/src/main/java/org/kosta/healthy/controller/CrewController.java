package org.kosta.healthy.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.service.CrewService;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CrewController {
	@Resource
//	private CrewMapper crewMapper;
	private CrewService crewService;

	@RequestMapping("/findCrewListByName")
	@ResponseBody
	public Object findCrewListByName(String crewSearchName) {
		return crewService.findCrewListByName(crewSearchName);
	}

	@RequestMapping("/getAllCrewList")
	@ResponseBody
	public List<CrewVO> getAllCrewList() {
		return crewService.getAllCrewList();
	}
	
//	@Secured("ROLE_MEMBER")
	@SuppressWarnings("unused")
	@RequestMapping(value = "/joinCrew", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
//	@ResponseBody
	public String joinCrew(@RequestParam(value = "crewId") String crewId, HttpSession session) {
		MemberVO pvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("crewId", crewId);
		hashMap.put("memberId", pvo.getMemberId());
		System.out.println("크루아이디: " +hashMap.get("crewId") +", 멤버아이디: " + hashMap.get("memberId"));
		crewService.joinCrew(hashMap);
		if (pvo == null)	// 세션정보 없거나 이미 참가한 크루면 fail 로 이동하도록~ 할 예정
//		if (pvo == null || crewService.crewMemberCheck(hashMap)	// 세션정보 없거나 이미 참가한 크루면 fail 로 이동하도록~ 할 예정
			return "crew_board/crewJoin_fail";
		else 
			return "crew_board/crewJoin_ok";
	}
 
}
