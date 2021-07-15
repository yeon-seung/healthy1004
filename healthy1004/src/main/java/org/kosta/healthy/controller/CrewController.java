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
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CrewController {
	@Resource
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
//		if (crewService.crewMemberCheck(hashMap))	{ // 이미 참가한 크루면 가입 불가 -- 리스트에서 안보여주기때문에 안걸리는 조건임
//			return "crew_board/crewJoin_fail_joined";
//		} else if (crewService.countCrewMember(crewId) >= crewService.getCrewSize(crewId)) { //정원이 차있는 크루면 가입 불가

		if (crewService.countCrewMember(crewId) >= crewService.getCrewSize(crewId)) { //정원이 차있는 크루면 가입 불가
			return "crew_board/crewJoin_fail_full";
		}
		else {
			crewService.joinCrew(hashMap);
			crewService.addCrewMember(crewId);
			return "crew_board/crewJoin_ok";
		}
	}
	
	//내가 가입한 크루리스트
	@RequestMapping("/getMyCrewList")
	@ResponseBody
	public List<CrewVO> getMyCrewList(String memberId, Model model,HttpServletRequest request){
		List<CrewVO> list = crewService.getMyCrewList(memberId);
		return list;	
	}
	
	//크루 생성 폼으로 이동
	@RequestMapping("/createCrewForm")
	public String createCrewForm() {
		return "crew_board/createCrewForm.tiles";
	}

	//크루 생성
	@RequestMapping(value = "/createCrew", method = RequestMethod.POST)
	public String createCrew(CrewVO cvo) {		
		crewService.createCrew(cvo);
		MemberVO pvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("crewId", cvo.getCrewId());
		hashMap.put("memberId", pvo.getMemberId());
		crewService.joinCrew(hashMap);
		crewService.addCrewMember(cvo.getCrewId());
		return "crew_board/createCrewResult";
	}

}
