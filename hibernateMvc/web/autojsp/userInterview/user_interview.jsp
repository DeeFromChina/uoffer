<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userInterview/user_resumes.css?randomId=<%=Math.random()%>" type="text/css"/>
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
	</center>
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
</form>
</body>
</html>
