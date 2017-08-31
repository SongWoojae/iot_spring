<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<title>유저 리스트</title>

<div class="container">
	<div class="container"
		style="text-align: center; padding-top: 20px; padding-bottom: 20px;">
		<select id="s_vendor" class="selectpicker">
		</select> <label>유저이름 : </label> <input type="text" id="userName" /> <input
			type="button" id="searchGoods" value="검색" />
	</div>
	<table id="table" data-height="460"
		class="table table-bordered table-hover">
		<thead>
			<tr>
				<th data-field="userNum" class="text-center">번호</th>
				<th data-field="userId" class="text-center">아이디</th>
				<th data-field="userPwd" class="text-center">비밀번호</th>
				<th data-field="userName" class="text-center">이름</th>
				<th data-field="age" class="text-center">나이</th>
				<th data-field="address" class="text-center">주소</th>
				<th data-field="hp1" class="text-center">휴대폰</th>
				<th data-field="hp2" class="text-center">휴대폰</th>
				<th data-field="hp3" class="text-center">휴대폰</th>
				<th data-field="departNum" class="text-center">departnum</th>
				<th data-field="userRoleLevel" class="text-center">계정레벨</th>
				<th data-field="gender" class="text-center">성별</th>
			</tr>
		</thead>
		<tbody id="result_tbody">
		</tbody>
	</table>

	<script>


	$(document).ready(function(){
		var param = {};
		param = JSON.stringify(param);
		var a = { 
		        type     : "POST"
		    	    ,   url      : "${pageContext.request.contextPath}/user/list"
		    	    ,   dataType : "json" 
		    	    ,   beforeSend: function(xhr) {
		    	        xhr.setRequestHeader("Accept", "application/json");
		    	        xhr.setRequestHeader("Content-Type", "application/json");
		    	    }
		    	    ,   data     : param
		    	    ,   success : function(result){
		    	    	var userList = result.userList;
		    	    	var result = "";
		    	    		var resultStr = "";
		    	    	for(var i=0, max=userList.length;i<max;i++){
		    	    		$('#table').bootstrapTable('destroy');
		    	    			var list = userList[i];
		    	    			//resultStr += "<tr data-view='" + list.userNum + "'>";
		    	    			resultStr += "<td class='text-center'>" + list.userNum + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.userId + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.userPwd + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.userName + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.age + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.address + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.hp1 + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.hp2 + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.hp3 + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.departNum + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.userRoleLevel + "</td>";
		    	    			resultStr += "<td class='text-center'>" + list.gender + "</td>";
		    	    			resultStr += "</tr>";
		    	    		}
		    	    		$('#result_tbody').html(resultStr);
		    	    	
		    	    	$("#userDiv").html(result);
		    	    }
		    	    ,   error : function(xhr, status, e) {
		    		    	alert("에러 : "+e);
		    		},
		    		done : function(e) {
		    		}
		    		};
		$.ajax(a);
	})
</script>
	<body>
		<div id="userDiv"></div>
	</body>
	</html>