<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<script type="text/javascript">
$(document).ready(function(){
	$("#createCrewForm").submit(function(){		
		if($('#crewName').val() == null || $('#crewName').val()=="") {
			alert("크루명을 입력해주세요");
			return false;
		}
		if($('#crewSize').val()<2) {
			alert("크루인원은 최소 2명 이상여야 합니다.");
			return false;
		}
		if($('#crewInfo').val() == null || $('#crewInfo').val()=="") {
			alert("크루를 소개해주세요.");
			return false;
		}
		if($('#crewLocation').val() == null || $('#crewLocation').val()=="") {
			alert("크루 집결 중심지를 선택해주세요.");
			return false;
		}
	});
});//ready 
</script>
	
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
	top: 85px;
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
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/snow.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<h1 class="mb-0 bread">Create Your Crew</h1>
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
											<div class="form-group">
												<label class="label" for="crewName">crew name</label> <input
													type="text" class="form-control" name="crewName"
													id="crewName" placeholder="크루명을 입력하세요">
											</div>
											<div class="form-group">
												<label class="label" for="crewSize">crew size</label> <input
													type="number" class="form-control" name="crewSize"
													id="crewSize" placeholder="크루 정원을 입력하세요">
											</div>
										</div>

										<div class="form-group">
											<label class="label" for="crewInfo">crew info</label>
											<%-- name, id, placeholder 변경 --%>
											<textarea name="crewInfo" class="form-control" id="crewInfo"
												cols="30" rows="4"
												placeholder="크루를 자유롭게 소개하세요 &#13;&#10;(예: 수서 탄천을 매주 같이 달려요!)"></textarea>
										</div>


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

									<div class="col-md-6">
										<div class="form-group">
											<label class="label" for="crewLocation">crew location</label>
											<input type="text" class="form-control" name="crewLocation"
												id="crewLocation" placeholder="아래 지도에서 집결지를 클릭해주세요"
												readonly="readonly">
										</div>
									</div>
										
<!-- 										<div class="form-group" align="right" style="margin-right: -12rem; margin-top: 2.5rem; margin-bottom: -0.25rem;"> -->
<!-- 											<input type="submit" style="width: 10rem;" value="크루 생성하기" class="btn btn-primary"> -->
<!-- 										<div class="form-group"> -->
										
										
									</div>
									<div class="form-group" align="center" style="margin-top: 14rem;">
											<input type="submit" value="크루 생성하기" class="btn btn-primary">
											<div class="submitting"></div>
										</div>
								</div>
								
							</form>
						</div>

							<div class="col-md-7" style="position: absolute; right: 1.5rem; top: 12rem;">
								<div id="input-location-area">
									<div style="display: inline-flex; align-items: center; margin-top: 1.15rem;">
										<div class="form-group" style="width: 17.25rem;">
											<input id="search-keyword" type="text" class="form-control" style="width: 100%;"
												name="locationKeyword" 
												placeholder="지도에서 확인할 지역을 입력하세요">
										</div>

										<div class="form-group" style="margin-left: 0.5rem;">
											<input id="search-keyword-btn" type="submit" value="지도 이동"
												class="btn btn-warning text-white">
											<div class="submitting"></div>
										</div>
									</div>
								</div>
							
								<div id="map1"
									style="width: 95%; height: 470px; position: relative; overflow: hidden;"></div>
								<div class="hAddr">
									<span class="title">지도중심기준 행정동 주소정보</span> <span
										id="centerAddr"></span>
								</div>
								
								
							</div>
							
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
