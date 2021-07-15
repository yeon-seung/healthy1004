<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- spring security custom tag를 사용하기 위한 선언 --%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<script type="text/javascript" charset="UTF-8">
	<sec:authentication property="principal.memberName" var="name"/>
	alert("${name}님 회원정보 수정되었습니다.\n마이페이지로 다시 이동합니다.");
	location.href = "${pageContext.request.contextPath}/mypage";
</script>