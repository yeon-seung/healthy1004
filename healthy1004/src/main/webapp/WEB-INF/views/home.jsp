<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<div class="hero-wrap js-fullheight"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/exercise_background3.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text js-fullheight align-items-center"
			data-scrollax-parent="true">
			<div class="col-md-7 ftco-animate">
				<span class="subheading">Welcome to Healthy</span>
				<h1 class="mb-4">Healthy와 즐거운 운동을!</h1>
				<p class="caps">운동 다이어리로 규칙적인 관리를 하세요. <br> 크루 만나기를 통해 크루원들을 만나 즐거운 운동을 해보세요. <br> 이 모든 것들은 Healthy 회원이 되신다면 즐길 수 있어요. <br> 당장 가입해 </p>
				<p class="mb-0">
					<%-- 다이어리를 확인하기 위해 href="#"에서 변경함. --%>
					<a href="${pageContext.request.contextPath}/diary/diary" class="btn btn-primary">다이어리</a> <a href="#"
						class="btn btn-white">크루 만나기</a>
				</p>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section ftco-no-pb ftco-no-pt">
	<div class="container">
		<div class="row">
			<div class="col-md-7"></div>
			<div class="col-md-5 order-md-last">
				<div class="login-wrap p-4 p-md-5">
					<h3 class="mb-4">Register Now</h3>
					<form action="#" class="signup-form">
						<div class="form-group">
							<label class="label" for="name">Full Name</label> <input
								type="text" class="form-control" placeholder="John Doe">
						</div>
						<div class="form-group">
							<label class="label" for="email">Email Address</label> <input
								type="text" class="form-control" placeholder="johndoe@gmail.com">
						</div>
						<div class="form-group">
							<label class="label" for="password">Password</label> <input
								id="password-field" type="password" class="form-control"
								placeholder="Password">
						</div>
						<div class="form-group">
							<label class="label" for="password">Confirm Password</label> <input
								id="password-field" type="password" class="form-control"
								placeholder="Confirm Password">
						</div>
						<div class="form-group d-flex justify-content-end mt-4">
							<button type="submit" class="btn btn-primary submit">
								<span class="fa fa-paper-plane"></span>
							</button>
						</div>
					</form>
					<p class="text-center">
						Already have an account? <a href="#signin">Sign In</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center pb-4">
			<div class="col-md-12 heading-section text-center ftco-animate">
				<span class="subheading">Start Learning Today</span>
				<h2 class="mb-4">Browse Online Course Category</h2>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-3 col-lg-2">
				<a href="#"
					class="course-category img d-flex align-items-center justify-content-center"
					style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-1.jpg);">
					<div class="text w-100 text-center">
						<h3>IT &amp; Software</h3>
						<span>100 course</span>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-lg-2">
				<a href="#"
					class="course-category img d-flex align-items-center justify-content-center"
					style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-9.jpg);">
					<div class="text w-100 text-center">
						<h3>Music</h3>
						<span>100 course</span>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-lg-2">
				<a href="#"
					class="course-category img d-flex align-items-center justify-content-center"
					style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-3.jpg);">
					<div class="text w-100 text-center">
						<h3>Photography</h3>
						<span>100 course</span>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-lg-2">
				<a href="#"
					class="course-category img d-flex align-items-center justify-content-center"
					style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-5.jpg);">
					<div class="text w-100 text-center">
						<h3>Marketing</h3>
						<span>100 course</span>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-lg-2">
				<a href="#"
					class="course-category img d-flex align-items-center justify-content-center"
					style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-8.jpg);">
					<div class="text w-100 text-center">
						<h3>Health</h3>
						<span>100 course</span>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-lg-2">
				<a href="#"
					class="course-category img d-flex align-items-center justify-content-center"
					style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-6.jpg);">
					<span class="text w-100 text-center">
						<h3>Audio Video</h3> <span>100 course</span>
				</span>
				</a>
			</div>
			<div class="col-md-12 text-center mt-5">
				<a href="#" class="btn btn-secondary">See All Courses</a>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center pb-4">
			<div class="col-md-12 heading-section text-center ftco-animate">
				<span class="subheading">Start Learning Today</span>
				<h2 class="mb-4">Pick Your Course</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 ftco-animate">
				<div class="project-wrap">
					<a href="#" class="img"
						style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-1.jpg);">
						<span class="price">Software</span>
					</a>
					<div class="text p-4">
						<h3>
							<a href="#">Design for the web with adobe photoshop</a>
						</h3>
						<p class="advisor">
							Advisor <span>Tony Garret</span>
						</p>
						<ul class="d-flex justify-content-between">
							<li><span class="flaticon-shower"></span>2300</li>
							<li class="price">$199</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-4 ftco-animate">
				<div class="project-wrap">
					<a href="#" class="img"
						style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-2.jpg);">
						<span class="price">Software</span>
					</a>
					<div class="text p-4">
						<h3>
							<a href="#">Design for the web with adobe photoshop</a>
						</h3>
						<p class="advisor">
							Advisor <span>Tony Garret</span>
						</p>
						<ul class="d-flex justify-content-between">
							<li><span class="flaticon-shower"></span>2300</li>
							<li class="price">$199</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-4 ftco-animate">
				<div class="project-wrap">
					<a href="#" class="img"
						style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-3.jpg);">
						<span class="price">Software</span>
					</a>
					<div class="text p-4">
						<h3>
							<a href="#">Design for the web with adobe photoshop</a>
						</h3>
						<p class="advisor">
							Advisor <span>Tony Garret</span>
						</p>
						<ul class="d-flex justify-content-between">
							<li><span class="flaticon-shower"></span>2300</li>
							<li class="price">$199</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="col-md-4 ftco-animate">
				<div class="project-wrap">
					<a href="#" class="img"
						style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-4.jpg);">
						<span class="price">Software</span>
					</a>
					<div class="text p-4">
						<h3>
							<a href="#">Design for the web with adobe photoshop</a>
						</h3>
						<p class="advisor">
							Advisor <span>Tony Garret</span>
						</p>
						<ul class="d-flex justify-content-between">
							<li><span class="flaticon-shower"></span>2300</li>
							<li class="price">$199</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-4 ftco-animate">
				<div class="project-wrap">
					<a href="#" class="img"
						style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-5.jpg);">
						<span class="price">Software</span>
					</a>
					<div class="text p-4">
						<h3>
							<a href="#">Design for the web with adobe photoshop</a>
						</h3>
						<p class="advisor">
							Advisor <span>Tony Garret</span>
						</p>
						<ul class="d-flex justify-content-between">
							<li><span class="flaticon-shower"></span>2300</li>
							<li class="price">$199</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-4 ftco-animate">
				<div class="project-wrap">
					<a href="#" class="img"
						style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-6.jpg);">
						<span class="price">Software</span>
					</a>
					<div class="text p-4">
						<h3>
							<a href="#">Design for the web with adobe photoshop</a>
						</h3>
						<p class="advisor">
							Advisor <span>Tony Garret</span>
						</p>
						<ul class="d-flex justify-content-between">
							<li><span class="flaticon-shower"></span>2300</li>
							<li class="price">$199</li>
						</ul>
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


