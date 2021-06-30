<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<h1 class="mb-0 bread">Map봐요~~</h1>
			</div>
		</div>
	</div>
</section>



<section class="ftco-section ftco-about img">
	<div class="container">
		<div class="row d-flex">
			<div class="col-md-12 about-intro">
				<div class="row">
					<%-- 지도 부분 --%>
					<div class="col-md-6 d-flex">
						여기는 map api를 넣어주세요~
					</div>
					<%-- 지도 부분 end --%>
					<%-- 크루 리스트 보기--%>
					<div class="col-md-6 pl-md-5 py-5">
						<div class="row justify-content-start pb-3">
							여기는 크루 리스트를 보여주세요~
							<%-- 
								여기는 모양만 확인하시고 없애주시면 감사드리겠습니다~
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
							--%>
						</div>
					</div>
					<%-- 크루 리스트 보기 end --%>
				</div>
			</div>
		</div>
	</div>
</section>