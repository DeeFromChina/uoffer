<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userData/resume_add_workexperience_add.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs %>userData/resume_add_workexperience_add.js?randomId=<%=Math.random()%>"></script>
<body onload="init()">
<form id="dataForm">
	<center>
	<input type="hidden" id="userExperienceId" name="userExperienceId"/>
	<table class="mainDiv_table bgColorFFFFFF">
			<col class="wi10"/>
			<col class="wi15"/>
			<col class="wi65"/>
			<col class="wi10"/>
			<tr>
				<td colspan="4" class="textR">
					<a class="font-14" onclick="history">选择历史模板</a>
				</td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font color="#FF0000">*</font><font class="font-14" id="name"></font>
				</td>
				<td>
					<input type="text" name="name" class="form-control input-class">
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font color="#FF0000">*</font><font class="font-14" id="time"></font>
				</td>
				<td>
					<div class='input-append date form_datetime'>
					    <input type='text' class='date-control form-control' name="startTime" readonly>
					    <span class="add-on"><i class="icon-th"></i></span>
					</div>
					<div class="timeLink">~</div>
					<div class='input-append date form_datetime'>
					    <input type='text' class='date-control form-control' name="endTime" readonly>
					    <span class="add-on"><i class="icon-th"></i></span>
					</div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font color="#FF0000">*</font><font class="font-14" id="job"></font>
				</td>
				<td>
					<input type="text" name="job" class="form-control input-class">
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font color="#FF0000">*</font><font class="font-14" id="jobDescription"></font>
				</td>
				<td>
					<input type="text" name="jobDescription" class="form-control input-class">
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font color="#FF0000">*</font><font class="font-14" id="jobBelongTitle"></font>
				</td>
				<td>
					<div class="input-group input-class border-collapse">
						<input type="hidden" id="jobBelong" name="jobBelong" />
						<input type="text" id="jobBelongName" name="jobBelongName" class="form-control" readOnly="readOnly"/>
						<span class="input-group-addon hand">
							<span class="glyphicon glyphicon-th" onclick="selectJob()"></span>
						</span>
					</div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font color="#FF0000">*</font><font class="font-14" id="levelName"></font>
				</td>
				<td>
					<div class="input-group selectInput" id="level"></div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19 paddingTop10" valign="top">
					<font class="font-14" id="descript1"></font>
				</td>
				<td>
					<textarea class="form-control" name="descript1" rows="8"></textarea>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19 paddingTop10" valign="top">
					<font class="font-14" id="descript2"></font>
				</td>
				<td>
					<textarea class="form-control" name="descript2" rows="8"></textarea>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2" class="textC">
					<button type="button" class="btn btn-primary submitBtn" onclick="goSubmit()">
						保存
					</button>
				</td>
				<td></td>
			</tr>
		</table>
	</center>
</form>
</body>
</html>
