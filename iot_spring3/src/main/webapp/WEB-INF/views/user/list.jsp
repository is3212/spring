<%@include file="/WEB-INF/views/common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div class="container">
	<div class="container" style="text-align: center; padding-top: 20px;padding-bottom: 20px;">
		<label>회원이름 : </label> <input type="text" id="userName"/>
		<input type="button" id="searchGoods" value="검색"/>
		</div>
		<table id="table" data-height="460"
			class="table table-bordered table-hover">
			<thead>
				<tr>
					<th data-field="userNum" class="text-center">회원번호</th>
					<th data-field="userId" class="text-center">회원ID</th>
					<th data-field="userName" class="text-center">회원이름</th>
					<th data-field="age" class="text-center">회원나이</th>
					<th data-field="address" class="text-center">회원주소</th>
					<th data-field="hp1" class="text-center">회원HP번호1</th>
					<th data-field="hp2" class="text-center">회원HP번호2</th>
					<th data-field="hp3" class="text-center">회원HP번호3</th>
					<th data-field="gender" class="text-center">회원성별</th>
					<th data-field="userRoleLevel" class="text-center">회원레벨</th>
					<th data-field="departNum" class="text-center">회원부서번호</th>
				</tr>
			</thead>
			<tbody id="result_tbody">
			</tbody>
		</table>
		<center><button id="btnInsert" class="btn btn-primary" type="button">회원등록</button></center>
	</div>
	<div class="jb-center" style="text-align: center">
		<ul class="pagination" id="page">
		</ul>
	</div>
	<script>
	$(document).ready(function(){
		var param = {};
		param["userName"] = "";
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
		    	    	$("#table").bootstrapTable('destroy');
		    	    	var userList = result.userList;
		    	    	var result = "";
		    	    	for(var i=0, max=userList.length;i<max;i++){
		    	    		var user = userList[i];
		    	    		result+="<tr>";
		    	    		result+="<td class='text-center'>" + user.userNum+"</td>";
		    	    		result+="<td class='text-center'>" + user.userId+"</td>";
		    	    		result+="<td class='text-center'>" + user.userName+"</td>";
		    	    		result+="<td class='text-center'>" + user.age+"</td>";
		    	    		result+="<td class='text-center'>" + user.address+"</td>";
		    	    		result+="<td class='text-center'>" + user.hp1+"</td>";
		    	    		result+="<td class='text-center'>" + user.hp2+"</td>";
		    	    		result+="<td class='text-center'>" + user.hp3+"</td>";
		    	    		result+="<td class='text-center'>" + user.gender+"</td>";
		    	    		result+="<td class='text-center'>" + user.userRoleLevel+"</td>";
		    	    		result+="<td class='text-center'>" + user.departNum+"</td>";
		    	    		result +="</tr>";
		    	    	}
		    	    	$("#result_tbody").html(result);
		    	    	
		    	    }
		    	    ,   error : function(xhr, status, e) {
		    		    	alert("에러 : "+e);
		    		},
		    		done : function(e) {
		    		}
		    		};
		$.ajax(a);
	})
	
	$("#searchGoods").click(function(){
		var userName= $("#userName").val().trim();
		if(userName==""){
			alert("회원이름을 입력해주세요");
			return
		}
		var param = {};
		if(userName!=""){
			param["userName"]=userName;
		}
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
		    	    	$("#table").bootstrapTable('destroy');
		    	    	var userList = result.userList;
		    	    	var result = "";
		    	    	for(var i=0, max=userList.length;i<max;i++){
		    	    		var user = userList[i];
		    	    		result+="<tr>";
		    	    		result+="<td class='text-center'>" + user.userNum+"</td>";
		    	    		result+="<td class='text-center'>" + user.userId+"</td>";
		    	    		result+="<td class='text-center'>" + user.userName+"</td>";
		    	    		result+="<td class='text-center'>" + user.age+"</td>";
		    	    		result+="<td class='text-center'>" + user.address+"</td>";
		    	    		result+="<td class='text-center'>" + user.hp1+"</td>";
		    	    		result+="<td class='text-center'>" + user.hp2+"</td>";
		    	    		result+="<td class='text-center'>" + user.hp3+"</td>";
		    	    		result+="<td class='text-center'>" + user.gender+"</td>";
		    	    		result+="<td class='text-center'>" + user.userRoleLevel+"</td>";
		    	    		result+="<td class='text-center'>" + user.departNum+"</td>";
		    	    		result +="</tr>";
		    	    	}
		    	    	$("#result_tbody").html(result);
		    	    	
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
</body>
</html>