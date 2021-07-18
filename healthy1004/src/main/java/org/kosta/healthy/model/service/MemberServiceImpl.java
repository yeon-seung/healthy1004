package org.kosta.healthy.model.service;

import java.util.List;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.mapper.MemberMapper;
import org.kosta.healthy.model.vo.Authority;
import org.kosta.healthy.model.vo.CrewVO;
import org.kosta.healthy.model.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberServiceImpl implements MemberService {
	@Resource
	private MemberMapper memberMapper;
	@Resource
	private CrewMapper crewMapper;
	
	@Resource
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private JavaMailSender javaMailSender;
	
	@Override
	public MemberVO findMemberById(String id) {
		return memberMapper.findMemberById(id);
	}
	
	@Transactional
	@Override
	public void registerMember(MemberVO vo) {
		// 비밀번호를 bcrypt 알고리즘으로 암호화하여 DB에 저장한다
		String encodedPwd = passwordEncoder.encode(vo.getPassword());
		vo.setPassword(encodedPwd);
		memberMapper.registerMember(vo);
		// 회원 가입시 반드시 권한이 등록되도록 트랜잭션처리를 한다
		Authority authority = new Authority(vo.getMemberId(), "ROLE_MEMBER");
		memberMapper.registerRole(authority);
	}
	
	@Override
	public String idcheck(String id) {
		int count = memberMapper.idcheck(id);
		return (count == 0) ? "ok" : "fail";
	}

	@Override
	public List<Authority> selectAuthorityByUsername(String username) {
		return memberMapper.selectAuthorityByUsername(username);
	}

	@Override
	public void updateMember(MemberVO vo) {
		// 변경할 비밀번호를 암호화한다
		String encodePassword = passwordEncoder.encode(vo.getPassword());
		vo.setPassword(encodePassword);
		System.out.println("noob");
		memberMapper.updateMember(vo);
	}
	
	@Override
	public int selfdelete(String id) {
		List<CrewVO> list = crewMapper.getMyCrewList(id);
		for (int i = 0; i < list.size(); i++) {
			crewMapper.removeCrewMember(list.get(i).getCrewId());
		}
		return memberMapper.selfdelete(id);
	}

	@Override
	public int checkAccount(String memberId, String email) {
		return memberMapper.checkAccount(memberId, email);
	}

	@Override
	public void changeTempPasswordAndSendMail(String memberId, String email) {
		String tempPwd = getTempPassword();							// 임시 비밀번호를 생성
		updateMemberPassword(memberId, tempPwd);					// 생성된 비밀번호를 암호화해서 update
		// 생성된 비밀번호를 암호화하지 않고 메일로 전송 
		String content =
				"<html><body style=\\\"font-family: Arial, '맑은 고딕'>"
						+ "<div style=\"width: 540px; height: 600px; border-top: 4px solid #007bff;  margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">"
						+ "	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">"
						+ "		<span style=\"font-size: 20px; margin: 0 0 10px 3px;\"><b>Healthy1004</span></b><br />"
						+ "		<span style=\"color: #007bff;\"><b>임시 비밀번호</b></span> 안내입니다." + "	</h1>"
						+ "	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">"
						+ "		안녕하세요.<br />" + " 임시 비밀번호가 생성되었습니다.<br />"
						+ "		아래 <b style=\"color: #007bff;\">'임시 비밀번호'</b>를 확인한 뒤, 로그인을 완료해주세요.<br />"
						+ " 또한 로그인 후, 보안을 위해 마이페이지에서 비밀번호를 변경해주세요.<br/>"
						+ "		감사합니다." + "	</p>"
						+ "	<p style=\"font-size: 16px; margin: 40px 5px 20px; line-height: 28px;\">"
						+ "		임시 비밀번호: <br />"
						+ "		<span style=\"font-size: 24px;\">"
						+ tempPwd
						+ "</span>\r\n" + "	</p>"
						+ "	<div style=\"border-top: 1px solid #DDD; padding: 10px;\">"
						+ "</div>" + "</div></body></html>";
		
		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper helper;
		try {
			helper = new MimeMessageHelper(mimeMessage, true, "utf-8");
			helper.setText(content, true);	// HTML
			helper.setTo(email); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
			helper.setSubject("HealthySexy 임시 비밀번호 메일입니다.");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		javaMailSender.send(mimeMessage);
	}
	
	// 임시 비밀번호를 생성하기 위한 메서드 
	public String getTempPassword() {
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
				'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
				'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 
				'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
				'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
                '!', '@', '#', '^', '*'};

        String tempPwd = "";

        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            tempPwd += charSet[idx];
        }
        return tempPwd;
	}
	// 비밀번호 암호화 후 업데이트하기 위한 메서드
	@Override
	public void updateMemberPassword(String memberId, String password){
		String encodeTempPassword = passwordEncoder.encode(password); 		// 비밀번호 암호화
		memberMapper.updateMemberPassword(memberId, encodeTempPassword);	// DB에 암호화된 비밀번호 업데이트.
    }
	
}
