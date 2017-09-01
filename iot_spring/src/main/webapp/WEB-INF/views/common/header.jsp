<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<c:set var="rPath" value="${pageContext.request.contextPath}"/>
<%
String version = "1.3.2";
%>
<script src="<c:url value="/resources/js/jquery-3.2.1.js?version=<%=version%>"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui-1.9.2.custom.js?version=<%=version%>"/>"></script>
<script src="<c:url value="/resources/js/jquery.fileupload.js?version=<%=version%>"/>"></script>
<script src="<c:url value="/resources/js/jquery.iframe-transport.js?version=<%=version%>"/>"></script>
<script src="<c:url value="/resources/ui/common.js?version=<%=version%>"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap.min.js?version=<%=version%>"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=<%=version%>"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=<%=version%>"/>"></script>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-theme.min.css?version=<%=version%>"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap.min.css?version=<%=version%>"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-table.css?version=<%=version%>"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/common.css?version=<%=version%>"/>"/>

<script>
var rootPath = "${rootPath}";
$(document).ready(function(){
	var nowUrl = "${nowUrl}";
	var obj = $("a[href='" + nowUrl + "']").parent().attr("class","active");
})
function doMovePage(pageId){
	var url = "${rootPath}";
	if(pageId=="board"){
		url += "/board/board_select.jsp";
	}else if(pageId=="main"){
		url += "/";
	}else if(pageId=="insertBoard"){
		url += "/board/board_insert.jsp";
	}
	location.href=url;
}

function alertOp(){
	alert($("#op").val());
}
</script>

<div class="container">
	<div class="page-header">				
			<ul class="nav nav-tabs" >
				<li><a href="/user/main">Home</a></li>
				<li><a href="/board/board_select.jsp">Board</a></li>
				<li><a href="/user/list">UserInfo</a></li>
				<li><a href="/role/role_select.jsp">권한정보</a></li>
				<li><a href="/vendor/vendor_list.jsp">회사정보</a></li>
				<li><a href="/goods/goods_list.jsp">상품정보</a></li>
				<li><a href="/user/logout_ok.jsp"></a></li>
			</ul>
		</div>
	</div>

	
	<!--/.nav-collapse -->
