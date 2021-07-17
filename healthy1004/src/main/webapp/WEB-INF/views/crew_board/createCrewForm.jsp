<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<style>
.map_wrap {
	position: relative;
	width: 100%;
	height: 400px;
}

.title {
	font-weight: bold;
	display: block;
}

.hAddr {
	position: absolute;
	left: 25px;
	top: 13px;
	border-radius: 2px;
	background: #fff;
	background: rgba(255, 255, 255, 0.8);
	z-index: 1;
	padding: 5px;
}

#centerAddr {
	display: block;
	margin-top: 2px;
	font-weight: normal;
}

.bAddr {
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
.select_img {
	margin: 20px 0;
}
</style>

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
							<form action="${pageContext.request.contextPath}/createCrew"
								method="POST" id="createCrewForm" class="contactForm" enctype="multipart/form-data">
								<sec:csrfInput />
								<div class="row" style="width: 80%;">
									<div class="col-md-6">
										<div>
											<div class="form-group" style="margin-bottom: 1rem;">
												<label class="label" for="crewName">crew name</label> <input
													type="text" class="form-control" name="crewName"
													id="crewName" placeholder="크루명을 입력하세요">
											</div>
											<div class="form-group" style="margin-bottom: 1rem;">
												<label class="label" for="crewSize">crew size</label> <input
													type="number" class="form-control" name="crewSize"
													id="crewSize" placeholder="크루 정원을 입력하세요">
											</div>
										</div>

										<div class="form-group">
											<label class="label" for="crewInfo">crew info</label>
											<%-- name, id, placeholder 변경 --%>
											<textarea name="crewInfo" class="form-control" id="crewInfo"
												cols="30" rows="5"
												placeholder="크루를 자유롭게 소개하세요 (예: 수서 탄천을 매주 같이 달려요!)"></textarea>
										</div>

										<div class="form-group">
											<label class="label" for="crewLocation">crew location</label>
											<input type="text" class="form-control" name="crewLocation"
												id="crewLocation" placeholder="오른쪽 지도에서 집결 위치를 클릭해주세요"
												readonly="readonly">
										</div>

										<div class="form-group" align="right" style="margin-right: -12rem; margin-top: 2.5rem; margin-bottom: -0.25rem;">
											<input type="submit" style="width: 10rem;" value="크루 생성하기" class="btn btn-primary">
										<div class="form-group">
											<label class="label" for="crewImg">crew image</label>
											<input type="file" id="crewImg" name="file" />
											<div class="select_img"><img src="" /></div>		
											<script>
												$("#crewImg").change(function() {
													if(this.files && this.files[0]) {
														var reader = new FileReader;
														reader.onload = function(data) {
															$(".select_img img").attr("src", data.target.result).width(300);
														}
														reader.readAsDataURL(this.files[0]);
													}
												});
											</script>
										</div>

										<div class="form-group" align="right" style="postion: absolute; right: 1rem; margin-right: -39rem;">
											<input type="submit" value="크루 생성하기" class="btn btn-primary">
											<div class="submitting"></div>
										</div>
									</div>
								</div>
							</form>
						</div>

<!-- 						<div class="contact-wrap w-100 p-md-5 p-4 "> -->
							<div class="col-md-7" style="position: absolute; right: 1.5rem; top: 8rem;">
								<%-- 맵도 찍어서 넣기 --%>
								
								<div id="map1"
									style="width: 95%; height: 330px; position: relative; overflow: hidden;"></div>
								<div class="hAddr">
									<span class="title">지도중심기준 행정동 주소정보</span> <span
										id="centerAddr"></span>
								</div>
								
								<div id="input-location-area">
									<div style="display: inline-flex; align-items: center; margin-top: 1.15rem;">
										<div class="form-group" style="width: 18rem;">
											<input id="search-keyword" type="text" class="form-control" style="width: 100%;"
												name="locationKeyword" 
												placeholder="지도에서 확인할 지역을 입력하세요">
										</div>

										<div class="form-group" style="margin-left: 1rem;">
											<input id="search-keyword-btn" type="submit" value="지도 이동"
												class="btn btn-warning">
											<div class="submitting"></div>
										</div>
									</div>
								</div>
							</div>
<!-- 						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
