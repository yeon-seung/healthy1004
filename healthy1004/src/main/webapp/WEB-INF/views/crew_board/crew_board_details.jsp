<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<script type="text/javascript">
    $(document).ready(function(){
    	
    	$("#deleteForm").submit(function() {
			return confirm("게시글을 삭제하시겠습니까?");
		});//deleteForm
		
		$("#updateForm").submit(function() {
			return confirm("게시글을 수정하시겠습니까?");
		});//updateForm
    
    });//ready	
</script>

<section class="hero-wrap hero-wrap-2"
	style="background-image:url('${pageContext.request.contextPath}/healthy/images/bike.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<h1 class="mb-0 bread">Crew Board Details</h1>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row">
			<%-- 삭제하려면 하기 --%>
			<div
				class="col-md-4 ftco-animate d-flex align-items-center align-items-stretch">
				<div class="staff-2 w-100">
					<div class="img-wrap d-flex align-items-stretch">
						<div class="img align-self-stretch d-flex align-items-end"
							style="background-image: url('${pageContext.request.contextPath}/healthy/images/snow.jpg');">

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8 d-flex align-items-center">
				<div class="staff-detail w-100 pl-md-5">
					<h3>Title</h3>
					<p>${ crewBoard.boardTitle }</p>
					<h3>written by</h3>
					<p>${ crewBoard.memberId }</p>
					<h3>Content</h3>
					<p>${ crewBoard.boardContent }</p>
					<h3>Reporting Date</h3>
					<p>${ crewBoard.boardTime }</p>
					
					<!-- 글 삭제 수정 버튼 -->
<%-- 					${crewBoard.memberId} --%>
<%-- 					${sessionScope} --%>

					<sec:authentication property="principal.memberId" var="memberId"/>
					<c:if test="${requestScope.crewBoard.memberId == memberId}">
					<button form="deleteForm" class="btn float-right bg-primary text-white" type="submit">삭제</button>
					<button form="updateForm" class="btn float-right bg-primary text-white" type="submit">수정</button>
					 
					<!-- 삭제 form -->
					<form action="${pageContext.request.contextPath}/deleteCrewBoardPost?boardId=${crewBoard.boardId}" id="deleteForm" method="POST">
						<sec:csrfInput/>
						<input type="hidden" name="crewId" value="${crewBoard.crewId}">
						${crewBoard.crewId}
					</form>
					 
					<!-- 수정 form -->
					<form action="updateView" id="updateForm" method="POST">
					<sec:csrfInput/>
						<input type="hidden" name="no" value="${requestScope.pvo.no}">			
					</form>			 
					</c:if>
				</div>
			</div>
		</div>
	</div>
</section>