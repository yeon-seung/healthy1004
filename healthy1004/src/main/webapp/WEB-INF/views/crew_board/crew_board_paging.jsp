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
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/bike.jpg');">
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

		<c:choose>
			<c:when test="${empty crewBoardListPaging}">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<div style="margin-right: -17rem !important;">
						<h3 class="mb-0 bread">아직 크루 게시물이 존재하지 않습니다.<br>첫 게시물을 작성해보세요.</h3>
						<input id="postCrewBoardBtn" type="button" style="margin: 2rem;"
									class="btn float-center bg-primary text-white" value="글쓰기"
									onclick="clickPostCrewBoardBtn()">
					</div>
				</div>
			</c:when>
			<c:otherwise>
					<div class="row">
						<div class="col-12 m-4 ">
							<input id="postCrewBoardBtn" type="button"
								class="btn float-right bg-primary text-white" value="글쓰기"
								onclick="clickPostCrewBoardBtn()">
						</div>
					</div>
					<div class="row d-flex">
				<c:forEach items="${ crewBoardListPaging }" var="list" varStatus="status">
					<div class="col-lg-4 ftco-animate">
						<div class="blog-entry shadow">
							<a
								href="${pageContext.request.contextPath}/crew_board_detail?crewBoardId=${ list.boardId }"
								class="block-20"
								style="background-image: url('./imgUpload/${list.boardImg }'); background-position: center center; ">
							</a>
							<div class="text d-block">
								<div class="meta">
									<p>
										<a href="${pageContext.request.contextPath}/crew_board_detail?crewBoardId=${ list.boardId }"><span
											class="fa fa-user mr-2"></span>${ list.memberId }</a><br>
										<a href="#"><span class="fa fa-calendar mr-2"></span>${ list.boardTime }
											&nbsp; &nbsp;</a>
									</p>
								</div><hr>
								<h5 class="heading">
									<a
										href="${pageContext.request.contextPath}/crew_board_detail?crewBoardId=${ list.boardId }">${ list.boardTitle }</a>
								</h5>
	
							</div>
						</div>
						
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
			
		</div>
	<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">	
						<ul>
							<c:if test="${paging.startPage !=1 }">
								<li><a href="/crew_board_paging?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&crewId=${crewId}">&lt;&lt;</a></li>
							</c:if>
							<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
								<c:choose>
									<c:when test="${p == paging.nowPage }">
										<li class="active"><span>${p }</span></li>
									</c:when>
									<c:when test="${p != paging.nowPage }">
										<li><a href="/crew_board_paging?nowPage=${p }&cntPerPage=${paging.cntPerPage}&crewId=${crewId}">${p }</a><li>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:if test="${paging.endPage != paging.lastPage}">
								<li><a href="/crew_board_paging?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&crewId=${crewId}">&gt;&gt;</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
	</div>
</section>