<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	function init(){
		goSearch();
	}
	function goSearch(){
		var url = "manager/showguwencommit1.do";
		var formId = "interviewForm";
		var data = ajaxSumbit(url, formId);
		document.getElementById("guwenphone").value= data.guwenphone;
		document.getElementById("guwenemil").value= data.guwenemil;

	}
	function changeColor1(obj){
		obj.style.background="#999999";
	}
	function changeColor2(obj){
		obj.style.background="#FFF";
	}
	function goSumbit(){
		var url = "manager/saveguwencommit1.do";
		var formId = "guwenForm";
		var data = ajaxSumbit(url, formId);
	}
</script>
<style>
</style>
<body bgColor="#FFF" onload="init()">
	<form id="guwenForm">
	<table style="width:100%;">
		<tr>
			<td style="padding:30px 20px;">顾问联系设置</td>
		</tr>
		<tr>
			<td style="padding:15px 20px;" class="textC">
				<font size="3">联系电话</font>&nbsp;&nbsp;&nbsp;&nbsp;<input id="guwenphone"  name="guwenphone" type="text" style="width:300px"/>
			</td>
		</tr>
		<tr>
			<td style="padding:15px 20px;" class="textC">
				<font size="3">联系邮件</font>&nbsp;&nbsp;&nbsp;&nbsp;<input id="guwenemil"  name="guwenemil" type="text" style="width:300px"/>
			</td>
		</tr>
		<tr>
			<td style="padding:25px 20px;" class="textC">
				<button type="button" class="btn btn-primary" onclick="validateCode()" data-toggle="button"
				style="background-color: #00B38A !important; border-color: #00B38A !important; width: 200px">
				保存</button>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
