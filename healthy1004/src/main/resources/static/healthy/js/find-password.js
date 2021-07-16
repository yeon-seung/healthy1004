$(document).ready(function() {

	$("#checkAccount").click(function(){
    	let memberId = $("#memberId").val();
		let email = $("#email").val();
		if(memberId == "" || memberId == null){
			alert("id를 입력해주세요.");
			return;
		}
		if(email == "" || email == null){
			alert("email을 입력해주세요.");
			return;
		}

		$.ajax({
			type: "get",
			url: "/member/checkAccount",
			data: {
				"memberId": memberId,
				"email": email
			},
			success: function(result){
				if(result == 1){
					$.ajax({
						type: "post",
						url: "/member/changeTempPasswordAndSendMail",
						data:{
							"memberId": memberId,
							"email": email
						},
					})
					alert("입력하신 이메일로 임시비밀번호가 발송되었습니다. \n(최대 2분정도 소요될 수 있습니다.)");
					location.href="/home";
				}else{
					alert("일치하는 정보가 없습니다. \n아이디와 이메일을 다시 한 번 확인해주세요.");
				}
			}
		})// ajax end
	});// checkAccount click end
	
	$("#turnBack").click(function(){
		history.back();
	})// turnBack click end
})