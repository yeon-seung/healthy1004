<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<h1 class="mb-0 bread">Find crew</h1>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div id="map" style="width: 100%; height: 500px;" class="bg-white"></div>
				<a href="${pageContext.request.contextPath}/createCrewForm" id="createCrewBtn" class="btn btn-primary" style="margin: 1rem; float: right;">크루 생성</a>
			</div>
			<!-- End Map -->
			
				<div class="col-md-4">
					<div class="wrapper">
						<div class="contact-wrap w-100 p-md-5 p-4">
							<h3 class="mb-4">Crew List</h3>
							<form action="#" class="search-form">
							<div class="form-group" style="margin-bottom: -1rem;">
								<span id="crewFindBtn" class="icon fa fa-search"></span>
								<input id="crewFindKeyword" name="crewSearchName" type="text" class="form-control" placeholder="지역명을 입력하세요">
							</div>
						</form>
						<hr>
<!-- 							<input type="text" name="crewSearchName" size="10" class="form-control" placeholder="지역명" -->
<!-- 					id="crewFindKeyword"> <input type="button" value="검색" -->
<!-- 					id="crewFindBtn"> -->
							<input type="hidden" name="memberId" id="memberId" value="<sec:authentication property="principal.memberId" />"/>
							<span id="crewFindResult"></span>
							<span id="csrfInput"><sec:csrfInput/> </span>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>