<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userData/resume_add_planjob.css" type="text/css"/>
</head>
<script src="<%=baseJs %>userData/resume_add_planjob.js"></script>
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
						Hi,你打算去哪儿工作
					</td>
				</tr>
				<tr>
					<td></td>
					<th colspan="3">
						<font class="font-14">工作地点<font class="colorFF0033">*</font></font>
					</th>
				</tr>
				<tr>
					<td></td>
					<td colspan="3">
						<div class="input-group input-class border-collapse">
							<input type="hidden" id="cityId" name="cityId" />
							<input type="text" id="cityName" name="cityName" class="form-control" readOnly="readOnly">
							<span class="input-group-addon hand">
								<span class="glyphicon glyphicon-th" onclick="selectCity()"></span>
							</span>
						</div>
					</td>
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
						<input type="hidden" id="gojobId" name="gojobId"/>
						<div id="jobMeum"></div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<th colspan="3">
						<font class="font-14">您对哪个阶段的公司感兴趣？（可多选）<font class="colorFF0033">*</font></font>
					</th>
				</tr>
				<tr>
					<td></td>
					<td colspan="3">
						<input type="hidden" id="gojobId" name="gojobId"/>
						<div id="jobMeum"></div>
					</td>
				</tr>
				<tr>
					<td></td>
					<td class="textC">
						<button type="button" class="btn btn-primary skipBtn" onclick="goSubmit()">
							上一步
						</button>
					</td>
					<td class="textC">
						<button type="button" class="btn btn-primary skipBtn" onclick="goSubmit()">
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
