<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	function closeWindow(ret){
		parent.closedialog(ret);
	}
	function init() {
			var url = "user/resumeeditPage1.do";
			var data = ajaxSumbitNoform(url, "123");
			addusername(data.informationTd1);
			addinformation1(data.informationTd1);
			addinformation2(data.informationTd2);
			addskillTd(data.skillTd);
			addworkTd(data.workTd);
			addeducationTd(data.educationTd);
			adddescriptionTd(data.descriptionTd);
	}
	
	//informationTd1
	function addusername(item){
		var username = "";
		username = username + "<font color='#4F4F4F' style='font-size:30px;' id='userName'>"+item.userName+"</font>";
		document.getElementById("usernameinfo").innerHTML = username;
	}
	function addinformation1(item){
		var information = "";
		information = information + "<font color='#4F4F4F' style='font-size:18px;' id='userPhone'>联系电话："+item.phone+"| 联系邮箱："+item.email+"</font>";
		document.getElementById("informationTd1").innerHTML = information;
	}
	//informationTd2
	function addinformation2(item){
		var information = "";
		information = information +"<table width='100%'>"
		+"<tr>"
		+"<td width='40px'/>"
		+"<th>"
		+"<font color='#4F4F4F' style='font-size:20px;'>关于我</font>"
		+"</th>"
		+"</tr>"
		+"<tr height='14px'/>"
		+"<tr>"
		+"<td colspan='2' id='userMe'>"
		+"<ul>";
		for(var i in item.informationList2){
			information = information + "<li><font color='#4F4F4F' style='font-size:16px;'>"+item.informationList2[i].str+"</font></li>";
		}
		information = information +"</ul>"
		+"</td>"
		+"</tr>"
		+"</table>";
		document.getElementById("informationTd2").innerHTML = information;
	}
	//skillTd
	function addskillTd(item){
		var skill = "";
		skill = skill + "<table width='100%'>"
		+ "<tr>"
		+ "<td width='30px'/>"
		+ "<th style='padding-left:9px;'>"
		+ "<font color='#4F4F4F' style='font-size:20px;'>技能</font>"
		+ "</th>"
		+ "</tr>"
		+ "<tr height='14px'/>"
		+ "<tr>"
		+ "<td/>"
		+ "<td>"
		+ "<font color='#4F4F4F' style='font-size:16px;' id='userStill'>";
				for(var i in item.skillList1){
					if(i==0){
						skill = skill + item.skillList1[i].str;
					}else{
						skill = skill + "<br/>"+item.skillList1[i].str;
					}
					
				}
		skill = skill+ "</font>"
				+ "</td>"
		+ "</tr>"
		+ "</table>"
		document.getElementById("skillTd").innerHTML = skill; 
	}
	//workTd
	function addworkTd(item){
		var work = "";
		
		work = work + "<table width='100%'>"
										+ "<tr>"
											+ "<td width='30px'/>"
												+ "<th style='padding-left:9px;' colspan='2'>"
												+ "<font color='#4F4F4F' style='font-size:20px;'>工作经历</font>"

												+ "</th>"
												+ "<tr height='14px'/>"
												+ "<tr>"
													+ "<td/>"
														+ "<td id='userStill'>";
				for (var i in item) {
					work = work + "<table width='100%'>";
					if(i>0){work = work +"<tr height='50px'/>";}
					work = work + "<tr>"
												+"<td>"
												+"<font color='#4F4F4F' style='font-size:16px;'>"
												+item[i].oldFirmName
												+"</font>"
												+"</td>"
												+"<td class='textR'>"
												+"<font color='#4F4F4F' style='font-size:16px;'>"
												+ item[i].startTime + "-" + item[i].endTime
												+"</font>"
												+"</td>"
												+"<td width='8%'/>"
												+"<tr>"
												+"<td colspan='2'>"
												+item[i].jobName 
												+"</td>"
												+"<td/>"
												+"</tr>"
												+"<tr>"
												+"<td colspan='2'>"
													+ item[i].jobDescript
													 +"</td>"
													 +"<td/>"
													 +"</tr>"
												+"</table>";
				}
				work = work +"</td>"
				+"</tr>"
			+"</table>";
		document.getElementById("workTd").innerHTML = work;
	}
	function addeducationTd(item){
		var education = "";
		
		education = education + "<table width='100%'>"
										+ "<tr>"
											+ "<td width='30px'/>"
												+ "<th style='padding-left:9px;' colspan='2'>"
												+ "<font color='#4F4F4F' style='font-size:20px;'>教育经历</font>"

												+ "</th>"
												+ "<tr height='14px'/>"
												+ "<tr>"
													+ "<td/>"
														+ "<td id='userStill'>";
				for (var i in item.educationList) {
					education = education + "<table width='100%'>";
					if(i>0){education = education +"<tr height='50px'/>";}
					education = education + "<tr>"
												+"<td>"
												+"<font color='#4F4F4F' style='font-size:16px;'>"
												+item.educationList[i].schoolName
												+"</font>"
												+"</td>"
												+"<td class='textR'>"
												+"<font color='#4F4F4F' style='font-size:16px;'>"
												+ item.educationList[i].starTime + "-" +item.educationList[i].endTime
												+"</font>"
												+"</td>"
												+"<td width='8%'/>"
												+"<tr>"
												+"<td colspan='2'>"
												+(item.educationList[i].userMajor == "" ? "" : item.educationList[i].userMajor + "，") + item.educationList[i].userXueLi 
												+"</td>"
												+"<td/>"
												+"</tr>"
												+"</table>";
				}
				education = education +"</td>"
				+"</tr>"
			+"</table>";
		document.getElementById("educationTd").innerHTML = education;
	}
	function adddescriptionTd(item){
		var description = "";
		var value = item.str==undefined?"":item.str;
		description = description + "<table width='100%'>"
		+"<tr>"
		+"<td width='30px'/>"
		+"<th style='padding-left:9px;'>"
		+"<font color='#4F4F4F' style='font-size:20px;'>个人描述</font>"
		+"</th>"
		+"</tr>"
		+"<tr height='14px'/>"
		+"<tr>"
		+"<td/>"
		+"<td>"
		+"<font color='#4F4F4F' style='font-size:16px;' id='userDescription'>"
		+value
		+"</font>"
		+"</td>"
		+"</tr>"
		+"</table>"
		document.getElementById("descriptionTd").innerHTML = description; 
	}
