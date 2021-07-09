<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<script type="text/javascript">
	function clickPostCrewBoardBtn(){
		location.href="${pageContext.request.contextPath}/postCrewBoardForm?crewId=${crewId}";
	}
</script>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/run.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<h1 class="mb-0 bread">Crew Board</h1>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row">
			<div class="col-12 m-4 ">
				<input id="postCrewBoardBtn" type="button"
					class="btn float-right bg-primary text-white" value="글쓰기"
					onclick="clickPostCrewBoardBtn()">
			</div>
		</div>
		<div class="row d-flex">
			<c:forEach items="${ crewBoardList }" var="list" varStatus="status">
				<div class="col-lg-4 ftco-animate">
					<div class="blog-entry shadow">
						<a
							href="${pageContext.request.contextPath}/crew_board_detail?crewBoardId=${ list.boardId }"
							class="block-20"
							style="background-image: url('${pageContext.request.contextPath}/healthy/images/snow.jpg'); ">
						</a>
						<div class="text d-block">
							<div class="meta">
								<p>
									<a href="#"><span class="fa fa-calendar mr-2"></span>${ list.boardTime }
										&nbsp; &nbsp;</a> <a
										href="${pageContext.request.contextPath}/crew_board_detail?crewBoardId=${ list.boardId }"><span
										class="fa fa-user mr-2"></span>${ list.memberId }</a>
								</p>
							</div>
							<h5 class="heading">
								<a
									href="${pageContext.request.contextPath}/crew_board_detail?crewBoardId=${ list.boardId }">${ list.boardTitle }</a>
							</h5>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="row mt-5">
			<div class="col text-center">
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
</section>