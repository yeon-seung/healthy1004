<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<sec:authorize access="hasRole('ROLE_ADMIN')">
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
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
					<h1 class="mb-0 bread">Delete Member</h1>
				</div>
			</div>
		</div>
	</section>

	<div class="staff">
		<div class="img-wrap d-flex align-items-stretch">
			<div class="img align-self-stretch"
				style="background-image: url(images/teacher-1.jpg);"></div>
		</div>
		<div class="text pt-3">
			<h3>
				<a href="instructor-details.html">Bianca Wilson</a>
			</h3>
			<span class="position mb-2">Business</span>
			<div class="faded">
				<p>I am an ambitious workaholic, but apart from that, pretty
					simple person.</p>
				<ul class="ftco-social text-center">
					<li class="ftco-animate"><a href="#"><span
							class="fa fa-twitter"></span></a></li>
					<li class="ftco-animate"><a href="#"><span
							class="fa fa-facebook"></span></a></li>
					<li class="ftco-animate"><a href="#"><span
							class="fa fa-google"></span></a></li>
					<li class="ftco-animate"><a href="#"><span
							class="fa fa-instagram"></span></a></li>
				</ul>
			</div>
		</div>
	</div>

</sec:authorize>