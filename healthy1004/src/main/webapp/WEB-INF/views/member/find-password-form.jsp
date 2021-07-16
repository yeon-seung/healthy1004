<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="hero-wrap js-fullheight"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/wall.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text js-fullheight align-items-center"
			data-scrollax-parent="true">
			<div class="col-md-7 ftco-animate">
				<span class="subheading">Healthy 1004</span>
				<h1 class="mb-4">Forgot your password</h1>

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
						<h3 class="mb-4">Forgot your password</h3>
						<div class="form-group">
							<label class="label" for="memberId">id</label> <input id="memberId"
								type="text" class="form-control"
								placeholder="가입시 등록한 아이디를 입력하세요">
						</div>
						<div class="form-group">
							<label class="label" for="email">email</label> <input
								type="text" class="form-control" id="email"
								placeholder="가입시 등록한 이메일을 입력하세요">
						</div>


						<div class="form-group d-flex justify-content-end mt-4">
							<button type="button" class="btn btn-primary submit" id="checkAccount">
								OK
							</button>
							&nbsp;
							<button type="button" class="btn btn-danger submit" id="turnBack">
								<span>BACK</span>
							</button>
						</div>
					</div>
				</sec:authorize>
			</div>
		</div>
	</div>
</section>
