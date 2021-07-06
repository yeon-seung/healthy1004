package org.kosta.healthy.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	/*
	 * @RequestMapping("/joinCrew") // @ResponseBody public void
	 * joinCrew(HttpServletRequest request, MemberVO memberVO) { MemberVO pvo =
	 * (MemberVO)
	 * SecurityContextHolder.getContext().getAuthentication().getPrincipal(); //
	 * String mId = pvo.getMemberId(); // String cId =
	 * request.getParameter("crewId"); // System.out.println(mId + " " + cId); //
	 * Map<String, String> map = new HashMap<String, String>(); // map.put("item1",
	 * mId); // map.put("item2", cId); CrewMemberVO cmvo = new CrewMemberVO();
	 * cmvo.setCrewId(null); cmvo.setMemberId(null); cmvo.setJoinDate(null);
	 * crewMapper.joinCrew(cmvo);
	 * 
	 * }
	 */
	@RequestMapping(value = "/joinCrew", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
//	@ResponseBody
	public void joinCrew(@RequestParam(value = "crewId") int crewId, HttpSession session) {
//      int mno = (Integer)session.getAttribute("memberId");
//      JSONObject obj = new JSONObject();
		MemberVO pvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("crewId", crewId);
		hashMap.put("memberId", pvo.getMemberId());
		crewMapper.joinCrew(hashMap);
		
//      if(liketoProc.countbyLike(hashMap)==0) {
//        liketoProc.create(hashMap);
//      }

//      LiketoVO liketoVO = liketoProc.read(hashMap);
//      BoardVO boardVO = boardProc.read(boardno);
//      MemberVO memberVO = memberProc.read(mno);

	}

}
