<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script src="<%=baseJs %>public/job_checkbox.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
</head>
<body onload="init()">
	<input type="text" id="condition" />
 	<input type="button" value="search" onclick="searchText('condition')" />
 	
	<div id="jobMeum"></div>
	
    <div class="formBtnGroup">
		<button type="button" class="btn btn-primary submitBtn" onclick="submit()">
			确认
		</button>
	</div>
</body>
</html>
