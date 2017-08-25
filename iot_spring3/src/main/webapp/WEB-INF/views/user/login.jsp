<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>

<div class="container">
<center><img src="http://cfile25.uf.tistory.com/image/2521124C588467AA12BF0A" style="width:304px;height:250px"></center>
        <h2 class="form-signin-heading">Please login</h2>
        <label for="inputEmail" class="sr-only">ID</label>
        <input type="text" name="id"  id="id" class="form-control" placeholder="ID" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="pwd" id="pwd" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button id="btn2" type="button"  class="form-control2" >Login in</button>

    </div> <!-- /container -->
         <script>
     $("#btn2").click(function(){                            //제이슨을 이용한 ajax
    	 var id=$("#id").val();
    	 var pwd=$("#pwd").val();
    	 var param={};
    	 param["userId"]=id;
    	 param["userPwd"]=pwd;
    	 param=JSON.stringify(param);
    	 $.ajax({ 
             type     : "POST"
         ,   url      : "${pageContext.request.contextPath}/user/login"
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
     </script>
</body>
</html>