</script>
<body onload="init()">
<table width="100%">
	<tr>
		<td width="30px"/>
		<td width="119px">
			<font color='#4F4F4F' style='font-size:30px;'>U -<font color="#00B38A">O</font>ffer</font>
		</td>
		<td width="17px"/>
		<td width="148px">
			<font color='#4F4F4F' style='font-size:18px;'>互联网高端招聘网</font>
		</td>
		<td/>
	</tr>
	<tr height="31px"/>
	<tr>
		<td width="30px"/>
		<td colspan="4" style="height:2px;background:#CCCCCC;">
		</td>
	</tr>
	<tr height="50px"/>
	<tr>
		<td width="30px"/>
		<td colspan="4" class="textC" id="usernameinfo">
			
		</td>
	</tr>
	<tr height="20px"/>
	<tr>
		<td width="30px"/>
		<td colspan="4" class="textC" id="informationTd1">
		</td>
	</tr>
	<tr height="38px"/>
	<tr>
		<td width="30px"/>
		<td colspan="4" id="informationTd2">
			
		</td>
	</tr>
	<tr height="38px"/>
	<tr>
		<td/>
		<td colspan="4" id="skillTd">
			
		</td>
	</tr>
	<tr height="38px"/>
	<tr>
		<td/>
		<td colspan="4" id="workTd">
		</td>
	</tr>
	<tr height="38px"/>
	<tr>
		<td/>
		<td id="educationTd">
			</td>
	</tr>
	<tr height="38px"/>
	<tr>
		<td/>
		<td id="descriptionTd"></td>
	</tr>
	<tr height="87px"/>
	<tr>
		<td colspan="5" class="textC">
			<button id="pdf" type="button" class="btn btn-default" style="width:200px;height:40px;background:#CCCCCC;border:none;border-radius:40px;" onclick="closeWindow(false)">
	   			<font style='font-size:14px;color:#4F4F4F;'>取消</font>
	   		</button>
			<button id="pdf" type="button" class="btn btn-default" style="margin-left:30px;width:200px;height:40px;color:#FFF;background:#00B389;border:none;border-radius:40px;" onclick="closeWindow(true)">
	   			<font style='font-size:14px;'>确定下载</font>
	   		</button>
   		</td>
	</tr>
	<tr height="87px"/>
</table>
</body>
</html>
