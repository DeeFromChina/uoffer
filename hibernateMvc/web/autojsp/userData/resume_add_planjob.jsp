<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userData/resume_add_planjob.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs %>userData/resume_add_planjob.js?randomId=<%=Math.random()%>"></script>
<%-- <script src="<%=baseJs %>common/common.js?randomId=<%=Math.random()%>" type="text/javascript"></script> --%>
<body onload="init()">
	<form id="dataForm">
		<input type="hidden" id="userResumeId" name="userResumeId"/>
		<center>
			<table class="mainDiv_table bgColorFFFFFF">
				<col class="wi15"/>
				<col class="wi35"/>
				<col class="wi35"/>
				<col class="wi15"/>
				<tr>
					<td colspan="4" class="textC font-18 Parting-line">
						Hi,你打算去哪儿工作
					</td>
				</tr>
				<tr>
					<td></td>
					<th colspan="3">
						<font class="font-14">现居住地<font class="colorFF0033">*</font></font>
					</th>
				</tr>
				<tr>
					<td></td>
					<td colspan="2">
						<input type="text" name="nowResidence" class="form-control input-class" placeholder="请输入名称">
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<th colspan="3">
						<font class="font-14">您期望在哪个城市工作？（可多选）<font class="colorFF0033">*</font></font>
					</th>
				</tr>
				<tr>
					<td></td>
					<td colspan="2">
						<input type="hidden" id="goJobCity" name="goJobCity"/>
						<div id="cityMeum"></div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<th colspan="3">
						<font class="font-14">期望公司性质<font class="colorFF0033">*</font></font>
					</th>
				</tr>
				<tr>
					<td></td>
					<td colspan="3">
						<div class="input-group selectInput" id="companyNature"></div>
					</td>
				</tr>
				<tr>
					<td></td>
					<th colspan="3">
						<font class="font-14">期望公司规模<font class="colorFF0033">*</font></font>
					</th>
				</tr>
				<tr>
					<td></td>
					<td colspan="3">
						<div class="input-group selectInput" id="companyScale"></div>
					</td>
				</tr>
				<tr>
					<td></td>
					<td class="textC">
						<button type="button" class="btn btn-primary skipBtn" onclick="goBack()">
							上一步
						</button>
					</td>
					<td class="textC">
						<button type="button" class="btn btn-primary skipBtn" onclick="goNext()">
							下一步
						</button>
					</td>
					<td></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
