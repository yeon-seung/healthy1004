<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- spring security custom tag를 사용하기 위한 선언 --%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<script type="text/javascript" charset="UTF-8">
	var name = '${name}';
	alert(name + " 크루가 삭제되었습니다.");
	location.href = "${pageContext.request.contextPath}/admin/crewDeleteFormPaging";
</script>u