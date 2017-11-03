<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<script src="<%=baseJs %>public/city_select.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
</head>
<body onload="init()">
	<form id="dataForm">
		<table class="formtable">
			<tr>
				<td>
					<div class="input-group selectInput" id="country"></div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-group selectInput" id="province"></div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-group selectInput" id="city"></div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-group selectInput" id="area"></div>
				</td>
			</tr>
		</table>
	</form>
	<div class="formBtnGroup">
		<button type="button" class="btn btn-primary submitBtn" onclick="submit()">
			确认
		</button>
	</div>
</body>
</html>
