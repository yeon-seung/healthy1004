<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<script type="text/javascript">
	$(function() {

	});
</script>

<style>
#memberId {
	color: #585858;
}

#memberId:focus {
	border-color: #E6E6E6 !important;
}
</style>

<div class="hero-wrap js-fullheight"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/snow.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text js-fullheight align-items-center"
			data-scrollax-parent="true">
			<div class="col-md-7 ftco-animate">
				<span class="subheading">Healthy 1004</span>
				<h1 class="mb-4">Edit your information</h1>
				<p class="caps">
					고객님의 안전한 정보보호를 위하여 비밀번호를 다시 한번 확인합니다.<br>비밀번호가 타인에게 노출되지 않도록
					주의하여 주세요.
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
				<sec:authorize access="isAuthenticated()">
					<form action="${pageContext.request.contextPath}/member/updateForm"
						method="post">
						<sec:csrfInput />
						<div class="login-wrap p-4 p-md-5">
							<h3 class="mb-4">Edit your information</h3>
							<div class="form-group">
								<label class="label" for="memberId">id</label> <input
									id="memberId" type="text" class="form-control"
									value="<sec:authentication property="principal.memberId"/>"
									name="memberId" readonly>
							</div>
							<div class="form-group">
								<label class="label" for="password">password</label> <input
									type="password" class="form-control" id="password"
									placeholder="현재 비밀번호를 입력하세요" 
									name="password">
							</div>


							<div class="form-group d-flex justify-content-end mt-4">
								<button type="submit" class="btn btn-primary submit"
									id="checkPassword">OK</button>
								&nbsp;
								<button type="button" class="btn btn-danger submit"
									id="turnBack">
									<span>BACK</span>
								</button>
							</div>
						</div>
					</form>
				</sec:authorize>
			</div>
		</div>
	</div>
</section>
