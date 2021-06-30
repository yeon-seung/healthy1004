<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<%-- 테스트 후, 여기부터 --%>
				<p class="breadcrumbs">
					<%-- 이 부분이 board-form.jsp로 가는 연결부 !!! 확인을 위한...  --%>
					<span class="mr-2"><a href="${pageContext.request.contextPath}/test/map">map으로 가요 <i
							class="fa fa-chevron-right"></i></a></span> <span>About us <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<%-- 여기까지 없애주세요~~ --%>
				<h1 class="mb-0 bread">About Us</h1>
			</div>
		</div>
	</div>
</section>



<section class="ftco-section ftco-about img">
	<div class="container">
		<div class="row d-flex">
			<div class="col-md-12 about-intro">
				<div class="row">
					<div class="col-md-6 d-flex">
						<div class="d-flex about-wrap">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(${pageContext.request.contextPath}/healthy/images/about-1.jpg);"></div>
							<div
								class="img-2 d-flex align-items-center justify-content-center"
								style="background-image: url(${pageContext.request.contextPath}/healthy/images/about.jpg);"></div>
						</div>
					</div>
					<div class="col-md-6 pl-md-5 py-5">
						<div class="row justify-content-start pb-3">
							<div class="col-md-12 heading-section ftco-animate">
								<span class="subheading">Enhanced Your Skills</span>
								<h2 class="mb-4">Learn Anything You Want Today</h2>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
									Separated they live in Bookmarksgrove right at the coast of the
									Semantics, a large language ocean. A small river named Duden
									flows by their place and supplies it with the necessary
									regelialia.</p>
								<p>
									<a href="#" class="btn btn-primary">Get in touch with us</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-counter img" id="section-counter"
	style="background-image: url(${pageContext.request.contextPath}/healthy/images/bg_4.jpg);">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div
				class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
				<div class="block-18 d-flex align-items-center">
					<div class="icon">
						<span class="flaticon-online"></span>
					</div>
					<div class="text">
						<strong class="number" data-number="400">0</strong> <span>Online
							Courses</span>
					</div>
				</div>
			</div>
			<div
				class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
				<div class="block-18 d-flex align-items-center">
					<div class="icon">
						<span class="flaticon-graduated"></span>
					</div>
					<div class="text">
						<strong class="number" data-number="4500">0</strong> <span>Students
							Enrolled</span>
					</div>
				</div>
			</div>
			<div
				class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
				<div class="block-18 d-flex align-items-center">
					<div class="icon">
						<span class="flaticon-instructor"></span>
					</div>
					<div class="text">
						<strong class="number" data-number="1200">0</strong> <span>Experts
							Instructors</span>
					</div>
				</div>
			</div>
			<div
				class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
				<div class="block-18 d-flex align-items-center">
					<div class="icon">
						<span class="flaticon-tools"></span>
					</div>
					<div class="text">
						<strong class="number" data-number="300">0</strong> <span>Hours
							Content</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<section class="ftco-section testimony-section bg-light">
	<div class="overlay" style="background-image: url(${pageContext.request.contextPath}/healthy/images/bg_2.jpg);"></div>
	<div class="container">
		<div class="row pb-4">
			<div class="col-md-7 heading-section ftco-animate">
				<span class="subheading">Testimonial</span>
				<h2 class="mb-4">What Are Students Says</h2>
			</div>
		</div>
	</div>
	<div class="container container-2">
		<div class="row ftco-animate">
			<div class="col-md-12">
				<div class="carousel-testimony owl-carousel">
					<div class="item">
						<div class="testimony-wrap py-4">
							<div class="text">
								<p class="star">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</p>
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<div class="d-flex align-items-center">
									<div class="user-img"
										style="background-image: url(${pageContext.request.contextPath}/healthy/images/person_1.jpg)"></div>
									<div class="pl-3">
										<p class="name">Roger Scott</p>
										<span class="position">Marketing Manager</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap py-4">
							<div class="text">
								<p class="star">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</p>
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<div class="d-flex align-items-center">
									<div class="user-img"
										style="background-image: url(${pageContext.request.contextPath}/healthy/images/person_2.jpg)"></div>
									<div class="pl-3">
										<p class="name">Roger Scott</p>
										<span class="position">Marketing Manager</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap py-4">
							<div class="text">
								<p class="star">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</p>
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<div class="d-flex align-items-center">
									<div class="user-img"
										style="background-image: url(${pageContext.request.contextPath}/healthy/images/person_3.jpg)"></div>
									<div class="pl-3">
										<p class="name">Roger Scott</p>
										<span class="position">Marketing Manager</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap py-4">
							<div class="text">
								<p class="star">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</p>
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<div class="d-flex align-items-center">
									<div class="user-img"
										style="background-image: url(${pageContext.request.contextPath}/healthy/images/person_1.jpg)"></div>
									<div class="pl-3">
										<p class="name">Roger Scott</p>
										<span class="position">Marketing Manager</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap py-4">
							<div class="text">
								<p class="star">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</p>
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<div class="d-flex align-items-center">
									<div class="user-img"
										style="background-image: url(${pageContext.request.contextPath}/healthy/images/person_2.jpg)"></div>
									<div class="pl-3">
										<p class="name">Roger Scott</p>
										<span class="position">Marketing Manager</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-intro ftco-section ftco-no-pb">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-12 text-center">
				<div class="img" style="background-image: url(${pageContext.request.contextPath}/healthy/images/bg_4.jpg);">
					<div class="overlay"></div>
					<h2>We Are StudyLab An Online Learning Center</h2>
					<p>We can manage your dream building A small river named Duden
						flows by their place</p>
					<p class="mb-0">
						<a href="#" class="btn btn-primary px-4 py-3">Enroll Now</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section services-section">
	<div class="container">
		<div class="row d-flex">
			<div
				class="col-md-6 heading-section pr-md-5 ftco-animate d-flex align-items-center">
				<div class="w-100 mb-4 mb-md-0">
					<span class="subheading">Welcome to StudyLab</span>
					<h2 class="mb-4">We Are StudyLab An Online Learning Center</h2>
					<p>A small river named Duden flows by their place and supplies
						it with the necessary regelialia. It is a paradisematic country,
						in which roasted parts of sentences fly into your mouth.</p>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in Bookmarksgrove right at the coast of the
						Semantics, a large language ocean.</p>
					<div class="d-flex video-image align-items-center mt-md-4">
						<a href="#"
							class="video img d-flex align-items-center justify-content-center"
							style="background-image: url(${pageContext.request.contextPath}/healthy/images/about.jpg);"> <span
							class="fa fa-play-circle"></span>
						</a>
						<h4 class="ml-4">Learn anything from StudyLab, Watch video</h4>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="row">
					<div
						class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
						<div class="services">
							<div
								class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-tools"></span>
							</div>
							<div class="media-body">
								<h3 class="heading mb-3">Top Quality Content</h3>
								<p>A small river named Duden flows by their place and
									supplies</p>
							</div>
						</div>
					</div>
					<div
						class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
						<div class="services">
							<div
								class="icon icon-2 d-flex align-items-center justify-content-center">
								<span class="flaticon-instructor"></span>
							</div>
							<div class="media-body">
								<h3 class="heading mb-3">Highly Skilled Instructor</h3>
								<p>A small river named Duden flows by their place and
									supplies</p>
							</div>
						</div>
					</div>
					<div
						class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
						<div class="services">
							<div
								class="icon icon-3 d-flex align-items-center justify-content-center">
								<span class="flaticon-quiz"></span>
							</div>
							<div class="media-body">
								<h3 class="heading mb-3">World Class &amp; Quiz</h3>
								<p>A small river named Duden flows by their place and
									supplies</p>
							</div>
						</div>
					</div>
					<div
						class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
						<div class="services">
							<div
								class="icon icon-4 d-flex align-items-center justify-content-center">
								<span class="flaticon-browser"></span>
							</div>
							<div class="media-body">
								<h3 class="heading mb-3">Get Certified</h3>
								<p>A small river named Duden flows by their place and
									supplies</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>