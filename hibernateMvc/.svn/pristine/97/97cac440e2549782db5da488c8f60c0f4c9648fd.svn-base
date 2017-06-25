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
		var url = "manager/resumeshowPage1.do";
		var formId = "resumeshowForm";
		var data = ajaxSumbit(url, formId);
		addselect(data.youxiaoList,"youxiao");
		addselect(data.tuijianList,"tuijian");
	}
	function changeColor1(obj){
		obj.style.background="#999999";
	}
	function changeColor2(obj){
		obj.style.background="#FFF";
	}
	function goSumbit(){
		var url = "manager/saveresumeshow1.do";
		var formId = "resumeshowForm";
		var data = ajaxSumbit(url, formId);
	}
	function addselect(items,selectId){
		for(var i in items){
			document.getElementById(selectId).options.add(new Option(items[i].value,items[i].id));
		}
	}
</script>
<style>
</style>
<body bgColor="#FFF" onload="init()">
	<form id="resumeshowForm">
	<table style="width:100%;">
		<tr>
			<td style="padding:30px 20px;">简历展示设置</td>
		</tr>
		<tr>
			<td style="padding:15px 20px;" class="textC">
				<font size="3">简历有效期</font>&nbsp;&nbsp;&nbsp;&nbsp;
				<select style="height:30px;width:300px" id="youxiao">
				</select>
			</td>
		</tr>
		<tr>
			<td style="padding:15px 20px;" class="textC">
				<font size="3">简历推荐时效</font>&nbsp;&nbsp;&nbsp;
				<select style="height:30px;width:300px"id="tuijian" >
				</select>&nbsp;&nbsp;
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
