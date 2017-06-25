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
		var url = "manager/tuijianPage1.do";
		var formId = "tuijianForm";
		var data = ajaxSumbit(url, formId);
		addselect(data.daysList,"days");
		addselect(data.clocksList,"clocks");
		setvalue("days",data.days);
		setvalue("clocks",data.clocks);
	}
	function changeColor1(obj){
		obj.style.background="#999999";
	}
	function changeColor2(obj){
		obj.style.background="#FFF";
	}
	function goSumbit(){
		var url = "manager/savetuijian1.do";
		var formId = "tuijianForm";
		var data = ajaxSumbit(url, formId);
		if(data == 'success'){
			alert("保存成功");
		}
	}
	function addselect(items,selectId){
		for(var i in items){
			document.getElementById(selectId).options.add(new Option(items[i].value,items[i].id));
		}
	}
	function setvalue(id,val) {
		 document.getElementById(id).value=val;
	}
</script>
<style>
</style>
<body bgColor="#FFF" onload="init()">
	<form id="tuijianForm">
	<table style="width:100%;">
		<tr>
			<td style="padding:30px 20px;">推荐设置</td>
		</tr>
		<tr>
			<td style="padding:15px 20px;" class="textC">
				<font size="3">推荐相隔天数</font>&nbsp;&nbsp;
				<select style="height:30px;width:300px" id="days" name="days">
				</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
		</tr>
		<tr>
			<td style="padding:15px 20px;" class="textC">
				<font size="3">&nbsp;&nbsp;&nbsp;推荐时点</font>&nbsp;&nbsp;&nbsp;
				<select style="height:30px;width:300px" id="clocks" name="clocks">
				</select>&nbsp;&nbsp;
			</td>
		</tr>
		<tr>
			<td style="padding:25px 20px;" class="textC">
				<button type="button" class="btn btn-primary" onclick="goSumbit()" data-toggle="button"
				style="background-color: #00B38A !important; border-color: #00B38A !important; width: 200px">
				保存</button>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
