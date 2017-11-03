<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%-- <%@include file="/common/header.jsp"%> --%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <link href="../css/bootstrap.css" rel="stylesheet" /> -->
<link href="../css/bootstrap.min.css" rel="stylesheet" />
<link href="../css/base.css" rel="stylesheet" />
<link href="../css/bootstrap-datetimepicker.css" rel="stylesheet" />
<link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
<style>
.circleA {
    width: 25px;
    height: 25px;
    background: #00B38A;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
.circleB {
    width: 25px;
    height: 25px;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
    border:1px #CCCCCC solid;
}
</style>
</head>
<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="../js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="../js/ajaxSubmit.js" type="text/javascript"></script>
<script language="javascript">
	var dataName;
	var worksNum;
	var edusNum;
	//头部
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function init() {
		var url = "user/resumeAddWorkexperiencePage1.do";
		var data = ajaxSumbitNoform(url, "111");
		dataName = data.dataName;
		addmsgDivEdus(data.otherEducate);
		addmsgDivWorks(data.otherWorks);
		$("#resumeAddWorkexperienceForm1").populateForm(data);
		$("#resumeAddWorkexperienceForm2").populateForm(data);
		$(".form_datetime2").datetimepicker({
	        format: "yyyy-mm",
	        autoclose:true,
	        startView: 'year',
	        minView:'year',
	        maxView:'decade',
	        language:'zh-CN'
	    });
		if (data.otherEducate.length > 0) {
			edusNum = data.otherEducate.length;
			document.getElementById("xiaoshi2").style.display="none";
		}
		else {
			edusNum = 0;
			document.getElementById("xiaoshi2").style.display="block";
		}
		if (data.otherWorks.length) {
			worksNum = data.otherWorks.length;
			document.getElementById("xiaoshi1").style.display="none";
		}
		else {
			worksNum = 0;
			document.getElementById("xiaoshi1").style.display="block";
		}
	}
	function saveDataWork(ispass) {
		if (ispass) {
			if(!checkValueWork()) return;
			if(checkToNow('work')) return;
			var url = "user/saveresumeAddWorkexperience1.do";
			var formId = "resumeAddWorkexperienceForm1";
			var data = ajaxSumbit(url, formId);
			if(data == 'error'){
				alert('保存错误！');
			}
			else {
				document.getElementById("reset1").click();
				document.getElementById("offerUserWorksId").value = "";
				addmsgDivWorks(data.otherWorks);
				worksNum = data.otherWorks.length;
			}
		}
		else {
			document.getElementById("offerUserWorksId").value = "";
			document.getElementById("reset1").click();
			var url = "user/getAllWorks.do";
			var formId = "resumeAddWorkexperienceForm1";
			var data = ajaxSumbit(url, formId);
			if(data == 'error'){
				alert('数据访问出错!');
			}
			else {
				addmsgDivWorks(data.otherWorks);
				worksNum = data.otherWorks.length;
			}
		}
		document.getElementById("xiaoshi1").style.display="none";
		document.getElementById("addworkbutton").style.display="";
	}
	function saveDataEdu(ispass) {
		if (ispass) {
			if(!checkValueEdu()) return;
			if(checkToNow('edu')) return;
			var url = "user/saveresumeAddWorkexperience2.do";
			var formId = "resumeAddWorkexperienceForm2";
			var data = ajaxSumbit(url, formId);
			if(data == 'error'){
				alert('保存错误！');
			}
			else {
				document.getElementById("reset2").click();
				document.getElementById("offerUserEducationId").value = "";
				addmsgDivEdus(data.otherEducate);
				edusNum = data.otherEducate.length;
			}
		}
		else {
			document.getElementById("offerUserEducationId").value = "";
			document.getElementById("reset2").click();
			var url = "user/getAllEdus.do";
			var formId = "resumeAddWorkexperienceForm2";
			var data = ajaxSumbit(url, formId);
			if(data == 'error'){
				alert('数据访问出错!');
			}
			else {
				addmsgDivEdus(data.otherEducate);
				edusNum = data.otherEducate.length;
			}
		}
		document.getElementById("xiaoshi2").style.display="none";
		document.getElementById("addedusbutton").style.display="";
	}
	function resetOne(ispass){
		if(ispass){
			if(confirm("要保存数据吗？")){
				var url = "user/saveresumeAddWorkexperience1.do";
				var formId = "resumeAddWorkexperienceForm1";
				var data = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("offerUserWorksId").value = "";
		document.getElementById("reset1").click();
	}
	function resetTwo(ispass){
		if(ispass){
			if(confirm("要保存数据吗？")){
				var url = "user/saveresumeAddWorkexperience2.do";
				var formId = "resumeAddWorkexperienceForm2";
				var data = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("offerUserEducationId").value = "";
		document.getElementById("reset2").click();
	}
	function goSumbit(){
		if (checkValueWorkKuang() || checkValueEduKuang()) {
			var data1;
			var data2;
			if (checkValueWorkKuang()) {
				if(!checkValueWork()) return;
				if(checkToNow('work')) return;
				var url = "user/saveWork.do";
				var formId = "resumeAddWorkexperienceForm1";
				data1 = ajaxSumbit(url, formId);
			}
			if (checkValueEduKuang()) {
				if(!checkValueEdu()) return;
				if(checkToNow('edu')) return;
				var url = "user/saveEdu.do";
				var formId = "resumeAddWorkexperienceForm2";
				data2 = ajaxSumbit(url, formId);
			}
			if (data1 == 'success' && data2 == 'success'){
				top.location.href='resume_add_questionnaire.jsp';
			}
			else {
				if (data1 == undefined || data2 == undefined) {
					if (data1 == undefined && edusNum == 0) {
						alert('工作经历至少要有一例！');
						return;
					}
					if (data2 == undefined && worksNum == 0) {
						alert('教育经历至少要有一例！');
						return;
					}
					top.location.href='resume_add_questionnaire.jsp';
				}
				else {
					alert("保存错误!");
					return;
				}
			}
		}
		else {
			if (worksNum > 0 && edusNum > 0) {
				top.location.href='resume_add_questionnaire.jsp';
			}
			else {
				alert('教育经历和工作经历都至少要有一例！');
				return;
			}
		}
	}
	function booleanInfot(url){
		if(dataName == '1'){
			top.location.href=url;
		}else{
			alert("请先填写好您的简历信息！");
		}
	}
	function checkValueWork(){
		if(!checkInput('firmName',"公司名称","30",false)) return false;
		if(!checkInput('jobName',"职位名称","30",false)) return false;
		if(!checkInput('jobstart',"开始","30",false)) return false;
		return true;
	}
	function checkValueEdu(){
		if(!checkInput('schoolName',"学校名称","30",false)) return false;
		if(!checkInput('xueli',"学历","30",false)) return false;
		if(!checkInput('studstart',"开始","30",false)) return false;
		return true;
	}
	function addmsgDivEdus(items){
		var div1 = "";
		var j = 0;
		for(var i in items){
			div1 = div1 + "<div style='width:100%' onmouseover='appacerdivEdus(this)' id='edus_"+i+"' style='min-height:75px;'>"
							+"<table width='100%' style='border-collapse: separate; border-spacing: 10px;' id=''>"
								+"<tr height='30px'/>"
								+"<tr>"
								+"<td width='34px' rowspan='3' valign='top'><img src='../img/firm.png' width='18px' height='18px'/></td>"
									+"<td width='55%'>"
										+"<font color='#4F4F4F' style='font-size:14px;' >"+items[i].schoolName+"</font>"
									+"</td>"
									+"<td class='textR' valign='top' style='padding-top:5px;padding-right:20px;'>"
										+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].studstart +"~"+items[i].studend+"</font>"
									+"</td>"
								+"</tr>"
								+"<tr>"
									+"<td>"
										+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].xueli +"</font>"
									+"</td>"
									+"<td/>"
								+"</tr>"
								+"<tr>"
									+"<td>"
										+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].zhuanye +"</font>"
									+"</td>"
									+"<td/>"
								+"</tr>"
							+"</table>"
						+"</div>"
						+"<div style='width:100%;z-index:9999;display:none;' onmouseout='displaydiv(this)' id='eEdus_" + i + "'>"
							+"<table width='100%' style='height:100%;'>"
								+"<tr>"
									+"<td width='90%'/>"
									+"<td width='100px'>"
										+"<img src='../img/lajitong.png' id='delEdus_"+items[i].thisId+"' onclick='delEdu(this)'/>"
										/* +"<button type='button' class='btn btn-primary' data-toggle='button' id='delEdus_"+items[i].thisId+"' onclick='delEdu(this)'"
										+"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>"
										+"删除"
										+"</button>" */
									+"</td>"
									+"<td width='100px'>"
										+"<img src='../img/bianji.png' id='editEdus_"+items[i].thisId+"' onclick='editEdu(this)'/>"
										/* +"<button type='button' class='btn btn-primary' data-toggle='button' id='editEdus_"+items[i].thisId+"' onclick='editEdu(this)'"
										+"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>"
										+"编辑"
										+"</button>" */
									+"</td>"
									+"<td width='3%'/>"
								+"</tr>"
							+"</table>"
						+"</div>";
		}
		document.getElementById("msgDivEdus").innerHTML=div1;
	}
	function addmsgDivWorks(items){
		var div1 = "";
		var j = 0;
		for(var i in items){
			div1 = div1 + "<div style='width:100%' onmouseover='appacerdivWorks(this)' id='works_"+i+"' style='min-height:75px;'>"
							+"<table width='100%' style='border-collapse: separate; border-spacing: 10px;'>"
								+"<tr height='30px'/>"
								+"<tr>"
									+"<td width='34px' rowspan='3' valign='top'><img src='../img/firm.png' width='18px' height='18px'/></td>"
									+"<td width='55%'>"
										+"<font color='#4F4F4F' style='font-size:14px;' >"+items[i].firmName+"</font>"
									+"</td>"
									+"<td class='textR' valign='top' style='padding-top:5px;padding-right:20px;'>"
										+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].jobstart+"~"+items[i].jobend+"</font>"
									+"</td>"
								+"</tr>"
								+"<tr>"
									+"<td>"
										+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].jobName+"</font>"
									+"</td>"
									+"<td/>"
								+"</tr>"
								+"<tr>"
									+"<td>"
										+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].workcontent+"</font>"
									+"</td>"
									+"<td/>"
								+"</tr>"
							+"</table>"
						+"</div>"
						+"<div style='width:100%;z-index:9999;display:none;' onmouseout='displaydiv(this)' id='eWorks_"+i+"'>"
							+"<table width='100%' style='height:100%;'>"
								+"<tr>"
									+"<td width='90%'/>"
									+"<td width='100px'>"
										+"<img src='../img/lajitong.png' id='delWorks_"+items[i].thisId+"' onclick='delWork(this)'/>"
										/* +"<button type='button' class='btn btn-primary' data-toggle='button' id='delWorks_"+items[i].thisId+"' onclick='delWork(this)'"
										+"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>"
										+"删除"
										+"</button>" */
									+"</td>"
									+"<td width='100px'>"
										+"<img src='../img/bianji.png' id='editWorks_"+items[i].thisId+"' onclick='editWork(this)'/>"
										/* +"<button type='button' class='btn btn-primary' data-toggle='button' id='editWorks_"+items[i].thisId+"' onclick='editWork(this)'"
										+"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>"
										+"编辑"
										+"</button>" */
									+"</td>"
									+"<td width='3%'/>"
								+"</tr>"
							+"</table>"
						+"</div>";
		}
		document.getElementById("msgDivWorks").innerHTML=div1;
	}
	function appacerdivEdus(obj){
		obj.style.height=obj.offsetHeight;
		var id = "eEdus_"+obj.id.split('_')[1];
		document.getElementById(id).style.display="";
		if(document.getElementById(id).style.heigh != undefined){
			return;
		}
		document.getElementById(id).style.height=obj.offsetHeight-30;
		document.getElementById(id).style.marginTop=0-obj.offsetHeight+30 +"px";
	}
	function appacerdivWorks(obj){
		obj.style.height=obj.offsetHeight;
		var id = "eWorks_"+obj.id.split('_')[1];
		document.getElementById(id).style.display="";
		if(document.getElementById(id).style.heigh != undefined){
			return;
		}
		document.getElementById(id).style.height=obj.offsetHeight-30;
		document.getElementById(id).style.marginTop=0-obj.offsetHeight+30 +"px";
	}
	function displaydiv(obj){
		obj.style.display="none";
	}
	function delWork(obj) {
		if(confirm("真的要删除吗？")) {
			document.getElementById('offerUserWorksId').value = obj.id.split('_')[1];
			var url = "user/delWork.do";
			var formId = "resumeAddWorkexperienceForm1";
			var data2 = ajaxSumbit(url, formId);
			document.getElementById('offerUserWorksId').value = "";
			if(data2 == 'success'){
				init();
			}
			else {
				alert("操作失败！");
			}
		}
	}
	function delEdu(obj) {
		if(confirm("真的要删除吗？")) {
			document.getElementById('offerUserEducationId').value = obj.id.split('_')[1];
			var url = "user/delEducation.do";
			var formId = "resumeAddWorkexperienceForm2";
			var data2 = ajaxSumbit(url, formId);
			document.getElementById('offerUserEducationId').value = "";
			if(data2 == 'success'){
				init();
			}
			else {
				alert("操作失败！");
			}
		}
	}
	/* function checkDate(str, start, end, name) {//放在ajaxSubmit.js里面
		var flag = false;
		var date = new Date;
		var year = date.getFullYear(); 
		var month = date.getMonth()+1;
		if (str == 'check') {
			if (start.split('-')[0] > year) {
				alert(name + "开始年份大于结束年份！");
				flag = true;
			}
			else if (start.split('-')[0] == year) {
				if (start.split('-')[1] > month) {
					alert(name + "开始月份大于结束月份！");
					flag = true;
				}
			}
		}
		else {
			if (start.split('-')[0] > end.split('-')[0]) {
				alert(name + "开始年份大于结束年份！");
				flag = true;
			}
			else if (start.split('-')[0] == end.split('-')[0]) {
				if (start.split('-')[1] > end.split('-')[1]) {
					alert(name + "开始月份大于结束月份！");
					flag = true;
				}
			}
		}
		return flag;
	}
	function checkToNow(str) {
		if (str == 'work') {
			var jobstart = document.getElementById("jobstart").value;
			var jobend = document.getElementById("jobend").value;
			if (document.getElementById("toNowWork").checked == true) {
				document.getElementById("toNow1").value = "true";
				return checkDate("check", jobstart, "", "工作");
			}
			else {
				document.getElementById("toNow1").value = "false";
				return checkDate("noCheck", jobstart, jobend, "工作");
			}
		}
		else {
			var studstart = document.getElementById("studstart").value;
			var studend = document.getElementById("studend").value;
			if (document.getElementById("toNowEdu").checked == true) {
				document.getElementById("toNow2").value = "true";
				return checkDate("check", studstart, "", "教育");
			}
			else {
				document.getElementById("toNow2").value = "false";
				return checkDate("noCheck", studstart, studend, "教育");
			}
		}
	} */
	function editWork(obj) {
		if (checkValueWorkKuang()) {
			if(confirm("是否先保存下面的数据？")) {
				if(!checkValueWork()) return;
				if(checkToNow('work')) return;
				var url = "user/saveresumeAddWorkexperience1.do";
				var formId = "resumeAddWorkexperienceForm1";
				var data = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("reset1").click();
		document.getElementById("offerUserWorksId").value = obj.id.split('_')[1];
		var url = "user/getNowWork.do";
		var formId = "resumeAddWorkexperienceForm1";
		var data = ajaxSumbit(url, formId);
		var toNow = data.toNow;
		if (toNow == 'true') {
			document.getElementById("toNowWork").checked = true;
			document.getElementById("jobend").setAttribute("disabled", true);
		}
		else {
			document.getElementById("toNowWork").checked = false;
			document.getElementById("jobend").removeAttribute("disabled");
		}
		addmsgDivWorks(data.otherWorks);
		document.getElementById("xiaoshi1").style.display="block";
		$("#resumeAddWorkexperienceForm1").populateForm(data);
	}
	function editEdu(obj) {
		if (checkValueEduKuang()) {
			if(confirm("是否先保存下面的数据？")) {
				if(!checkValueEdu()) return;
				if(checkToNow('edu')) return;
				var url = "user/saveresumeAddWorkexperience2.do";
				var formId = "resumeAddWorkexperienceForm2";
				var data2 = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("reset2").click();
		document.getElementById("offerUserEducationId").value = obj.id.split('_')[1];
		var url = "user/getNowEducation.do";
		var formId = "resumeAddWorkexperienceForm2";
		var data = ajaxSumbit(url, formId);
		var toNow = data.toNow;
		if (toNow == 'true') {
			document.getElementById("toNowEdu").checked = true;
			document.getElementById("studend").setAttribute("disabled", true);
		}
		else {
			document.getElementById("toNowEdu").checked = false;
			document.getElementById("studend").removeAttribute("disabled");
		}
		addmsgDivEdus(data.otherEducate);
		document.getElementById("xiaoshi2").style.display="block";
		$("#resumeAddWorkexperienceForm2").populateForm(data);
	}
	function checkValueWorkKuang() {
		var flag = false;
		var strings = "firmName,jobName,jobstart,jobend,workcontent";
		for (var i in strings.split(',')) {
			if (document.getElementById(strings.split(',')[i]).value != "") {
				flag = true;
				break;
			}
		}
		return flag;
	}
	function goAddWorks() {
		document.getElementById("xiaoshi1").style.display="block";
		document.getElementById("addworkbutton").style.display="none";
		//if (!checkValueWorkKuang()) return;
		/* if (confirm("是否先保存下面的数据？")) {
			if(!checkValueWork()) return;
			if(checkToNow('work')) return;
			var url = "user/saveresumeAddWorkexperience1.do";
			var formId = "resumeAddWorkexperienceForm1";
			var data2 = ajaxSumbit(url, formId);
		} */
		document.getElementById("reset1").click();
		document.getElementById("offerUserWorksId").value = "";
		var url = "user/getNewWork.do";
		var formId = "resumeAddWorkexperienceForm1";
		var data = ajaxSumbit(url, formId);
		addmsgDivWorks(data.otherWorks);
	}
	function checkValueEduKuang() {
		var flag = false;
		var strings = "schoolName,xueli,studstart,studend,zhuanye";
		for (var i in strings.split(',')) {
			if (document.getElementById(strings.split(',')[i]).value != "") {
				flag = true;
				break;
			}
		}
		return flag;
	}
	function goAddEdus() {
		document.getElementById("xiaoshi2").style.display="block";
		//if (!checkValueEduKuang()) return;
		/* if (confirm("是否先保存下面的数据？")) {
			if(!checkValueEdu()) return;
			if(checkToNow('edu')) return;
			var url = "user/saveresumeAddWorkexperience2.do";
			var formId = "resumeAddWorkexperienceForm2";
			var data2 = ajaxSumbit(url, formId);
		} */
		document.getElementById("reset2").click();
		document.getElementById("offerUserEducationId").value = "";
		var url = "user/getNewEducation.do";
		var formId = "resumeAddWorkexperienceForm2";
		var data = ajaxSumbit(url, formId);
		addmsgDivEdus(data.otherEducate);
		document.getElementById("addedusbutton").style.display="none";
	}
	function goCheck(ret,red){
		if(document.getElementById(red).checked){
			document.getElementById(ret).value="";
			document.getElementById(ret).setAttribute("disabled", true);
		}else{
			document.getElementById(ret).removeAttribute("disabled");
		}
	}
</script>
<body bgcolor="#F5F8F9" onload="init()">
	<div style="width:100%;height:60px;min-width:1000px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('interview.jsp')">
				    	<font>面试邀请</font>
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('resume_edit.jsp')">
				    	<font>我的简历</font>
				    </button>
			    </td>
			    <td style="width:24%;padding-right:10%">
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('personal_settings.jsp')">个人设置
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:78px;"></div>
	<center>
		<div style="width:1000px;">
			<table width="100%">
				<tr>
					<td width="5%"/>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:23%;">
						<table>
							<tr>
								<td><div class="circleB"></div></td>
								<td><font color="#9A9A9A">&nbsp;&nbsp;基本信息 </font></td>
							</tr>
						</table>
					</td>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:23%;">
						<table>
							<tr>
								<td><div class="circleB"></div></td>
								<td><font color="#9A9A9A">&nbsp;&nbsp;期望工作 </font></td>
							</tr>
						</table>
					</td>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:23%;">
						<table>
							<tr>
								<td><div class="circleA"></div></td>
								<td><font color="#00B38A">&nbsp;&nbsp;个人经历 </font></td>
							</tr>
						</table>
					</td>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:23%;">
						<table>
							<tr>
								<td><div class="circleB"></div></td>
								<td><font color="#9A9A9A">&nbsp;&nbsp;调查问卷 </font></td>
							</tr>
						</table>
					</td>
					<td width="5%"/>
				</tr>
				<tr height="20px"/>
			</table>
		</div>
		<div style="background: #FFFFFF;height:74px; width: 1000px;padding-top:29px;padding-bottom:20px;">
			<center><font color="#4F4F4F" style="font-size:18px;">您在哪里工作和学习过？</font></center>
		</div>
		<div style="height: 2px; width: 1000px; background-color: #CCCCCC;"></div>
		<div style="background: #FFFFFF; width: 1000px;padding-bottom:11px;">
			<form id="resumeAddWorkexperienceForm1">
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:15%;padding-right:15%;">
				<tr height="10px"/>
				<tr>
					<td class="textL">
						<font style="font-size:18px;" color="#4F4F4F">工作经历<font color="#00B389">*</font></font>
					</td>
					<td align="right" style="padding-right:30px;">
						<button type="button" class="btn btn-primary" data-toggle="button" onclick="goAddWorks()" id="addworkbutton"
							style="font-size:14px;color:#00B389;border:1px #00B389 solid;background-color:#FFF;width:101px;">
							新增
						</button>
						<!-- <a onclick="goAddWorks()"><font style="font-size:14px;" color="#00B389">新增</font></a> -->
					</td>
				</tr>
				<tr>
					<td colspan="2" id="msgDivWorks">
					</td>
				</tr>
			</table>
			<table style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:15%;padding-right:15%;" id="xiaoshi1">
				<tr>
					<td class="textL">
						<font style="font-size:14px;" color="#4F4F4F">公司名称</font>
					</td>
					<td/>
				</tr>
				<tr>
					<td colspan="2">
						<input type="text" name="firmName" id="firmName" class="form-control" style="width:441px;">
						<input id="offerUserWorksId" type="hidden" name="offerUserWorksId"/>
					</td>
				</tr>
				<tr height="11px"/>
				<tr>
					<td class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">职位名称</font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="text" name="jobName" id="jobName" class="form-control" style="width:441px;">
					</td>
				</tr>
				<tr height="11px"/>
				<tr>
					<td class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">在职时间</font>
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<table width="100%">
							<tr>
								<td class="textL" width="46px">
									<font style="font-size:14px;" color="#4F4F4F">开始</font>
								</td>
								<td width="201px">
									<div class='input-append date form_datetime2'>
										<input style='font-size:14px;color:#4F4F4F;' type='text' value='' class='date-control form-control' style="width:201px;" readonly name='jobstart' id='jobstart'>
									    <span class='add-on'><i class='icon-th'></i></span>
									</div>
								</td>
								<td width="53px"/>
								<td class="textL" width="46px">
									<font style="font-size:14px;" color="#4F4F4F">结束</font>
								</td>
								<td width="201px">
									<div class='input-append date form_datetime2'>
										<input style='font-size:14px;color:#4F4F4F;' type='text' value='' class='date-control form-control' style="width:201px;" readonly name='jobend' id='jobend'>
									    <span class='add-on'><i class='icon-th'></i></span>
									</div>
								</td>
								<td width="15px"/>
								<td class="textL" valign="bottom">
									<input type="hidden" id="toNow1" name="toNow1"/>
									<input type="checkbox" id="toNowWork" name="toNowWork" width="20px" height="20px" onclick="goCheck('jobend','toNowWork')"/><font style="font-size:14px;padding-left:8px;">至今</font>
								</td>
								<td/>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="11px"/>
				<tr>
					<td class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">工作内容</font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="8" style="width:789px;height:201px;color:#4F4F4F;" id="workcontent" name="workcontent"></textarea>
					</td>
				</tr>
				<tr height="11px"/>
				<tr>
					<td/>
					<td align="right">
						<input type="reset" name="reset1" id="reset1" style="display: none;" />
						<button type="button" class="btn btn-primary" onclick="saveDataWork(false)" data-toggle="button"
							style="color:#4F4F4F;background-color: #CCCCCC !important; border-color: #CCCCCC !important; width: 155px;">
							取消</button>
						<button type="button" class="btn btn-primary" onclick="saveDataWork(true)" data-toggle="button"
										style="margin-left:11px;background-color: #00B38A !important; border-color: #00B38A !important; width: 155px;">
										保存</button>
					</td>
				</tr>
			</table>
			</form>
			<form id="resumeAddWorkexperienceForm2">
			<table style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:15%;padding-right:15%;">
				<tr height="55px"/>
				<tr>
					<td class="textL">
						<font style="font-size:18px;" color="#4F4F4F">教育经历<font color="#00B389">*</font></font>
						<input id="offerUserEducationId" type="hidden" name="offerUserEducationId"/>
					</td>
					<td align="right" style="padding-right:30px;" colspan="2">
						<button type="button" class="btn btn-primary" data-toggle="button" onclick="goAddEdus()" id="addedusbutton"
							style="font-size:14px;color:#00B389;border:1px #00B389 solid;background-color:#FFF;width:101px;">
							新增
						</button>
						<!-- <a onclick="goAddEdus()"><font style="font-size:14px;" color="#00B389">新增</font></a> -->
					</td>
				</tr>
				<tr>
					<td colspan="3" id="msgDivEdus">
					</td>
				</tr>
			</table>
			<table style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:15%;padding-right:15%;" id="xiaoshi2">
				<tr style="width:100%;">
					<td class="textL">
						<font style="font-size:14px;" color="#4F4F4F">学校名称</font>
					</td>
					<td/>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" id="schoolName" name="schoolName" class="form-control" style="width:441px;">
					</td>
				</tr>
				<tr height="11px"/>
				<tr>
					<td class="textL" colspan="3">
						<font style="font-size:14px;" color="#4F4F4F">学历</font>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" id="xueli" name="xueli" class="form-control" style="width:441px;">
					</td>
				</tr>
				<tr height="11px"/>
				<tr>
					<td class="textL" colspan="3">
						<font style="font-size:14px;" color="#4F4F4F">就读时间</font>
					</td>
				</tr>
				<tr>
					<td class="textL">
						<table width="100%">
							<tr>
								<td class="textL" width="46px">
									<font style="font-size:14px;" color="#4F4F4F">开始</font>
								</td>
								<td width="201px">
									<div class='input-append date form_datetime2'>
										<input style='font-size:14px;color:#4F4F4F;' type='text' value='' class='date-control form-control' style="width:201px;" readonly name='studstart' id='studstart'>
									    <span class='add-on'><i class='icon-th'></i></span>
									</div>
								</td>
								<td width="53px"/>
								<td class="textL" width="46px">
									<font style="font-size:14px;" color="#4F4F4F">结束</font>
								</td>
								<td width="201px">
									<div class='input-append date form_datetime2'>
										<input style='font-size:14px;color:#4F4F4F;' type='text' value='' class='date-control form-control' style="width:201px;" readonly name='studend' id='studend'>
									    <span class='add-on'><i class='icon-th'></i></span>
									</div>
								</td>
								<td width="15px"/>
								<td class="textL" valign="bottom">
									<input type="hidden" id="toNow2" name="toNow2"/>
									<input type="checkbox" id="toNowEdu" name="toNowEdu" onclick="goCheck('studend','toNowEdu')"/><font style="font-size:14px;padding-left:8px;">至今</font>
								</td>
								<td/>
							</tr>
						</table>
					</td>
					<td class="textL" style="padding-left:53px;">
					</td>
					<td/>
				</tr>
				<tr height="11px"/>
				<tr>
					<td class="textL" colspan="3">
						<font style="font-size:14px;" color="#4F4F4F">专业</font>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" id="zhuanye" name="zhuanye" class="form-control" style="width:789px;">
					</td>
				</tr>
				<tr height="11px"/>
				<tr>
					<td align="right" colspan="3">
						<input type="reset" name="reset2" id="reset2" style="display: none;" />
						<button type="button" class="btn btn-primary" onclick="saveDataEdu(false)" data-toggle="button"
							style="color:#4F4F4F;background-color: #CCCCCC !important; border-color: #CCCCCC !important; width: 155px;">
							取消</button>
						<button type="button" class="btn btn-primary" onclick="saveDataEdu(true)" data-toggle="button"
										style="margin-left:11px;background-color: #00B38A !important; border-color: #00B38A !important; width: 155px;">
										保存</button>
					</td>
				</tr>
				<tr height="78px"/>
				<tr>
					<td colspan="3" class="textC">
						<center>
						<button type="button" class="btn btn-primary" onclick="validateCode()" data-toggle="button"
							style="color: #00B38A !important;background-color: #FFF !important; border-color: #00B38A !important; width: 360px;">
							上传简历，自动解析</button>
						</center>
					</td>
				</tr>
			</table>
			</form>
		</div>
		<div style="height: 2px; width: 1000px; background-color: #CCCCCC;"></div>
		<div style="width: 1000px; background-color: #FFF;">
			<table>
				<tr>
					<td style="padding-top:64px;padding-bottom:63px;" class="textC">
						<button type="button" class="btn btn-primary" onclick="javascript:top.location.href='resume_add_planjob.jsp'" data-toggle="button"
							style="color: #4F4F4F !important;background-color: #CCCCCC !important; border-color: #CCCCCC !important; width: 200px;">
							上一步</button>
						<button type="button" class="btn btn-primary" onclick="goSumbit()" data-toggle="button"
							style="color: #FFF !important;background-color: #00B38A !important; border-color: #00B38A !important; width: 200px;">
							下一步</button>
					</td>
				</tr>
			</table>
		</div>
	</center>
	<div style="height: 299px; width: 100%;"></div>
	<table style="width:100%;height:81px;background:#32373C;min-width:1000px;">
		<tr>
			<td class="textC">
				<font color="#F5F8F9" style="font-size:14px;white-space: nowrap;">
					关于我们&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					使用攻略&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					法律声明&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					关注我们
				</font>
			</td>
		</tr>
	</table>
</body>
</html>
