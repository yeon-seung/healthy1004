<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%-- spring security custom tag를 사용하기 위한 선언 --%>
<%@taglib prefix="sec"  uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<script type="text/javascript">
alert("회원가입되었습니다.\n로그인 후 이용해 주세요.");
location.href="${pageContext.request.contextPath}/home";
</script>