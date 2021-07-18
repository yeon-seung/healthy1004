<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	alert("${SPRING_SECURITY_LAST_EXCEPTION.message}");
	var compare = "${SPRING_SECURITY_LAST_EXCEPTION.message}";
	if(compare=="회원 아이디가 존재하지 않습니다"){
		document.cookie = null;
	}
	location.href="${pageContext.request.contextPath}/home";
</script>







