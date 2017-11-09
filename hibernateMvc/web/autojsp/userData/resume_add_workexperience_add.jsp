<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userData/resume_add_workexperience.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs %>userData/resume_add_workexperience_add.js?randomId=<%=Math.random()%>"></script>
<script>
function init(){
	$(".form_datetime2").datetimepicker({
	    format: "yyyy-mm-dd",
	    autoclose:true,
	    startView: 'month',
	    minView:'month',
	    maxView:'decade',
	    language:'zh-CN'
	});
}
</script>
<body onload="init()">
<form id="dataForm">
	<center>
	<table class="mainDiv_table bgColorFFFFFF">
			<col class="wi10"/>
			<col class="wi15"/>
			<col class="wi65"/>
			<col class="wi10"/>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font class="font-14"><font color="#FF0000">*</font>公司名称 :</font>
				</td>
				<td>
					<input type="text" name="email" class="form-control input-class">
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font class="font-14"><font color="#FF0000">*</font>工作时间 :</font>
				</td>
				<td>
					<div class='input-append date form_datetime2'>
					    <input type='text' class='date-control' readonly>
					    <span class="add-on"><i class="icon-th"></i></span>
					</div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font class="font-14"><font color="#FF0000">*</font>公司名称 :</font>
				</td>
				<td>
					<input type="text" name="email" class="form-control input-class">
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textR paddingRight19">
					<font class="font-14"><font color="#FF0000">*</font>公司名称 :</font>
				</td>
				<td>
					<input type="text" name="email" class="form-control input-class">
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textC">
					<!-- <button type="button" class="btn btn-primary submitBtn" onclick="goSubmit()">
						上一步
					</button> -->
				</td>
				<td class="textC">
					<!-- <button type="button" class="btn btn-primary submitBtn" onclick="goSubmit()">
						下一步
					</button> -->
				</td>
				<td></td>
			</tr>
		</table>
	</center>
</form>
</body>
</html>
