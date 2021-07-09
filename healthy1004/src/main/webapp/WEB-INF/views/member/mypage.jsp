<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/run2.jpg');background-size: cover; ">
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
						<a href="${pageContext.request.contextPath}/member/updateForm"
							style="color: black; !important">회원 정보 수정</a>
					</h3>
				</div>
<<<<<<< HEAD

				<div class="sidebar-box bg-white p-4 ftco-animate">
					<h3 class="heading-sidebar" >
					<a href="${pageContext.request.contextPath}/member/updateForm" style="color: black; !important">회원 정보 수정</a></h3>
					<!-- <form action="#" class="browse-form">
						<label for="option-instructor-1"><input type="checkbox"
							id="option-instructor-1" name="vehicle" value="" checked>
							Ronald Jackson</label><br> <label for="option-instructor-2"><input
							type="checkbox" id="option-instructor-2" name="vehicle" value="">
							John Dee</label><br> <label for="option-instructor-3"><input
							type="checkbox" id="option-instructor-3" name="vehicle" value="">
							Nathan Messy</label><br> <label for="option-instructor-4"><input
							type="checkbox" id="option-instructor-4" name="vehicle" value="">
							Tony Griffin</label><br> <label for="option-instructor-5"><input
							type="checkbox" id="option-instructor-5" name="vehicle" value="">
							Ben Howard</label><br> <label for="option-instructor-6"><input
							type="checkbox" id="option-instructor-6" name="vehicle" value="">
							Harry Potter</label><br>
					</form> -->
				</div>
=======
>>>>>>> refs/heads/map
			</div>

			<div class="col-lg-9">
				<sec:authentication property="principal.memberId" var="id" />
				<input type="hidden" name="memberId" id="memberId" value="${id}">
				<span id="myCrewResult" class="row"></span>
			</div>
		</div>
	</div>
</section>
