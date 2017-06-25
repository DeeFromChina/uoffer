<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	function init() {
		var url = "user/resumeviewPage11.do";
		var data = ajaxSumbitNoform(url, "123");
		document.getElementById('userId').value = data.userId;
		document.getElementById('guwen').innerText = data.guwen;
		addinformation1(data.informationTd1);
		addinformation2(data.informationTd2);
		addskillTd(data.skillTd);
		addworkTd(data.workTd);
		addeducationTd(data.educationTd);
		adddescriptionTd(data.descriptionTd);
		addworksTd(data.worksTd);
		addprotectTd(data.protectTd);
	}
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function openWindow(){
		document.getElementById("firmmuban").click();
	}
	function addinformation1(item){
		var information = "";
		information = information + "<div style='background: #FFFFFF; width: 80%;margin-left:14.5%;padding-top:40px;padding-left:40px;'>"
										+ "<table width='100%'>"
											+ "<tr>"
												+ "<td rowspan='5' width='160px'>"
													+ "<img src="+ item.userPhoto +" width='160px' height='160px'/>"
												+ "</td>"
												+ "<td height='56px'/>"
												+ "<td width='20%'/>"
											+ "</tr>"
											+ "<tr>"
												+ "<td style='padding-left:30px;' valign='bottom;'><font color='#4F4F4F' style='font-size:20px;'>"+item.userName+"</font></td>"
												+ "<td/>"
											+ "</tr>"
											+ "<tr>"
												+ "<td style='padding-left:30px;'><font color='#4F4F4F' style='font-size:14px;'>" + item.simpleResume + "</font></td>"
											+ "</tr>"
											+ "<tr>"
												+ "<td style='padding-left:30px;'><font color='#4F4F4F' style='font-size:14px;'>邮箱："+item.email+"</font></td>"
												+"<td>"
												+"</td>"
											+ "</tr>"
											+ "<tr>"
												+ "<td style='padding-left:30px;'><font color='#4F4F4F' style='font-size:14px;'>手机：" + item.phone + "</font></td>"
												+ "<td/>"
											+ "</tr>"
											+ "<tr height='40px'/>"
										+ "</table>"
									+ "</div>";
		document.getElementById("informationTd1").innerHTML = information;
	}
	//informationTd2
	function addinformation2(item){
		var information = "";
		information = information + "<div style='background: #FFFFFF; width: 80%; margin-top:19px;margin-left:14.5%;padding-top:56px;'>"
										+ "<table width='100%'>"
											+ "<tr>"
												+ "<td style='padding-left:50px;'>"
													+ "<font color='#4F4F4F' style='font-size:20px;'>关于"+item.userName+"</font>"
												+"</td>"
											+"</tr>"
											+"<tr height='16px'/>"
											+"<tr>"
												+"<td style='padding-left:10px;'>"
													+ "<ul>";
		for(var i in item.informationList2){
			information = information + "<li><font color='#4F4F4F' style='font-size:14px;'>"+item.informationList2[i].str+"</font></li>";
		}
		information = information + "</ul>"
												+ "</td>"
											+ "</tr>"
											+"<tr height='55px'/>"
										+ "</table>"
									+ "</div>";
		document.getElementById("informationTd2").innerHTML = information;
	}
	//skillTd
	function addskillTd(item){
		var skill = "";
		skill = skill + "<div style='background: #FFFFFF; width: 80%; margin-top:19px;margin-left:14.5%;padding-top:40px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
							+ "<td style='padding-left:50px;'>"
									+ "<font color='#4F4F4F' style='font-size:20px;'>技能</font>"
									+"</td>"
								+"</tr>"
								+"<tr height='16px'/>"
								+"<tr>"
									+"<td style='padding-left:10px;'>"
										+ "<ul>";
										for(var i in item.skillList1){
											skill = skill + "<li><font color='#4F4F4F' style='font-size:14px;'>"+item.skillList1[i].str+"</font></li>";
										}
										skill = skill + "</ul>"
								+ "</td>"
							+ "</tr>"
							+ "<tr>"
								+ "<td style='padding-top:20px;padding-left:10px;'>";
		for(var i in item.skillList2){
			skill = skill + "<div class='btn-group btn-group-lg' style='margin-left:20px;'>"
											+"<button type='button' class='btn btn-default' style='cursor:default;min-width:100px;height:40px;border:1px #3CBAFF solid;color:#3CBAFF;background:#FFF;'>"
												+"<font style='font-size:14px;'>"+ item.skillList2[i].str +"</font>"
											+"</button>"
										+"</div>";
			if (i != 0 && i % 4 == 0) skill = skill + "<br/><br/>";
		}
		skill = skill + "</td>"
							+ "</tr>"
							+"<tr height='55px'/>"
						+ "</table>"
						+"</div>";
		document.getElementById("skillTd").innerHTML = skill; 
	}
	//workTd
	function addworkTd(item){
		var work = "";
		work = work + "<div style='background: #FFFFFF; width: 80%; margin-top:19px;margin-left:14.5%;padding-top:30px;padding-left:20px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
							+ "<td style='padding-left:30px;'>"
									+ "<font color='#4F4F4F' style='font-size:20px;'>工作经历</font>"
								+ "</td>"
								+ "<td width='15%' class='textC' valign='top'></td>"
								+ "<td width='20%' class='textC' valign='top'>"
									+ "<a href='#' onclick=''>"
										+ "<font style='font-size:14px;' color='#00B38A'></font>"
									+ "</a>"
								+ "</td>"
							+ "</tr>";
		for (var i in item) {
			work = work + "<tr >"
			 				+"<td style='padding-left:50px;'>"
								+ "<p style='padding-top:30px'><font color='#4F4F4F' style='font-size:14px;'>" + item[i].oldFirmName + "</font></p>"
							+ "</td>"
							+ "<td class='textR' >"
								+ "<p style='padding-top:30px'><font color='#4F4F4F' style='font-size:14px;'>" + item[i].startTime + "~" + item[i].endTime + "</font></p>"
							+ "</td>"
							+ "<td></td>"
						+ "</tr>"
						+"<tr>"
							+"<td style='padding-left:50px;'>"
								+ "<p><font color='#4F4F4F' style='font-size:14px;'>" + item[i].jobName + "</font></p>"
								+ "<p><font color='#4F4F4F' style='font-size:14px;'>" + item[i].jobDescript + "</font></p>"
							+ "</td>"
							+ "<td >"
							+ "</td>"
						+ "</tr>"
		}
			work = work + "</table>"
						+ "<br />"
						+ "<br />"
						+"</div>";
		document.getElementById("workTd").innerHTML = work;
	}
	function addeducationTd(item){
		var education = "";
		education = education + "<div style='background: #FFFFFF; width: 80%; margin-top:19px;margin-left:14.5%;padding-top:30px;padding-left:20px;'>"
										+ "<table width='100%'>"
											+ "<tr>"
												+ "<td style='padding-left:30px;'>"
												+ "<font color='#4F4F4F' style='font-size:20px;'>教育经历</font>"
												+ "</td>"
												+ "<td width='15%' class='textC' valign='top'></td>"
												+ "<td width='20%' class='textC' valign='top'>"
												+ "</td>"
											+ "</tr>";
				for (var i in item.educationList) {
					education = education + "<tr >"
												+"<td style='padding-left:50px;'>"
													+ "<p style='padding-top:30px'><font color='#4F4F4F' style='font-size:14px;'>" + item.educationList[i].schoolName + "</font></p>"
												+ "</td>"
												+ "<td class='textR' >"
													+ "<p style='padding-top:30px'><font color='#4F4F4F' style='font-size:14px;'>" + item.educationList[i].starTime + "~" +item.educationList[i].endTime + "</font></p>"
												+ "</td>"
												+ "<td></td>"
											+ "</tr>"
											+"<tr>"
												+"<td style='padding-left:50px;'>"
													+ "<p><font color='#4F4F4F' style='font-size:14px;'>" + (item.educationList[i].userMajor == "" ? "" : item.educationList[i].userMajor + "，") + item.educationList[i].userXueLi + "</font></p>"
												+ "</td>"
												+ "<td colspan='2'>"
												+ "</td>"
											+ "</tr>";
				}
					education = education + "</table>"
									+ "<br />"
									+ "<br />"
									+ "</div>";
		document.getElementById("educationTd").innerHTML = education;
	}
	function adddescriptionTd(item){
		var description = "";
		description = description + "<div style='background: #FFFFFF; width: 80%; margin-top:19px;margin-left:14.5%;padding-top:30px;padding-left:20px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
								+ "<td style='padding-left:30px;'>"
									+ "<font color='#4F4F4F' style='font-size:20px;'>个人描述</font>"
									+ "<p style='padding:20px 30px;'><font style='font-size:14px;color:#4F4F4F;'>" + item.str + "</font></p>"
								+ "</td>"
								+ "<td width='20%' class='textC' valign='top'>"
									+ "<a href='#' onclick='openWindow(\"description\")'>"
									+ "</a>"
								+ "</td>"
							+ "</tr>"
							+ "<tr>"
								+ "<td colspan='2' style='padding-top:20px;'>"
								"</td>"
							+ "</tr>"
						+ "</table>"
						+ "<br />"
						+ "<br />"
						+"</div>";
		document.getElementById("descriptionTd").innerHTML = description; 
	}
	function addworksTd(item){
		var works = "";
		works = works + "<div style='background: #FFFFFF; width: 80%; margin-top:19px;margin-left:14.5%;padding-top:30px;padding-left:20px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
								+ "<td style='padding-left:30px;'>"
									+ "<font color='#4F4F4F' style='font-size:20px;'>个人作品</font>"
									+ "<p style='padding:20px 30px;'><font style='font-size:14px;color:#4F4F4F;'>" + item + "</font></p>"
								+ "</td>"
								+ "<td width='20%' class='textC' valign='top'>"
									+ "<a href='#' onclick='openWindow(\"works\")'>"
									+ "</a>"
								+ "</td>"
							+ "</tr>"
							+ "<tr>"
								+ "<td colspan='2' style='padding-top:20px;'>"
								"</td>"
							+ "</tr>"
						+ "</table>"
						+ "<br />"
						+ "<br />"
						+"</div>";
		document.getElementById("worksTd").innerHTML = works; 
	}
	function addprotectTd(item){
		var protect = "";
		protect = protect + "<div style='background: #FFFFFF; width: 80%; margin-top:19px;margin-left:14.5%;padding-top:30px;padding-left:20px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
								+ "<td style='padding-left:30px;'>"
									+ "<font color='#4F4F4F' style='font-size:20px;'>私聊保护（可以填写您想屏蔽的公司邮箱后缀，让他们无法查看您的简历。）</font>"
									+ "<p style='padding:20px 30px;'><font color='#4F4F4F' style='font-size:14px;'>" + item.str + "</font></p>"
								+ "</td>"
								+ "<td width='20%' class='textC' valign='top'>"
									+ "<a href='#' onclick='openWindow(\"protect\")'>"
									+ "</a>"
								+ "</td>"
							+ "</tr>"
							+ "<tr>"
								+ "<td colspan='2' style='padding-top:20px;'>"
								"</td>"
							+ "</tr>"
						+ "</table>"
						+ "<br />"
						+ "<br />"
						+"</div>";
		document.getElementById("protectTd").innerHTML = protect; 
	}
	
