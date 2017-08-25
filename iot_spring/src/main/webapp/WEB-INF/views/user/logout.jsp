<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.invalidate();
%>
<script>
alert=("로그아웃 되었습니다.");
location.href="${pageContext.request.contextPath}/user/main.jsp";
</script>