<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container-view">
    <table id="table" data-height="460" class="table table-bordered table-hover">
    <thead>
    <tr>
    <th colspan="2" class="text-center"><h5 class="form-signin-heading">회원 등록 페이지</h5></th>
    </tr>
    <tr>
    <td class="col-md-2">회원 ID</td>
    <td class="col-md-2"><input type="text" name="userid" id="userid"></td>
    </tr>
    <tr>
    <td>회원 이름</td>
    <td><input type="text" name="username" id="username"></td>
    </tr>
    <tr>
    <td>회원 나이</td>
    <td><input type="text" name="userage" id="userage"></td>
    </tr>
    <tr>
    <td>회원 주소</td>
    <td><input type="text" name="useraddress" id="useraddress"></td>
    </tr>
    <tr>
    <td>회원 핸드폰번호</td>
    <td><input type="text" name="userhp1" id="userhp1"> - <input type="text" name="userhp2" id="userhp2"> - <input type="text" name="userhp3" id="userhp3"></td>
    </tr>
    <tr>
    <td>회원 비밀번호</td>
    <td><input type="text" name="userpwd" id="userpwd"></td>
    </tr>
     <tr>
    <td>회원 성별</td>
    <td><input type="text" name="usergender" id="usergender"></td>
    </tr>
    <tr>
    <td>회원 레벨</td>
    <td><input type="text" name="userlevel" id="userlevel"></td>
    </tr>
        <tr>
    <td>회원 부서번호</td>
    <td><input type="text" name="userdepart" id="userdepart"></td>
    </tr>
    <tr>
    <td colspan="2" align="center">
    <button id="btnInsert" class="btn btn-primary" type="button">회원등록</button>
    <button id="goList" class="btn" type="button">취소</button>
    </td>
    </tr>
    </table>
    </div>
<!-- /container -->
<script>
$("#btnInsert").click(function(){
	var param={};
	var id=$("#userid").val();
	var name=$("#username").val();
	var age=$("#userage").val();
	var address=$("#useraddress").val();
	var hp1=$("#userhp1").val();
	var hp2=$("#userhp2").val();
	var hp3=$("#userhp3").val();
	var pwd=$("#userpwd").val();
	var gender=$("#usergender").val();
	var level=$("#userlevel").val();
	var depart=$("#userdepart").val();
	param["userId"]=id;
	param["userName"]=name;
	param["age"]=age;
	param["address"]=address;
	param["hp1"]=hp1;
	param["hp2"]=hp2;
	param["hp3"]=hp3;
	param["userPwd"]=pwd;
	param["gender"]=gender;
	param["userRoleLevel"]=level;
	param["departNum"]=depart;
	param=JSON.stringify(param);
	$.ajax({
		 type     : "POST"
	         ,   url      : "${pageContext.request.contextPath}/user/insert"
	         ,   dataType : "json" 
	         ,   beforeSend: function(xhr) {
	             xhr.setRequestHeader("Accept", "application/json");
	             xhr.setRequestHeader("Content-Type", "application/json");
	         }
	         ,   data     : param
	         ,   success : function(result){
	            alert(result.msg);
	            if(result.data=="S"){
	            	location.href="${pageContext.request.contextPath}/user/main";
	            }else{
	            	$("#id").val("");
	            	var pwd=$("#pwd").val("");
	            }
	         }
	         ,   error : function(xhr, status, e) {
	               alert("에러 : "+e);
	        },
	        done : function(e) {
	        }
	        });
	     });
$(document).ready(function(){
	var params={};
	params["command"]="vendorlist";
	movePageWithAjax(params,"/list.goods",callback);
})


</script>
</body>
</html>