</script>
<body bgcolor="#F4F9F9" onload="init()">
	<table width="100%" style="min-width:1000px;">
		<tr height="29px"/>
		<tr>
			<td id="informationTd1">
			</td>
			<td width="10px" rowspan="7"/>
			<td class="textC">
				<input type="hidden" id="userId" name="userId" />
				<input type="hidden" id="haveCollect" name="haveCollect" />
				<input type="hidden" id="haveInvite" name="haveInvite" />
			</td>
		</tr>
		<tr>
		    <td id="informationTd2"></td>
		</tr>
		<tr>
			<td id="skillTd" class="textR">
			</td>
		</tr>
		<tr>
			<td id="workTd">
			</td>
		</tr>
		<tr>
			<td id="educationTd">
			</td>
		</tr>
		<tr>
			<td id="worksTd">
			</td>
		</tr>
		<tr>
			<td id="descriptionTd">
			</td>
		</tr>
		<tr>
			<td>
				<div style="background: #FFFFFF; width: 80%; margin-top:30px;margin-left:14.5%;padding-top:30px;padding-left:20px;">
					<table width='100%'>
						<tr>
							<td style='padding-left:30px;'>
								<font color='#4F4F4F' style='font-size:20px;'>顾问备注</font>
								<p style='padding:20px 30px;'><font style='font-size:14px;color:#4F4F4F;'><span id="guwen"></span></font></p>
							</td>
						</tr>
					</table>
					<p></p>
					<br />
					<br />
				</div>
			</td>
		</tr>
	</table>
	<div style="height:281px;width:100%;"></div>
	<table style="width:100%;height:81px;background:#32373C;">
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
