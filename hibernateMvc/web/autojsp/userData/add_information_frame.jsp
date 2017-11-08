<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script src="<%=baseJs %>userData/add_information_frame.js"></script>
<body bgcolor="#E0FFFF" onload="init()">
<form id="dataForm">
	<center>
		<div class="mainDiv">
			<table class="mainDiv_table">
				<col class="wi5"/>
				<col class="wi22"/>
				<col class="wi22"/>
				<col class="wi22"/>
				<col class="wi22"/>
				<col class="wi5"/>
				<tr>
					<td/>
					<td class="textC">
						<a href="#resume_add_information" data-toggle="tab">
							<div class="circleA floatL"></div>
							<font class="color00B38A font-18 floatL">&nbsp;&nbsp;基本信息 </font>
						</a>
					</td>
					<td class="textC">
						<a href="#resume_add_planjob" data-toggle="tab">
							<div class="circleB floatL"></div>
							<font class="font-18 floatL">&nbsp;&nbsp;期望工作 </font>
						</a>
					</td>
					<td class="textC">
						<a href="#resume_add_workexperience" data-toggle="tab">
							<div class="circleB floatL"></div>
							<font class="font-18 floatL">&nbsp;&nbsp;个人经历 </font>
						</a>
					</td>
					<td class="textC">
						<a href="#resume_add_questionnaire" data-toggle="tab">
							<div class="circleB floatL"></div>
							<font class="font-18 floatL">&nbsp;&nbsp;调查问卷 </font>
						</a>
					</td>
					<td/>
				</tr>
			</table>
			<div id="myTabContent" class="tab-content wi00">
			    <!-- <div class="tab-pane fade" id="resume_add_information">
			        <iframe class="wh100" src="resume_add_information.jsp" scrolling="no" frameborder="0" id="iframe1" name="iframe1"></iframe>
			    </div> -->
			    <!-- <div class="tab-pane fade in active" id="resume_add_planjob">
			        <iframe class="wh100" src="resume_add_planjob.jsp" scrolling="no" frameborder="0" id="iframe2" name="iframe2"></iframe>
			    </div> -->
			    <div class="tab-pane fade in active" id="resume_add_workexperience">
			        <iframe class="wh100" src="resume_add_workexperience.jsp" scrolling="no" frameborder="0" id="iframe3" name="iframe3"></iframe>
			    </div>
			    <!-- <div class="tab-pane fade in active" id="resume_add_questionnaire">
			        <iframe class="wh100" src="resume_add_questionnaire.jsp" scrolling="no" frameborder="0" id="iframe4" name="iframe4"></iframe>
			    </div> -->
			</div>
		</div>
	</center>
</form>
</body>
</html>
