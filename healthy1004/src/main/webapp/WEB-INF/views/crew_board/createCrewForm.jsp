<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<h1 class="mb-0 bread">Create New Crew</h1>
			</div>
		</div>
	</div>
</section>


<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-12">
				<div class="wrapper">
					<div class="order-md-last d-flex align-items-stretch">
						<div class="contact-wrap w-100 p-md-5 p-4 ">
							<h3 class="mb-4">크루 정보 입력</h3>
							<form action="${pageContext.request.contextPath}/createCrew" method="POST" id="createCrewForm" class="contactForm">
								<sec:csrfInput/>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label class="label" for="crewName">crew name</label> <input
												type="text" class="form-control" name="crewName"
												id="crewName" placeholder="input crew name">
										</div>
									</div>
									
									<div class="col-md-3">
										<div class="form-group">
											<label class="label" for="crewSize">crew size</label> <input
												type="number" class="form-control" name="crewSize"
												id="crewSize" placeholder="input crew size">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label class="label" for="crewInfo">crew info</label>
											<%-- name, id, placeholder 변경 --%>
											<textarea name="crewInfo" class="form-control" id="crewInfo"
												cols="30" rows="4" placeholder="input crew info"></textarea>
										</div>
									</div>
									<div class="col-md-9">
										<div class="form-group">
											<label class="label" for="crewLocation">crew location</label> <input
												type="text" class="form-control" name="crewLocation"
												id="crewLocation" placeholder="input crew location">
											
											
										</div>
									</div>
									<div class="col-md-12" align="right">
										<div class="form-group">
											<input type="submit" value="생성하기" class="btn btn-primary">
											<div class="submitting"></div>
										</div>
									</div>
								</div>
							</form>
							<%-- 맵도 찍어서 넣기 --%>
											<div id="input-location-area" style="display: inline-flex;">
												<div class="col-md-12">
													<div class="form-group" style="float: left;">
														<input type="text" class="form-control" name="locationKeyword"
															id="locationKeyword" placeholder="지도에서 확인할 지역명을 입력하세요">
													</div>
												</div>
												<div class="col-md-3" align="right" style="float: right;">
													<div class="form-group">
														<input type="submit" value="위치보기" class="btn btn-warning">
														<div class="submitting"></div>
													</div>
												</div>
											
												<!-- <div class="form-group" style="margin-bottom: -1rem !important;">
													<input id="locationKeyword" name="locationKeyword" type="text" class="form-control" placeholder="지역명을 입력하세요">
													
													<span id="crewFindBtn" class="icon fa fa-search" style="float:right;"></span>
												</div> -->
											
											</div>
											<!-- 지도에는 전체 크루 리스트가 마커로 표시 -->
											<div id="map1" style="width:100%;height:350px;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
