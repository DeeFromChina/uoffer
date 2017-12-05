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
						<img id="test" src=""/>
					</div>
					<div class="userRemark">
						<table>
							<tr>
								<td class="col1">景</td>
							</tr>
							<tr>
								<td class="col2">1234567</td>
							</tr>
							<tr>
								<td class="col2">123123@cc.com</td>
							</tr>
						</table>
					</div>
				</td>
				<td valign="top">
					<div class="titleDiv">
						简历
						<div>
						</div>
					</div>
					<div class="user_resume_div">
						<table class="mainDiv_table">
							<tr>
								<td colspan="2" class="col1">name</td>
							</tr>
							<tr>
								<td class="col2">job|money</td>
							</tr>
							<tr>
								<td class="col3">但某天，百科的“航母杀手”词条被某编导信以为真，于是在甘肃电视台的军事节目《揭秘真相》里，我们看到主持人表情严肃地指出：“……特别是其搭载690战术核显卡的改进型号，一发就可以摧毁一个航母战斗群。”——和百科中的文本完全一样。...</td>
							</tr>
						</table>
					</div>
					<div class="user_resume_div"></div>
					<div class="user_resume_div"></div>
					<div class="user_resume_div"></div>
					<div class="user_resume_div"></div>
					<div class="user_resume_div"></div>
					<div class="user_resume_div"></div>
					<div class="user_resume_div"></div>
					<div class="user_resume_div"></div>
					<div class="user_resume_div"></div>
				</td>
				<td/>
			</tr>
		</table>
	</center>
</form>
</body>
</html>
