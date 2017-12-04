<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userData/resume_history_demo.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs %>userData/resume_history_demo.js?randomId=<%=Math.random()%>"></script>
<body onload="init()">
<form id="dataForm">
	<center>
	<table class="mainDiv_table bgColorFFFFFF">
			<col class="wi10"/>
			<col class="wi40"/>
			<col class="wi40"/>
			<col class="wi10"/>
			<tr>
				<td></td>
				<td id="list" colspan="2" valign="top">
					<table id="demo" class="wi100">
						<col class="wi10"/>
						<col class="wi90"/>
					</table>
				</td>
				<td></td>
			</tr>
			<tr class="h41">
				<td></td>
				<td class="textC">
					<button type="button" class="btn btn-primary leftBtn" onclick="goSubmit()">
						保存
					</button>
				</td>
				<td class="textC">
					<button type="button" class="btn btn-primary rightBtn" onclick="closeWin('history_demo')">
						取消
					</button>
				</td>
				<td></td>
			</tr>
		</table>
	</center>
</form>
</body>
</html>