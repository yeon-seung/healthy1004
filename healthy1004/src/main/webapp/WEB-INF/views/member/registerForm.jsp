<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script type="text/javascript">
 	$(document).ready(function(){
		var checkResultId="";		
		$("#regForm").submit(function(){				
			if(checkResultId==""){
				alert("아이디 중복확인을 하세요");
				return false;
			}		
		});
		$("#regForm :input[name=memberId]").keyup(function(){
			var id=$(this).val().trim();
			//alert("id입니댱 호호: " + id);
			if(id.length<4 || id.length>10){
				$("#idCheckView").html("아이디는 4자이상 10자 이하여야 함!").css(
						"background","pink");
				checkResultId="";
				return;
			}
			// spring security 적용시 ajax post 방식은 아래와 같이 beforeSend property에서 csrf 값을 셋팅해야 함 
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/member/idcheckAjax",				
				data:"id="+id,	
				beforeSend : function(xhr){   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                },
				success:function(data){	
					if(data=="fail"){
// 						alert("fail이여요~");
						$("#idCheckView").html(id+" 사용불가!").css("background","red");
						checkResultId="";
					}else{						
						$("#idCheckView").html(id+" 사용가능!").css(
								"background","yellow");		
						checkResultId=id;
					}					
				}//callback			
			});//ajax
		});//keyup
	});//ready 
</script>
<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">

				<h1 class="mb-0 bread">회원가입</h1>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-12">
				<div class="wrapper">
					<div class="row no-gutters">
						<div
							class="col-lg-8 col-md-7 order-md-last d-flex align-items-stretch">
							<div class="contact-wrap w-100 p-md-5 p-4">
								<h3 class="mb-4">회원가입</h3>
								<form method="POST" name="contactForm"
									class="contactForm" action="${pageContext.request.contextPath}/member/registerMember" id="regForm">
									<sec:csrfInput/>
									<div class="row">
									
										<div class="col-md-10">
											<div class="form-group">
												<label class="label" for="id">ID</label> <input
													type="text" class="form-control" name="memberId" id="id"
													placeholder="아이디를 입력하세요">
													<span id="idCheckView"></span>
											</div>
										</div>
										
									<!-- 	<div class="col-md-2">
											<div class="form-group">
												<input type="submit" value="중복확인"
													class="btn btn-primary">
												<div class="submitting"></div>
											</div>
										</div> -->
										
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="name">NAME</label> <input
													type="text" class="form-control" name="MemberName" id="name"
													placeholder="이름을 입력하세요">
											</div>
										</div>
										
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="password">PASSWORD</label> <input
													type="password" class="form-control" name="password" id="password1"
													placeholder="비밀번호를 입력하세요">
											</div>
											<div class="form-group">
												<input
													type="password" class="form-control" name="password2" id="password2"
													placeholder="비밀번호를 확인해주세요">
											</div>
										</div>
										
										<!-- <div class="col-md-2">
											<div class="form-group">
												<input type="submit" value="중복확인"
													class="btn btn-primary">
												<div class="submitting"></div>
											</div>
										</div> -->
										
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="email">Email</label> <input
													type="text" class="form-control" name="email"
													id="email" placeholder="이메일을 입력해주세요">
											</div>
										</div>
										
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="address">ADDRESS</label> <input
													type="text" class="form-control" name="address"
													id="address" placeholder="주소를 입력해주세요">
											</div>
										</div>
										
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="phone">PHONE</label> <input
													type="text" class="form-control" name="phone"
													id="phone" placeholder="전화번호를 입력해주세요">
											</div>
										</div>
										
										<div class="col-md-4">
											<div class="form-group">
												<label class="label" for="height">HEIGHT</label> <input
													type="text" class="form-control" name="height"
													id="height" placeholder="키를 입력해주세요">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="label" for="weight">WEIGHT</label> <input
													type="text" class="form-control" name="weight"
													id="weight" placeholder="몸무게를 입력해주세요">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="label" for="age">AGE</label> <input
													type="text" class="form-control" name="age"
													id="age" placeholder="나이를 입력해주세요">
											</div>
										</div>
										
										
										<div class="col-md-12">
											<div class="form-group">
											<br><br>
												<input type="submit" value="sign up"
													class="btn btn-primary">
												<div class="submitting"></div>
											</div>
										</div>
										
									</div>
								</form>
							</div>
						</div>
						
						<div class="col-lg-4 col-md-5 d-flex align-items-stretch">
							<div class="info-wrap bg-primary w-100 p-md-5 p-4">
								<h3>HEALTHY SEXY</h3>
								<p class="mb-4">회원가입을 할 시 서비스를 이용할 수 있습니다.</p>
								
								<div class="dbox w-100 d-flex align-items-center">
									<div
										class="icon d-flex align-items-center justify-content-center">
										<span class="fa fa-paper-plane"></span>
									</div>
									<div class="text pl-3">
										<p>
											<span>DAIRY</span>
										</p>
									</div>
								</div>
								
								<div class="dbox w-100 d-flex align-items-center">
									<div
										class="icon d-flex align-items-center justify-content-center">
										<span class="fa fa-globe"></span>
									</div>
									<div class="text pl-3">
										<p>
											<span>CREW</span>
										</p>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>
