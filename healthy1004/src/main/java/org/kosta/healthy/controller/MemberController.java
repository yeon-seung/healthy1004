package org.kosta.healthy.controller;

import javax.annotation.Resource;

import org.kosta.healthy.model.service.MemberService;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Resource
	private MemberService memberService;

	// 비인증 상태에서도 접근 가능하도록 /member/ 이하로 url 등록
	@RequestMapping("member/findMemberById")
	public String findMemberById(String id, Model model) {
		MemberVO vo = memberService.findMemberById(id);
		if (vo == null)
			return "member/findMemberById_fail";
		else {
			model.addAttribute("memberVO", vo);
			return "member/findMemberById_ok";
		}
	}

	@RequestMapping("member/registerForm")
	public String registerForm() {
		return "member/registerForm.tiles";
	}

	@RequestMapping(value = "member/registerMember", method = RequestMethod.POST)
	public String register(MemberVO vo) {
		System.out.println("확인해보자국1" + vo.getPassword().length());
		memberService.registerMember(vo);
		System.out.println("확인해보자국2" + vo);
		return "redirect:/member/registerResultView?id=" + vo.getMemberId();
	}

	@RequestMapping("member/registerResultView")
	public ModelAndView registerResultView(String id) {
		MemberVO vo = memberService.findMemberById(id);
		return new ModelAndView("home.tiles", "memberVO", vo);
	}

	@RequestMapping("member/idcheckAjax")
	@ResponseBody
	public String idcheckAjax(String id) {
		return memberService.idcheck(id);
	}

	@RequestMapping("login_fail")
	public String loginFail() {
		return "member/login_fail";
	}
}
