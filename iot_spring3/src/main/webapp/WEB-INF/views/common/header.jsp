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

<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/sp/user/main">Home</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="">게시판가기</a></li>
            <li><a href="/sp/user/list">유저정보가기</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
</nav>
   <div class="mastfoot">
            <div class="inner">
              <p>Cover template for <a href="https://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
            </div>
   </div>