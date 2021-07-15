<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- spring security custom tag를 사용하기 위한 선언 --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<sec:authorize access="hasRole('ROLE_ADMIN')">
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('${pageContext.request.contextPath}/healthy/images/bike.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<%-- <p class="breadcrumbs">
					<span class="mr-2"><a href="${pageContext.request.contextPath}/home">Home <i
							class="fa fa-chevron-right"></i></a></span> <span>Course Lists <i
						class="fa fa-chevron-right"></i></span>
				</p> --%>
					<h1 class="mb-0 bread">Admin Page</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="ftco-section bg-light">
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url('${pageContext.request.contextPath}/healthy/images/delete.png'); background-size: 200px 200px;"></a>
							<div class="text p-4">
								<h3>
									<a
										href="${pageContext.request.contextPath}/admin/memberDeleteFormPaging"
										style="color: purple; font-weight: bold !important;">회원 탈퇴시키기</a>
								</h3>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url('${pageContext.request.contextPath}/healthy/images/delete.png'); background-size: 200px 200px;"></a>
							<div class="text p-4" text-align="center">
								<h3>
									<a
										href="${pageContext.request.contextPath}/admin/crewDeleteFormPaging"
										style="color: purple; font-weight: bold !important;">크루 삭제하기</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
</sec:authorize>