<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
option {
	color:#4F4F4F;
	font-size:14px;
}
select {
	color:#4F4F4F;
	font-size:14px;
}
</style>
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
		<tr height="25px"/>
		<tr>
			<td class="textC" style="width:24%;font-size:17px;color:#4F4F4F">推荐设置</td>
			<td width="104px"/>
			<td/>
		</tr>
		<tr height="72px"/>
		<tr>
			<td/>
			<td class="textR" style="padding-right:17px;">
				<font style="font-size:14px;" color="#4F4F4F">推荐相隔天数</font>
			</td>
			<td>
				<select style="height:37px;width:300px;border:1px #CCCCCC solid;" id="days" name="days">
				</select>
			</td>
		</tr>
		<tr height="16px"/>
		<tr>
			<td/>
			<td class="textR" style="padding-right:17px;">
				<font style="font-size:14px;" color="#4F4F4F">推荐时点</font>
			</td>
			<td>
				<select style="height:37px;width:300px;border:1px #CCCCCC solid;color:14px;" id="clocks" name="clocks">
				</select>
			</td>
		</tr>
		<tr height="45px"/>
		<tr>
			<td/>
			<td/>
			<td style="padding-left:30px;">
				<button type="button" class="btn btn-primary" onclick="goSumbit()" data-toggle="button"
				style="background-color: #00B38A; border-color: #00B38A; width: 180px; height: 41px;">
				保存</button>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
