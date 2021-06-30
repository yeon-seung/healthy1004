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
				<p class="breadcrumbs">
					<span class="mr-2"><a href="${pageContext.request.contextPath}/home">Home <i
							class="fa fa-chevron-right"></i></a></span> <span>Course Lists <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h1 class="mb-0 bread">Course Lists</h1>
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
					<h3 class="heading-sidebar">Course Category</h3>
					<form action="#" class="browse-form">
						<label for="option-category-1"><input type="checkbox"
							id="option-category-1" name="vehicle" value="" checked>
							Design &amp; Illustration</label><br> <label for="option-category-2"><input
							type="checkbox" id="option-category-2" name="vehicle" value="">
							Web Development</label><br> <label for="option-category-3"><input
							type="checkbox" id="option-category-3" name="vehicle" value="">
							Programming</label><br> <label for="option-category-4"><input
							type="checkbox" id="option-category-4" name="vehicle" value="">
							Music &amp; Entertainment</label><br> <label for="option-category-5"><input
							type="checkbox" id="option-category-5" name="vehicle" value="">
							Photography</label><br> <label for="option-category-6"><input
							type="checkbox" id="option-category-6" name="vehicle" value="">
							Health &amp; Fitness</label><br>
					</form>
				</div>

				<div class="sidebar-box bg-white p-4 ftco-animate">
					<h3 class="heading-sidebar">Course Instructor</h3>
					<form action="#" class="browse-form">
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
					</form>
				</div>

				<div class="sidebar-box bg-white p-4 ftco-animate">
					<h3 class="heading-sidebar">Course Type</h3>
					<form action="#" class="browse-form">
						<label for="option-course-type-1"><input type="checkbox"
							id="option-course-type-1" name="vehicle" value="" checked>
							Basic</label><br> <label for="option-course-type-2"><input
							type="checkbox" id="option-course-type-2" name="vehicle" value="">
							Intermediate</label><br> <label for="option-course-type-3"><input
							type="checkbox" id="option-course-type-3" name="vehicle" value="">
							Advanced</label><br>
					</form>
				</div>

				<div class="sidebar-box bg-white p-4 ftco-animate">
					<h3 class="heading-sidebar">Software</h3>
					<form action="#" class="browse-form">
						<label for="option-software-1"><input type="checkbox"
							id="option-software-1" name="vehicle" value="" checked>
							Adobe Photoshop</label><br> <label for="option-software-2"><input
							type="checkbox" id="option-software-2" name="vehicle" value="">
							Adobe Illustrator</label><br> <label for="option-software-3"><input
							type="checkbox" id="option-software-3" name="vehicle" value="">
							Sketch</label><br> <label for="option-software-4"><input
							type="checkbox" id="option-software-4" name="vehicle" value="">
							WordPress</label><br> <label for="option-software-5"><input
							type="checkbox" id="option-software-5" name="vehicle" value="">
							HTML &amp; CSS</label><br>
					</form>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-1.jpg);"> <span
								class="price">Software</span>
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
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-2.jpg);"> <span
								class="price">Software</span>
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
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-3.jpg);"> <span
								class="price">Software</span>
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

					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-4.jpg);"> <span
								class="price">Software</span>
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
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-5.jpg);"> <span
								class="price">Software</span>
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
					<div class="col-md-6 d-flex align-items-stretch ftco-animate">
						<div class="project-wrap">
							<a href="#" class="img"
								style="background-image: url(${pageContext.request.contextPath}/healthy/images/work-6.jpg);"> <span
								class="price">Software</span>
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
				<div class="row mt-5">
					<div class="col">
						<div class="block-27">
							<ul>
								<li><a href="#">&lt;</a></li>
								<li class="active"><span>1</span></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&gt;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>
