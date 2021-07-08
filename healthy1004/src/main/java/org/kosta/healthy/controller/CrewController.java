package org.kosta.healthy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.service.CrewService;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CrewController {
	@Resource
//	private CrewMapper crewMapper;
	private CrewService crewService;
	
	//검색 후 크루리스트 - 참가한 크루는 제외
	@RequestMapping("/findCrewListByName")
	@ResponseBody
	public List<CrewVO> findCrewListByName(@RequestParam Map<String, Object> findCrew) {
		List<CrewVO> list =  crewService.findCrewListByName(findCrew);
		return list;
	}
	
	//전체 크루리스트 - 참가한 크루는 제외
	@RequestMapping("/getAllCrewList")
	@ResponseBody
	public List<CrewVO> getAllCrewList(String memberId) {
		List<CrewVO> list = crewService.getAllCrewList(memberId);
		return list;
	}
	
//	@RequestMapping(value = "/crewMemberCheck", method = RequestMethod.POST)
//	public boolean crewMemberCheck(@RequestParam(value = "crewId") String crewId, HttpSession session ) {
//		MemberVO pvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		HashMap<String, Object> hashMap = new HashMap<String, Object>();
//		hashMap.put("crewId", crewId);
//		hashMap.put("memberId", pvo.getMemberId());
//		System.out.println("엥??");
//		System.out.println("중복확인 위한 크루아이디: " +hashMap.get("crewId") +", 멤버아이디: " + hashMap.get("memberId"));
//		return crewService.crewMemberCheck(hashMap);
//	}
	
	

	// 크루참가
//	@Secured("ROLE_MEMBER")
//	@SuppressWarnings("unused")
	@RequestMapping(value = "/joinCrew", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
//	@ResponseBody
	public String joinCrew(@RequestParam(value = "crewId") String crewId, HttpSession session) {
		MemberVO pvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("crewId", crewId);
		hashMap.put("memberId", pvo.getMemberId());
		System.out.println("크루아이디: " +hashMap.get("crewId") +", 멤버아이디: " + hashMap.get("memberId"));
		if (pvo == null || crewService.crewMemberCheck(hashMap))	{// 세션정보 없거나 이미 참가한 크루면 안넣어줌
			return "crew_board/crewJoin_fail";
		}
		else {
			crewService.joinCrew(hashMap);
			return "crew_board/crewJoin_ok";
		}
	}
	
	//내가 가입한 크루리스트
	@RequestMapping("/getMyCrewList")
	@ResponseBody
	public List<CrewVO> getMyCrewList(String memberId, Model model,HttpServletRequest request){

		List<CrewVO> list = crewService.getMyCrewList(memberId);
		System.out.println("마이페이지 이거 나와야해ㅜㅜㅜ 젭알ㅜㅜㅜ : " +list);
		
		return list;	
	}
}
