<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript">
	function alert() {
		if (confirm("정말 이 크루를 삭제하시겠습니까?\n크루를 삭제하시면 크루에 관련된 모든 정보가 삭제됩니다.") == true) {
			return "/admin/crew_delete_result";
		} else {
			return false;
		}
	}
</script>

<sec:authorize access="hasRole('ROLE_ADMIN')">
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
					<h1 class="mb-0 bread">Delete Crew</h1>
				</div>
			</div>
		</div>
	</section>

	<!-- <div class="sidebar-box bg-white p-4 ftco-animate"> -->
	<section class="ftco-section bg-light">
		<div class="text pt-7">
			<div class="container">
				<h3 style="text-align: center; color: gray">크루 목록</h3><br><br>
				<p style="text-align: center; color:gray">크루 이름을 누르면 삭제됩니다.</p>
				<form method="POST"
					action="${pageContext.request.contextPath}/admin/deleteCrew"
					id="regForm">
					<sec:csrfInput />
					<table class="table table-hover">
						<tr>
							<td>아이디</td>
							<td>이름</td>
							<td>정보</td>
							<td>인원</td>
							<td>위치</td>
						</tr>
						<c:forEach items="${list}" var="list">
							<tr>
								<td><c:out value="${list.crewId}" /></td>
								<td><a
									href="${pageContext.request.contextPath}/admin/deleteCrew?crewName=${list.crewName}"
									onclick="return alert();">${list.crewName}</a>
								<td><c:out value="${list.crewInfo}" /></td>
								<td><c:out value="${list.crewSize}" /></td>
								<td><c:out value="${list.crewLocation}" /></td>
							</tr>
						</c:forEach>
					</table>
				</form>
			</div>
		</div>
	</section>
	<!-- </div> -->

</sec:authorize>