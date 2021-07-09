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
				<h1 class="mb-0 bread">게시글 쓰기</h1>
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
							<h3 class="mb-4">게시글 작성하기</h3>
							<form method="POST" id="contactForm" name="contactForm"
								class="contactForm">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label class="label" for="boardTitle">제목</label> <input
												type="text" class="form-control" name="boardTitle"
												id="boardTitle" placeholder="제목">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label class="label" for="boardContent">내용</label>
											<%-- name, id, placeholder 변경 --%>
											<textarea name="boardContent" class="form-control"
												id="boardContent" cols="30" rows="4" placeholder="내용"></textarea>
										</div>
									</div>
									<div class="col-md-12" align="right">
										<div class="form-group">
											<input type="submit" value="작성하기" class="btn btn-primary">
											<div class="submitting"></div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>