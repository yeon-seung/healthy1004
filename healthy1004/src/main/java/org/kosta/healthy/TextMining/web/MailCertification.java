package org.kosta.healthy.TextMining.web;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MailCertification {
	@Autowired
	private JavaMailSender javaMailSender;

	@PostMapping("/member/CheckMail")
	public Map<String, Object> SendMail(String mail, HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		Random random = new Random();
		String key = "";
		
		
		for (int i = 0; i < 3; i++) {
			int index = random.nextInt(25) + 65; // A~Z까지 랜덤 알파벳 생성
			key += (char) index;
		}
		int numIndex = random.nextInt(8999) + 1000; // 4자리 정수를 생성
		key += numIndex;
		String content =
				"<html><body style=\\\"font-family: Arial, '맑은 고딕'>"
						+ "<div style=\"width: 540px; height: 600px; border-top: 4px solid #007bff;  margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">"
						+ "	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">"
						+ "		<span style=\"font-size: 20px; margin: 0 0 10px 3px;\"><b>Healthy1004</span></b><br />"
						+ "		<span style=\"color: #007bff;\"><b>인증 번호</b></span> 안내입니다." + "	</h1>"
						+ "	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">"
						+ "		안녕하세요.<br />" + " 회원가입을 위한 인증 번호가 생성되었습니다.<br />"
						+ "		아래 <b style=\"color: #007bff;\">'인증 번호'</b>를 확인한 뒤, 인증을 완료해주세요.<br />"
						+ "		감사합니다." + "	</p>"
						+ "	<p style=\"font-size: 16px; margin: 40px 5px 20px; line-height: 28px;\">"
						+ "		인증 번호: <br />"
						+ "		<span style=\"font-size: 24px;\">"
						+ key
						+ "</span>\r\n" + "	</p>"
						+ "	<div style=\"border-top: 1px solid #DDD; padding: 10px;\">"
						+ "</div>" + "</div></body></html>";
//		message.setText("인증번호 : " + key);
		
		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper helper;
		try {
			helper = new MimeMessageHelper(mimeMessage, true, "utf-8");
			helper.setText(content, true);	// HTML
			helper.setTo(mail); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
			helper.setSubject("HealthySexy 회원가입 인증 번호 메일입니다.");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		javaMailSender.send(mimeMessage);
		
		map.put("key", key);

		return map;
	}
}
