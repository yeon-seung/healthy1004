
	$(document)
			.ready(
					function() {
						var checkResultId = "";
						var isCertification = false;
						var key = "";
						$("#regForm").submit(
								function() {
									if (checkResultId == "") {
										alert("모든 항목을 작성하세요");
										return false;
									}
									if ($('#name').val() == null
											|| $('#name').val() == "") {
										alert("이름을 입력해주세요");
										return false;
									}
									if ($('#password1').val() == null
											|| $('#password1').val() == "") {
										alert("비밀번호를 입력해주세요");
										return false;
									}
									if ($('#password2').val() == null
											|| $('#password2').val() == "") {
										alert("비밀번호 확인을 입력해주세요");
										return false;
									}
									if ($('#email').val() == null
											|| $('#email').val() == "") {
										alert("이메일을 입력해주세요");
										return false;
									}
									if ($('#address').val() == null
											|| $('#address').val() == "") {
										alert("주소를 입력해주세요");
										return false;
									}
									if ($('#phone').val() == null
											|| $('#phone').val() == "") {
										alert("전화번호를 입력해주세요");
										return false;
									}
									if ($('#height').val() == null
											|| $('#height').val() == "") {
										alert("키를 입력해주세요");
										return false;
									}
									if ($('#weight').val() == null
											|| $('#weight').val() == "") {
										alert("몸무게를 입력해주세요");
										return false;
									}
									if ($('#age').val() == null
											|| $('#age').val() == "") {
										alert("나이를 입력해주세요");
										return false;
									}
									//
									if ($('#height').val() == null
											|| $('#height').val() < 0) {
										alert("키는 0cm이상이어야 합니다.");
										return false;
									}
									if ($('#weight').val() == null
											|| $('#weight').val() <0) {
										alert("몸무게는 0kg 이상이어야 합니다.");
										return false;
									}
									if ($('#age').val() == null
											|| $('#age').val() <0) {
										alert("나이는 0살 이상이어야 합니다.");
										return false;
									}
									//
									if (isCertification == false) {
										alert("메일 인증이 완료되지 않았습니다.");
										return false;
									}
									$("#email").val($("#email").val() + "@" + $(".domain").val());	
								});
						$("#regForm :input[name=memberId]")
								.keyup(
										function() {
											var id = $(this).val().trim();
											if (id.length<4 || id.length>10) {
												$("#idCheckView")
														.html(
																"아이디는 4글자 이상 10글자 이하여야 합니다")
														.css("color", "skyblue");
												checkResultId = "";
												return;
											}
											// spring security 적용시 ajax post 방식은 아래와 같이 beforeSend property에서 csrf 값을 셋팅해야 함 
											$
													.ajax({
														type : "post",
														url : "/member/idcheckAjax",
														data : "id=" + id,
														success : function(data) {
															if (data == "fail") {
																$(
																		"#idCheckView")
																		.html(
																				id
																						+ " 사용불가!")
																		.css(
																				"color",
																				"red");
																checkResultId = "";
															} else {
																$(
																		"#idCheckView")
																		.html(
																				id
																						+ " 사용가능!")
																		.css(
																				"color",
																				"blue");
																checkResultId = id;
															}
														}//callback			
													});//ajax
										});//keyup

						$("#sendMail")
								.click(
										function() {
											var mail = $("#email").val(); //사용자의 이메일 입력값
											if (mail == "") {
												alert("메일이 입력되지 않았습니다.");
											} else {
												mail = mail + "@"
														+ $(".domain").val();
												$
														.ajax({
															type : 'post',
															url : '/member/CheckMail',
															data : {
																mail : mail
															},
															async : "false",
															dataType : 'json',
															success : function(
																	data) {
																key = data.key;
															}
														});
												alert("인증번호가 전송되었습니다. 이메일을 확인해주세요.");
												$(".compare").css("display",
														"inline");
												$(".compare-text").css(
														"display", "inline");
											}
										});
						$(".compare").on(
								"propertychange change keyup paste input",
								function() {
									if ($(".compare").val() == key) {
										$(".compare-text").text("인증 성공").css(
												"color", "blue");
										isCertification = true;
									} else {
										$(".compare-text").text("인증번호 불일치")
												.css("color", "red");
										isCertification = false;
									}
								});
					});//ready 
	$(function() {
		$('#password2').blur(function() {
			if ($('#password1').val() != $('#password2').val()) {
				if ($('#password2').val() != '') {
					alert("비밀번호가 일치하지 않습니다.");
					$('#password2').val('');
					$('#password2').focus();
				}
			}
		})
	});