<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="hero-wrap js-fullheight"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/exercise_background3.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text js-fullheight align-items-center"
			data-scrollax-parent="true">
			<div class="col-md-7 ftco-animate">
				<span class="subheading">Welcome to Healthy</span>
				<h1 class="mb-4">Healthy와 즐거운 운동을!</h1>
				<p class="caps">
					운동 다이어리로 규칙적인 관리를 하세요. <br> 크루 찾기를 통해 크루원들을 만나 즐거운 운동을 해보세요.
					<br> 이 모든 것들은 HealthySexy 회원이 되신다면 누릴 수 있답니다. <br>
				</p>
				<p class="mb-0">
				<sec:authorize access="isAuthenticated()!=false">
					<a href="${pageContext.request.contextPath}/diary"
						class="btn btn-primary">다이어리</a> <a
						href="${pageContext.request.contextPath}/crewfind"
						class="btn btn-white">크루 찾기</a>
				</sec:authorize>
				</p>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section ftco-no-pb ftco-no-pt">
	<div class="container">
		<div class="row">
			<div class="col-md-7"></div>
			<div class="col-md-5 order-md-last">
				<sec:authorize access="isAuthenticated()==false">
					<div class="login-wrap p-4 p-md-5">
						<h3 class="mb-4">Login</h3>
						<form action="${pageContext.request.contextPath}/login"
							method="post" class="loginForm">
							<sec:csrfInput />
							<div class="form-group">
								<label class="label" for="name">ID</label> <input name="id"
									type="text" class="form-control" placeholder="아이디를 입력하세요">
							</div>

							<div class="form-group">
								<label class="label" for="password">PASSWORD</label> <input
									id="password" name="password" type="password"
									class="form-control" placeholder="비밀번호를 입력하세요">
							</div>

							<div class="form-group d-flex justify-content-end mt-4">
								<button type="submit" class="btn btn-primary submit">
									<span>login</span>
								</button>
							</div>
						</form>
						<p class="text-center">
							Create new account <a
								href="${pageContext.request.contextPath}/member/registerForm">Sign
								Up</a>
						</p>
					</div>
				</sec:authorize>
			</div>
		</div>
	</div>
</section>
