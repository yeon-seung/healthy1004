package org.kosta.healthy.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.kosta.healthy.model.service.MemberService;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

	// member/**은 자유 접근 가능하므로, role_member를 줘서 가입자만 접근하게 한다.
	// mbmer/**를 빼도 되지만 member관련이므로 살려둔다.
	@Secured("ROLE_MEMBER")
	@PostMapping("member/updateForm")
	public String updateForm(String memberId, String password) {
		MemberVO mvo = memberService.findMemberById(memberId);	// 현재 로그인한 회원 객체 (getPrincipal()로 해도 되지만, form에서 받아오기떄문에 사용할게요~)
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(); // 복호화된 비번과 입력받은 비번을 비교하기 위해서 BCryptPasswordEncoder 객체 가져옴
		
		// 입력된 비번과 DB에 저장된 암호화된 비번 비교
		if(encoder.matches(password, mvo.getPassword())) { // 계정 정보가 일치해서 true면
			return "member/updateForm.tiles";
		}else {// 계정 정보 일치하지 않아서 false면
			return "member/checkMember-fail.tiles";
		}
		
	}
	
	// 비밀번호 확인 후, 회원정보 수정으로 가도록
	@Secured("ROLE_MEMBER")
	@RequestMapping("member/checkPasswordForm")
	public String checkPasswordForm() {
		return "member/checkMemberForm.tiles";
	}

	@Secured("ROLE_MEMBER")
	@RequestMapping("member/updateMemberAction")
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

	// 회원탈퇴
	@Secured("ROLE_MEMBER")
	@RequestMapping("member/selfdelete")
	public String selfdelete(String id, Model model) {
		int result = memberService.selfdelete(id);
		if (result > 0) {
			SecurityContextHolder.clearContext();
			model.addAttribute("id", id);
			return "member/selfdelete_result.tiles";
		} else {
			return "member/selfdelete_fail";
		}
	}

	// 비밀번호를 찾기 위한 기능들. . .
	@RequestMapping("member/findPasswordForm")
	public String findPasswordForm() {
		return "member/find-password-form.tiles";
	}

	@RequestMapping("member/checkAccount") // -> url 접근은??
	@ResponseBody
	public int checkAccount(String memberId, String email) {
		return memberService.checkAccount(memberId, email);
	}

	@PostMapping("member/changeTempPasswordAndSendMail")
	@ResponseBody
	public void changeTempPasswordAndSendMail(String memberId, String email) {
		memberService.changeTempPasswordAndSendMail(memberId, email);
	}

}