<section class="ftco-section testimony-section bg-light">
	<div class="overlay"
		style="background-image: url(${pageContext.request.contextPath}/healthy/images/bg_2.jpg);"></div>
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

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center pb-4">
			<div class="col-md-12 heading-section text-center ftco-animate">
				<span class="subheading">Our Blog</span>
				<h2 class="mb-4">Recent Post</h2>
			</div>
		</div>
		<div class="row d-flex">
			<div class="col-lg-4 ftco-animate">
				<div class="blog-entry">
					<a href="blog-single.html" class="block-20"
						style="background-image: url('${pageContext.request.contextPath}/healthy/images/image_1.jpg');">
					</a>
					<div class="text d-block">
						<div class="meta">
							<p>
								<a href="#"><span class="fa fa-calendar mr-2"></span>Sept.
									17, 2020</a> <a href="#"><span class="fa fa-user mr-2"></span>Admin</a>
								<a href="#" class="meta-chat"><span
									class="fa fa-comment mr-2"></span> 3</a>
							</p>
						</div>
						<h3 class="heading">
							<a href="#">I'm not creative, Should I take this course?</a>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia...</p>
						<p>
							<a href="blog.html" class="btn btn-secondary py-2 px-3">Read
								more</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-lg-4 ftco-animate">
				<div class="blog-entry">
					<a href="blog-single.html" class="block-20"
						style="background-image: url('${pageContext.request.contextPath}/healthy/images/image_2.jpg');">
					</a>
					<div class="text d-block">
						<div class="meta">
							<p>
								<a href="#"><span class="fa fa-calendar mr-2"></span>Sept.
									17, 2020</a> <a href="#"><span class="fa fa-user mr-2"></span>Admin</a>
								<a href="#" class="meta-chat"><span
									class="fa fa-comment mr-2"></span> 3</a>
							</p>
						</div>
						<h3 class="heading">
							<a href="#">I'm not creative, Should I take this course?</a>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia...</p>
						<p>
							<a href="blog.html" class="btn btn-secondary py-2 px-3">Read
								more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 ftco-animate">
				<div class="blog-entry">
					<a href="blog-single.html" class="block-20"
						style="background-image: url('${pageContext.request.contextPath}/healthy/images/image_3.jpg');">
					</a>
					<div class="text d-block">
						<div class="meta">
							<p>
								<a href="#"><span class="fa fa-calendar mr-2"></span>Sept.
									17, 2020</a> <a href="#"><span class="fa fa-user mr-2"></span>Admin</a>
								<a href="#" class="meta-chat"><span
									class="fa fa-comment mr-2"></span> 3</a>
							</p>
						</div>
						<h3 class="heading">
							<a href="#">I'm not creative, Should I take this course?</a>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia...</p>
						<p>
							<a href="blog.html" class="btn btn-secondary py-2 px-3">Read
								more</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
