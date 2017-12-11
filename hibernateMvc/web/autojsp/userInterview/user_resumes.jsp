<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userInterview/user_resumes.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs %>uesrInterview/user_resumes.js?randomId=<%=Math.random()%>"></script>
<body bgcolor="#FFFFFF" onload="init()">
<form id="dataForm">
	<center>
		<table class="mainDiv_table hi100">
			<col class="wi10"/>
			<col class="wi30"/>
			<col class="wi50"/>
			<col class="wi10"/>
			<tr>
				<td/>
				<td valign="top">
					<div class="photoDiv">
						<img id="photoReview" onclick="userPhotoUpload()"/>
					</div>
					<div class="userRemark">
						<table>
							<tr>
								<td class="col1" id="username"></td>
							</tr>
							<tr>
								<td class="col2" id="phone"></td>
							</tr>
							<tr>
								<td class="col2" id="email"></td>
							</tr>
						</table>
					</div>
				</td>
				<td valign="top" id="resumeList">
					<div class="titleDiv">
						简历
						<div>
						</div>
					</div>
				</td>
				<td/>
			</tr>
		</table>
	</center>
</form>
</body>
</html>
