package org.kosta.healthy.TextMining.web;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MailCertification {
	@Autowired
	private JavaMailSender javaMailSender;
	
	@PostMapping("/member/CheckMail")
	public Map<String,Object> SendMail(String mail,HttpSession session) {
		Map<String,Object> map = new HashMap<>();
		Random random = new Random();
		String key = "";
		
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(mail); //스크립트에서 보낸 메일을 받을 사용자 이메일 주소
		for(int i = 0; i < 3; i++) {
			int index = random.nextInt(25)+65; //A~Z까지 랜덤 알파벳 생성
			key += (char)index;
		}
		int numIndex = random.nextInt(8999)+1000; //4자리 정수를 생성
		key += numIndex;
		message.setSubject("HealthySexy 인증번호를 위한 메일");
		message.setText("인증번호 : " + key);
		javaMailSender.send(message);
		map.put("key", key);
		
		return map;
	}
}
