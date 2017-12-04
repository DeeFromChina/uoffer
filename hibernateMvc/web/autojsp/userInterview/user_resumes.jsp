<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script src="<%=baseJs %>uesrInterview/user_resumes.js?randomId=<%=Math.random()%>"></script>
<body bgcolor="#E0FFFF" onload="init()">
<form id="dataForm" class="hi100">
	<center>
		<table class="mainDiv_table">
			<col class="wi30"/>
			<col class="wi70"/>
			<tr>
				<td valign="top">
				</td>
				<td valign="top">
					<div id="resumelist" class="wi100">
						<div style="border:1px #4F4F4F solid;float:left;width:35%;height:80px;margin-left:5%;"></div>
						<div style="border:1px #4F4F4F solid;float:left;width:35%;height:80px;margin-left:5%;"></div>
					</div>
				</td>
			</tr>
		</table>
	</center>
</form>
</body>
</html>
