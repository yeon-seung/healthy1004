<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript">
	function alert() {
		if(confirm("정말 이 회원을 탈퇴시키겠습니까?")==true) {
			return "/admin/member_delete_result";
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
					<h1 class="mb-0 bread">Delete Member</h1>
				</div>
			</div>
		</div>
	</section>

	<!-- <div class="sidebar-box bg-white p-4 ftco-animate"> -->
	<section class="ftco-section bg-light">
	<div class="text pt-3">
		<div class="container">
			<h3 style="text-align: center; color:gray"  >회원 목록</h3><br><br>
			<p style="text-align: center; color:gray">회원 아이디를 누르면 탈퇴됩니다.</p>
			<form method="POST"
				action="${pageContext.request.contextPath}/admin/deleteMember">
				<sec:csrfInput />
				<table class="table table-hover">
					<tr>
						<td>아이디</td>
						<td>이름</td>
						<td>주소</td>
						<td>이메일</td>
						<td>키</td>
						<td>몸무게</td>
						<td>나이</td>
						<td>전화번호</td>
					</tr>
					<c:forEach items="${list}" var="list">
						<tr>
							<td><a
								href="${pageContext.request.contextPath}/admin/deleteMember?memberId=${list.memberId}" onclick="return alert();">
								${list.memberId}</a></td>
							<td><c:out value="${list.memberName}" /></td>
							<td><c:out value="${list.address}" /></td>
							<td><c:out value="${list.email}" /></td>
							<td><c:out value="${list.height}" /></td>
							<td><c:out value="${list.weight}" /></td>
							<td><c:out value="${list.age}" /></td>
							<td><c:out value="${list.phone}" /></td>
						</tr>
					</c:forEach>
				</table>
			</form>
		</div>
	</div>
	</section>
	<!-- </div> -->

</sec:authorize>