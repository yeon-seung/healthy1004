<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<script type="text/javascript">
	function self_delete() {
		if (confirm("정말 탈퇴하시겠습니까? 다시 한번 생각해보세요ㅠㅅㅠ") == true) {
			return "/member/selfdelete_result";
		} else {
			return false;
		}
	}
</script>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/run2.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">

				<h1 class="mb-0 bread">My Page</h1>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 sidebar">
				<!-- 				<div class="sidebar-box bg-white ftco-animate"> -->
				<!-- 				</div> -->

				<div class="sidebar-box bg-white p-4 ftco-animate">
					<h3 class="heading-sidebar">
						<a href="${pageContext.request.contextPath}/mypage"
							style="color: black; !important">내가 참여한 크루 보기</a>
					</h3>
				</div>

				<div class="sidebar-box bg-white p-4 ftco-animate">
					<h3 class="heading-sidebar">
						<a href="${pageContext.request.contextPath}/member/checkPasswordForm"
							style="color: black; !important">회원 정보 수정</a>
					</h3>
				</div>
				
				<div class="sidebar-box bg-white p-4 ftco-animate">
					<h3 class="heading-sidebar">
						<a href="${pageContext.request.contextPath}/member/selfdelete?id=<sec:authentication property="principal.memberId" />"
							 onclick="return self_delete();" style="color: black; !important">회원 탈퇴</a>
					</h3>
				</div>
			</div>

			<div class="col-lg-9">
				<sec:authentication property="principal.memberId" var="id" />
				<input type="hidden" name="memberId" id="memberId" value="${id}">
				<input type="hidden" id="pageContext" value="${pageContext.request.contextPath}">
				<span id="myCrewResult" class="row"></span>
			</div>
		</div>
	</div>
</section>
