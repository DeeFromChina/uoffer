<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userData/resume_add_information.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs %>userData/resume_add_information.js?randomId=<%=Math.random()%>"></script>
<body onload="init()">
<form id="dataForm">
	<center>
		<table class="mainDiv_table bgColorFFFFFF">
			<col class="wi15"/>
			<col class="wi35"/>
			<col class="wi35"/>
			<col class="wi15"/>
			<tr>
				<td colspan="4" class="textC font-18 Parting-line">
					Hi,欢迎您的到来！让我们来认识一下吧。
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">姓名<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<input type="text" name="name" class="form-control input-class" placeholder="请输入邮箱">
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">性别<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="2">
					<input type="hidden" name="sex" id="sex"/>
					<button id="btn1" type="button" class="btn btn-default w140" onclick="getTran('1')">
						<font>男</font>
					</button>
					<button id="btn2" type="button" class="btn btn-default w140" onclick="getTran('2')">
						<font>女</font>
					</button>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">工作年限<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<div class="input-group selectInput" id="workTime"></div>
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">您期望的工作岗位是？（最多选择两项）<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<input type="hidden" id="gojobId" name="gojobId"/>
					<div id="jobMeum"></div>
				</td>
			</tr>
			<tr hide="title1">
				<td></td>
				<th colspan="3">
					<font class="font-14">您在<font id="title1"></font>岗位上有多长时间的工作经验</font>
				</th>
			</tr>
			<tr hide="title1">
				<td></td>
				<th colspan="3">
					<div class="input-group selectInput" id="workTime1"></div>
				</th>
			</tr>
			<tr hide="title2">
				<td></td>
				<th colspan="3">
					<font class="font-14">您在<font id="title2"></font>岗位上有多长时间的工作经验</font>
				</th>
			</tr>
			<tr hide="title2">
				<td></td>
				<th colspan="3">
					<div class="input-group selectInput" id="workTime2"></div>
				</th>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">您擅长哪些工作技能？</font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<input type="hidden" id="skill" name="skill"/>
					<div id="skillMeum">
					</div>
				</td>
			</tr>
			<tr hide="otherskill1">
				<td></td>
				<th colspan="3">
					<font class="font-14">其他</font>
				</th>
			</tr>
			<tr hide="otherskill2">
				<td></td>
				<th colspan="3">
					<input type="text" id="otherskill" name="otherskill" class="form-control input-class">
				</th>
			</tr>
			<tr>
				<td colspan="4" class="Parting-line"></td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">关联你的社交网络</font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td>
					<img id="zhihu" class="urlImg floatL"/>
					<input type="text" name="zhihu" class="form-control marginLeft49 wi70" placeholder="请输入你的知乎ID">
				</td>
				<td>
					<img id="github" class="urlImg floatL"/>
					<input type="text" name="github" class="form-control marginLeft49 wi70" placeholder="请输入你的知乎ID">
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<img id="blog" class="urlImg floatL"/>
					<input type="text" name="blog" class="form-control marginLeft49 wi70" placeholder="请输入你的知乎ID">
				</td>
				<td>
					<img id="personlink" class="urlImg floatL"/>
					<input type="text" name="personlink" class="form-control marginLeft49 wi70" placeholder="请输入你的知乎ID">
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2" class="textC">
					<button type="button" class="btn btn-primary submitBtn" onclick="goNext()">
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
