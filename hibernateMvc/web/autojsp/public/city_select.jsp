<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<script src="<%=request.getContextPath() %>/autojs/public/city_select.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
</head>
<body onload="init()">
	<div class="input-group selectInput" id="country">
 	</div>
	<div class="input-group selectInput" id="province">
 	</div>
	<div class="input-group selectInput" id="city">
 	</div>
	<div class="input-group selectInput" id="area">
 	</div>
   <input type="button" value="test" style="width:100px;height:100px;"/>
</body>
</html>
