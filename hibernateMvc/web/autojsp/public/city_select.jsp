<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script src="<%=request.getContextPath() %>/autojs/public/city_select.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
</head>
<body onload="init()">
	<div class="input-group selectInput" id="Country">
 	</div>
	<div class="input-group selectInput" id="province">
 	</div>
	<div class="input-group selectInput" id="city">
 	</div>
	<div class="input-group selectInput" id="area">
 	</div>
    <button onclick="sumbit()">sumbit</button>
</body>
</html>
