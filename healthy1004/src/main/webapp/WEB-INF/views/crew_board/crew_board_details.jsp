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
							style="background-image: url('./imgUpload/${crewBoard.boardImg }');">

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8 d-flex align-items-center">
				<div class="staff-detail w-100 pl-md-5">
					<h3>제목</h3>
					<p>${ crewBoard.boardTitle }</p>
					<h3>작성자</h3>
					<p>${ crewBoard.memberId }</p>
					<h3>내용</h3>
					<p>${ crewBoard.boardContent }</p>
					<h3>최근 작성일시</h3>
					<p>${ crewBoard.boardTime }</p>

					<sec:authentication property="principal.memberId" var="memberId"/>
					<c:if test="${requestScope.crewBoard.memberId == memberId}">
					<button form="deleteForm" class="btn float-right bg-danger text-white" type="submit" style="margin-right: 5rem;">삭제</button>
					<button form="updateForm" class="btn float-right bg-primary text-white" type="submit" style="margin-right: 1rem;">수정</button>
					 
					<!-- 삭제 form -->
					<form action="${pageContext.request.contextPath}/deleteCrewBoardPost?boardId=${crewBoard.boardId}" id="deleteForm" method="POST">
						<sec:csrfInput/>
						<input type="hidden" name="crewId" value="${crewBoard.crewId}">
					</form>
					 
					<!-- 수정 form -->
					<form action="${pageContext.request.contextPath}/updateCrewBoardPostForm" id="updateForm" method="POST">
						<sec:csrfInput/>
						<input type="hidden" name="boardId" value="${crewBoard.boardId}">
						<input type="hidden" name="memberId" value="${crewBoard.memberId}">
						<input type="hidden" name="crewId" value="${crewBoard.crewId}">
						<input type="hidden" name="boardTitle" value="${crewBoard.boardTitle}">
						<input type="hidden" name="boardContent" value="${crewBoard.boardContent}">	
						<input type="hidden" name="boardTime" value="${crewBoard.boardTime}">
						<input type="hidden" name="boardImg" value="${crewBoard.boardImg}">
						<input type="hidden" name="boardThumbImg" value="${crewBoard.boardThumbImg}">			
					</form>			 
					</c:if>
				</div>
			</div>
			
		<!-- 댓글 부분 -->	
			<div class="wrapper">
				<div class="contact-wrap w-100 p-md-5 p-4">
				<!-- 댓글 입력 -->
				<div class= "container">
				<h3 style='margin-bottom: -1rem;'>comment</h3>
				<br>
					<form name="commentInsertForm" id="commentInsertForm">
							<div class="input-group">
								<input type="hidden" name="boardId" id="boardId" value="${crewBoard.boardId}">	
								<input type="hidden" name="crewId" value="${crewBoard.crewId}">
								<input type="text" class="form-control" id="commentContent" name="commentContent" placeholder="내용을 입력하세요.">
								<span class="input-group-btn">
                    				<button class="form-control" type="button" name="commentInsertBtn" id="commentInsertBtn">등록</button>
             					</span>
							</div>
					</form>
				</div>
			
				<!-- 댓글 리스트 -->
				<input type="hidden" name="boardId" id="boardId" value="${crewBoard.boardId}">	
				<input type="hidden" id="pageContext" value="${pageContext.request.contextPath}">
				<span id="commentResult" ></span>
				</div>
			</div>


		</div>
	</div>
</section>