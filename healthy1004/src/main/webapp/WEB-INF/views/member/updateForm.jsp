<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="sec"  uri="http://www.springframework.org/security/tags"%>   
 <sec:authorize access="hasRole('ROLE_MEMBER')">
<script type="text/javascript">
 	$(document).ready(function(){
		var checkResultId="";		
		$("#regForm").submit(function(){					
			if($('#password1').val() == null || $('#password1').val()=="") {
				alert("비밀번호를 입력해주세요");
				return false;
			}
			if($('#password2').val() == null || $('#password2').val()=="") {
				alert("비밀번호 확인을 입력해주세요");
				return false;
			}
		});
	});//ready 
	
	$(function() {
		$('#password2').blur(function() {
			if($('#password1').val() != $('#password2').val()) {
				if($('#password2').val() != '') {
					alert("비밀번호가 일치하지 않습니다.");
					$('#password2').val('');
					$('#password2').focus();
				}
			}
		})
	});
</script>
<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">

				<h1 class="mb-0 bread">UPDATE MEMBER INFO</h1>
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
								<h3 class="mb-4">UPDATE INFO</h3>
								<form method="POST" name="contactForm"
									class="contactForm" action="${pageContext.request.contextPath}/updateMemberAction"
									id="regForm"6>
									<div class="row">
									<sec:csrfInput/>
										<input type="hidden" name="command" value="update">
										<!-- readonly -->
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="id">ID</label> <input
													type="text" class="form-control" name="memberId"
													value="<sec:authentication property="principal.memberId"/>" readonly>
											</div>
										</div>
										
										<!-- readonly -->
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="name">NAME</label> <input
													type="text" class="form-control" name="memberName" id="name"
													value="<sec:authentication property="principal.memberName"/>" readonly>
											</div>
										</div>
										
										<!-- 비밀번호는 변경가능 -->
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
													id="email" value="<sec:authentication property="principal.email"/>" readonly>
											</div>
										</div>
										
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="address">ADDRESS</label> <input
													type="text" class="form-control" name="address"
													id="address" value="<sec:authentication property="principal.address"/>">
											</div>
										</div>
										
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="phone">PHONE</label> <input
													type="text" class="form-control" name="phone"
													id="phone" value="<sec:authentication property="principal.phone"/>">
											</div>
										</div>
										
										<div class="col-md-4">
											<div class="form-group">
												<label class="label" for="height">HEIGHT</label> <input
													type="text" class="form-control" name="height"
													id="height" value="<sec:authentication property="principal.height"/>">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="label" for="weight">WEIGHT</label> <input
													type="text" class="form-control" name="weight"
													id="weight" value="<sec:authentication property="principal.weight"/>">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="label" for="age">AGE</label> <input
													type="text" class="form-control" name="age"
													id="age" value="<sec:authentication property="principal.age"/>">
											</div>
										</div>
										
										
										<div class="col-md-12">
											<div class="form-group">
											<br><br>
												<input type="submit" value="update"
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
								<p class="mb-4">회원정보를 수정해주세요</p>
								
								<div class="dbox w-100 d-flex align-items-center">
									<div
										class="icon d-flex align-items-center justify-content-center">
										<span class="fa fa-globe"></span>
									</div>
									<div class="text pl-3">
										<p>
											<span>아이디는 바꿀 수 없습니다.</span>
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
											<span>이름은 바꿀 수 없습니다.</span>
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
											<span>이메일은 바꿀 수 없습니다.</span>
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
</sec:authorize>
