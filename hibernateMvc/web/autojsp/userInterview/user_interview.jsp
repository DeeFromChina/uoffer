<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userInterview/user_interview.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs %>uesrInterview/user_interview.js?randomId=<%=Math.random()%>"></script>
<body bgcolor="#FFFFFF" onload="init()">
<form id="dataForm">
	<center>
		<div class="wi80 bgColorE7E7E7">
			<table class="wi100">	
				<col class="wi25"/>
				<col class="wi25"/>
				<col class="wi25"/>
				<col class="wi25"/>
				<tr>
					<td><div class="input-group selectInput" id="country"></div></td>
					<td><div class="input-group selectInput" id="province"></div></td>
					<td><div class="input-group selectInput" id="city"></div></td>
					<td><div class="input-group selectInput" id="area"></div></td>
				</tr>
			</table>
		</div>
		<div class="messageDiv">
			<div>
				<font>查询出&nbsp;<font color="#000000">0</font>&nbsp;条信息</font>
			</div>
		</div>
		<div class="wi80" id="formList">
			<div class="list_row">
				<div class="list_cow">
					<div>
						<font>测试一段文字的字体是山ID号覅汉顺帝发货</font>
					</div>
					<div>
						<font>测试一段文字的字体是山ID号覅汉顺帝发货</font>
					</div>
				</div>
				<div class="list_cow">
					<font>4000~5000</font>
				</div>
			</div>
			<ul class="pagination">
			    <li><a href="#">&laquo;</a></li>
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li><a href="#">&raquo;</a></li>
			</ul>
		</div>
	</center>
</form>
</body>
</html>









