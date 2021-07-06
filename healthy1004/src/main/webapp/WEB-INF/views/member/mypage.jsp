<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

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
				<h1 class="mb-0 bread">My Page</h1>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 sidebar">
				<div class="sidebar-box bg-white ftco-animate">
					<form action="#" class="search-form">
						<div class="form-group">
							<span class="icon fa fa-search"></span> <input type="text"
								class="form-control" placeholder="Search...">
						</div>
					</form>
				</div>

				<div class="sidebar-box bg-white p-4 ftco-animate">
					<h3 class="heading-sidebar">내가 참여한 크루 보기</h3>
					<form action="#" class="browse-form">
						<label for="option-category-1"><input type="checkbox"
							id="option-category-1" name="vehicle" value="" checked>
							러닝</label><br> <label for="option-category-2"><input
							type="checkbox" id="option-category-2" name="vehicle" value="">
							헬스</label><br> <label for="option-category-3"><input
							type="checkbox" id="option-category-3" name="vehicle" value="">
							수영</label><br> <label for="option-category-4"><input
							type="checkbox" id="option-category-4" name="vehicle" value="">
							배드민턴</label><br> <label for="option-category-5"><input
							type="checkbox" id="option-category-5" name="vehicle" value="">
							축구</label><br> <label for="option-category-6"><input
							type="checkbox" id="option-category-6" name="vehicle" value="">
							농구</label><br>
					</form>
				</div>

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
			</div>
			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-9 ftco-animate pb-5 text-center">
						<%-- <p class="breadcrumbs">
					<span class="mr-2"><a href="${pageContext.request.contextPath}/home">Home <i
							class="fa fa-chevron-right"></i></a></span> <span>Course Lists <i
						class="fa fa-chevron-right"></i></span>
				</p> 
						<h1 class="mb-0 bread">My Page</h1>--%>
					</div>
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(https://images.pexels.com/photos/34514/spot-runs-start-la.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260);">
								<span class="price">러닝</span>
							</a>
							<div class="text p-4">
								<h3>
									<a href="#">오리역 러닝 크루 탄천오리🦆</h3>
								<!-- <p class="advisor"> -->
								<p>
									crew_location
								</p>
								<ul class="d-flex justify-content-between">
									<li><span class="flaticon-shower"></span>crew_info</li>
									<li class="price">crew_size</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(data:image/jpeg;base64,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);">
								<span class="price">배드민턴</span>
							</a>
							<div class="text p-4">
								<h3>
									<a href="#">라켓챌린지🏸 at 올림픽공원
								</h3>
								<p>
									crew_location
								</p>
								<ul class="d-flex justify-content-between">
									<li><span class="flaticon-shower"></span>crew_info</li>
									<li class="price">crew_size</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(https://lh3.googleusercontent.com/proxy/KkVa5O8mOmU0GBCpKRAEcXUKOR3h5dhhTKGm--qcM9ooV2d4B-AFhHY44_5tpmga2kaolJLGGFmmqxU6Q0MzSWwtd48fneD9-tDzpMetSlN20okyyXS3nsk);">
								<span class="price">수영</span>
							</a>
							<div class="text p-4">
								<h3>
									<a href="#">문정동 물개 모임</a>
								</h3>
								<p>
									crew_location
								</p>
								<ul class="d-flex justify-content-between">
									<li><span class="flaticon-shower"></span>crew_info</li>
									<li class="price">crew_size</li>
								</ul>
							</div>
						</div>
					</div>

					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(https://www.ledgerinsights.com/wp-content/uploads/2021/03/football-soccer-810x524.jpg);">
								<span class="price">축구</span>
							</a>
							<div class="text p-4">
								<h3>
									<a href="#">정자역 조기축구회</a>
								</h3>
								<p>
									crew_location
								</p>
								<ul class="d-flex justify-content-between">
									<li><span class="flaticon-shower"></span>crew_info</li>
									<li class="price">crew_size</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				</div> 
			</div>
		</div>
</section>
