<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">

				<h1 class="mb-0 bread">UPDATE INFO</h1>
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
								<h3 class="mb-4">UPDATE</h3>
								<form method="POST" id="contactForm" name="contactForm"
									class="contactForm">
									<div class="row">
									
										<!-- readonly -->
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="id">ID</label> <input
													type="text" class="form-control" name="id" id="id"
													placeholder="아이디를 입력하세요">
											</div>
										</div>
										
										<!-- readonly -->
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="name">NAME</label> <input
													type="text" class="form-control" name="name" id="name"
													placeholder="이름을 입력하세요">
											</div>
										</div>
										
										<!-- 비밀번호는 변경가능 -->
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="password">PASSWORD</label> <input
													type="password" class="form-control" name="password" id="password"
													placeholder="비밀번호를 입력하세요">
											</div>
											<div class="form-group">
												<input
													type="password" class="form-control" name="password" id="password"
													placeholder="비밀번호를 확인해주세요">
											</div>
										</div>
										
										<div class="col-md-2">
											<div class="form-group">
												<input type="submit" value="중복확인"
													class="btn btn-primary">
												<div class="submitting"></div>
											</div>
										</div>
										
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
								
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>
