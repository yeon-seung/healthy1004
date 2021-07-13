package org.kosta.healthy.controller;

import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.kosta.healthy.model.service.MemberService;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
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
		memberService.registerMember(vo);
		return "redirect:/member/registerResultView?id=" + vo.getMemberId();
	}

	@RequestMapping("member/registerResultView")
	public ModelAndView registerResultView(String id) {
		MemberVO vo = memberService.findMemberById(id);
		return new ModelAndView("member/register_result.tiles", "memberVO", vo);
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

	// @Secured("ROLE_MEMBER")
	@RequestMapping("member/updateForm")
	public String updateForm() {
		return "member/updateForm.tiles";
	}

	// @Secured("ROLE_MEMBER")
	@RequestMapping("updateMemberAction")
	public String updateMemberAction(HttpServletRequest request, MemberVO memberVO) {
		MemberVO pvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		memberService.updateMember(memberVO);// service에서 변경될 비밀번호를 암호화한다
		// 수정한 회원정보로 Spring Security 세션 회원정보를 업데이트한다
		pvo.setPassword(memberVO.getPassword());
		pvo.setAddress(memberVO.getAddress());
		pvo.setHeight(memberVO.getHeight());
		pvo.setWeight(memberVO.getWeight());
		pvo.setAge(memberVO.getAge());
		pvo.setPhone(memberVO.getPhone());
		return "member/update_result.tiles";
	}

	@Secured("ROLE_ADMIN")
	@RequestMapping("member/deleteForm")
	public String deleteForm(Model model) {
		List<MemberVO> list = memberService.memberList();
		model.addAttribute("list", list);
		return "member/deleteForm.tiles";
	}

	@Secured("ROLE_ADMIN")
	@RequestMapping(value = "member/deleteMember")
	public String deleteMember(MemberVO vo, Model model) {
		memberService.deleteMember(vo);
		String name = vo.getMemberId();
		model.addAttribute("name",name);
		return "member/delete_result.tiles";
	}

}
