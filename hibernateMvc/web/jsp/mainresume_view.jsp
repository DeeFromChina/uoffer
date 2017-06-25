<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function openWindow(){
		document.getElementById("firmmuban").click();
	}
	function jobId(job){
		document.getElementById("isstock").value = "0";
		if(job.getAttribute('class') == "icheckbox_square-green checked"){
			job.setAttribute("class","icheckbox_square-green hover");
			document.getElementById("isstock").value = "0";
		}
		else if(job.getAttribute('class') == "icheckbox_square-green hover"){
			job.setAttribute("class","icheckbox_square-green checked");
			document.getElementById("isstock").value = "1";
		}
	}
	function addli(items,liId){
		var li1 = "";
		for(var i in items){
			li1 = li1 + "<li role='presentation'>"
						+"<a role='menuitem' tabindex='-1' href='#' onclick='"+liId+"(this)'><font color='#000'>"+items[i].value+"</font></a>"
						+"</li>";
		}
		document.getElementById(liId).innerHTML = li1;
	}
	function moneyType(obj){
		document.getElementById("getMoneyType").value=obj.innerText;
	}
	
	function init() {
		var url = "user/resumeviewPage1.do";
		var data = ajaxSumbitNoform(url, "123");

		document.getElementById('userId').value = data.userId;
		document.getElementById('userName').innerText = data.userName;
		addinformation1(data.informationTd1);
		addinformation2(data.informationTd2);
		addkeyongmoban(data.keyongmoban, "keyongmoban");
		addskillTd(data.skillTd);
		addli(data.moneytypeList,"moneyType");
		addworkTd(data.workTd);
		addeducationTd(data.educationTd);
		adddescriptionTd(data.descriptionTd);
 		addworksTd(data.worksTd);
		//addprotectTd(data.protectTd);
		document.getElementById('beizhu').innerHTML = data.beizhu;
		//addmuban();
		if( data.inviteStatus == "0"){
			var information = "<button id='yifasong' type='button' class='btn btn-default btn-primary btn-lg' style='width: 150px;height:40px;background:#CFCFCF;'>"+
   			"<font style='font-size:14px;color:#4F4F4F;'>已发送</font>"
	   		+"</button>";
			document.getElementById("fasongbutton").innerHTML = information;
			
		}else{
			var information = "<button id='fasong' type='button' class='btn btn-default btn-primary btn-lg' style='width: 150px;height:40px;background:#00B38A;' data-toggle='modal' data-target='#myModal'>"+
   			"<font style='font-size:14px;'>发送面试邀请</font>"
	   		+"</button>";
			document.getElementById("fasongbutton").innerHTML = information;
		}
		document.getElementById("main").style.display="";
	}
	
	function addkeyongmoban(items, idName) {
		var html = "";
		for (var i in items) {
			html = html + "<td><button type='button' class='btn btn-default' style='color:#4F4F4F;height:27px;padding:auto;margin-left:10px;border-radius:20px;' onclick='inputData(" + items[i].id + ")'>"
						+ "<font style='font-size:14px;'>" + items[i].jobName + "</font>"
						+ "</button></td>";
		}
		document.getElementById(idName).innerHTML = html;
	}
	
	function inputData(id) {
		var url = "user/inputDataForMoBan.do";
		var data = ajaxSumbitNoform(url, id);
		if (data == 'error') {
			alert('数据访问出错');
		}
		else {
			document.getElementById('jobName').value = data.jobName;
			document.getElementById('jobPlace').value = data.jobPlace;
			document.getElementById('jobMonthWagesFirst').value = data.jobMonthWagesFirst;
			document.getElementById('jobMonthWagesSecond').value = data.jobMonthWagesSecond;
			document.getElementById('jobMonth').value = data.jobMonth;
			document.getElementById('isstock').value = data.isstock;
			document.getElementById('getMoneyType').value = data.getMoneyType;
			document.getElementById('chatMessage').value = data.chatMessage;
			if (data.isstock == '1') {
				document.getElementById("isstock").value = "1";
				document.getElementById('divcheckbox').setAttribute("class","icheckbox_square-green checked");
			}
			else {
				document.getElementById("isstock").value = "0";
			}
			/* if(job.getAttribute('class') == "icheckbox_square-green checked"){
				job.setAttribute("class","icheckbox_square-green hover");
				document.getElementById("isstock").value = "0";
			}
			else if(job.getAttribute('class') == "icheckbox_square-green hover"){
				job.setAttribute("class","icheckbox_square-green checked");
				document.getElementById("isstock").value = "1";
			} */
		}
	}
	
	function nofeel() {//不感兴趣
		var id = document.getElementById('userId').value;
		var url = "firm/selectfindusersum1.do?status=0&offerCandidateId=" + id;//状态（0：不敢兴趣，1：收藏）
		var formId = "findusersumForm";
		var data = ajaxSumbit(url, formId);
		if(data == 'success'){
			alert("下次不再为您提供该候选人信息");
		}
	}
	
	function hadfeel() {//收藏
		var id = document.getElementById('userId').value;
		var url = "firm/selectfindusersum1.do?status=1&offerCandidateId=" + id;//状态（0：不敢兴趣，1：收藏）
		var formId = "findusersumForm";
		var data = ajaxSumbit(url, formId);
		if(data == 'success'){
			alert("收藏成功");
		}
	}
	function color3(obj){
		if(obj.name != undefined){
			if(obj.name.indexOf("had") > -1){
				document.getElementById(obj.name).src="../img/hadfeel.png";
			}
			if(obj.name.indexOf("no") > -1){
				document.getElementById(obj.name).src="../img/nofeel.png";
			}
		}
		obj.style.color="#FFF";
		obj.style.border="1px #00B38A solid";
	}
	function color4(obj){
		if(obj.name != undefined){
			if(obj.name.indexOf("had") > -1){
				document.getElementById(obj.name).src="../img/collection.png";
			}
			if(obj.name.indexOf("no") > -1){
				document.getElementById(obj.name).src="../img/delete.png";
			}
		}
		obj.style.color="#9A9A9A";
		obj.style.border="1px #CCCCCC solid";
	}
	//informationTd1
	function addinformation1(item){
		var information = "";
		information = information + "<div style='background: #FFFFFF; width: 100%;padding-top:40px;padding-left:40px;'>"
										+ "<table width='100%'>"
											+ "<tr>"
												+ "<td rowspan='5' width='150px'>"
													+ "<img src="+ item.userPhoto +" width='150px' height='150px'/>"
												+ "</td>"
												+ "<td width='53%'/>"
												+ "<td width='28%' rowspan='5' class='textR'>"
													+"<table width='100%'>"
														+"<tr>"
															+"<td width='120px'>"
																+"<div class='btn-group btn-group-lg'>"
																	+"<button type='button' class='btn btn-default' name='nofeel' style='width: 120px;height:40px;color:#9A9A9A;border:1px #CCCCCC solid;' onmouseover='color3(this)' onmouseout='color4(this)' onclick='nofeel()'>"
																		+"<img src='../img/delete.png' id='nofeel' width='16px' height='16px'/>"
																		+"<font style='font-size:14px;'>&nbsp;不感兴趣</font>"
																	+"</button>"
																+"</div>"
															+"</td>"
															+"<td width='10px'/>"
															+"<td width='120px'>"
																+"<div class='btn-group btn-group-lg'>"
																	+"<button type='button' class='btn btn-default' name='hadfeel' style='width: 120px;height:40px;color:#9A9A9A;border:1px #CCCCCC solid;' onmouseover='color3(this)' onmouseout='color4(this)' onclick='hadfeel()'>"
																		+"<img src='../img/collection.png' id='hadfeel' width='16px' height='16px'/>"
																		+"<font style='font-size:14px;'>&nbsp;收藏</font>"
																	+"</button>"
																+"</div>"
															+"</td>"
															+"<td/>"
														+"</tr>"
													+"</table>"
												+ "</td>"
											+ "</tr>"
											+ "<tr>"
												+ "<td style='padding-left:20px;'valign='bottom'><font style='font-size:20px;color:#4F4F4F;' valign='bottom'>"+item.userName+"</font></td>"
												+ "<td/>"
											+ "</tr>"
											+ "<tr>"
												+ "<td style='padding-left:20px;'><font style='font-size:14px;' color='#4F4F4F'>" + item.simpleResume + "</font></td>"
											+ "</tr>"
											+ "<tr height='50px'>"
												+ "<td style='padding-left:20px;'><font style='font-size:14px;' color='#4F4F4F'>邮箱："+item.email+"</font></td>"
												+"<td>"
												+"</td>"
											+ "</tr>"
											+ "<tr>"
												+ "<td style='padding-left:20px;'><font color='#00B38A' style='font-size:14px;'>"+item.phone+"</font></td>"
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
		information = information + "<div style='background: #FFFFFF; width: 100%;padding-top:40px;padding-left:40px;'>"
										+ "<table width='100%'>"
											+ "<tr>"
												+ "<td>"
													+ "<font style='font-size:20;color:#4F4F4F;margin-left:30px;'>关于"+item.nowUserName+"</font>"
													+ "<ul>";
		for(var i in item.informationList2){
			information = information + "<li><font style='font-size:14px;color:#4F4F4F;'>"+item.informationList2[i].str+"</font></li>";
		}
		information = information + "</ul>"
												+ "</td>"
												+ "<td width='20%' class='textC' valign='top'>"
												+ "</td>"
											+ "</tr>"
											+ "<tr height='40px'/>"
										+ "</table>"
									+ "</div>";
		document.getElementById("informationTd2").innerHTML = information;
	}
	//skillTd
	function addskillTd(item){
		var skill = "";
		skill = skill + "<div style='background: #FFFFFF; width: 100%;padding-top:40px;padding-left:40px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
								+ "<td>"
									+ "<font style='font-size:20px;color:#4F4F4F;margin-left:30px;'>技能</font>"
									+ "<ul>";
		for(var i in item.skillList1){
			skill = skill + "<li><font style='font-size:14px;color:#4F4F4F;'>"+item.skillList1[i].str+"</font></li>";
		}
		skill = skill + "</ul>"
								+ "</td>"
								+ "<td width='20%' class='textC' valign='top'>"
									+ "<a href='#' onclick='javascript:top.location.href=\"resume_add_workexperience.jsp\"'>"
									+ "</a>"
								+ "</td>"
							+ "</tr>"
							+ "<tr>"
								+ "<td colspan='2' style='padding-top:20px;'>";
		for(var i in item.skillList2){
			skill = skill + "<div class='btn-group btn-group-lg' style='margin-left:20px;'>"
											+"<button type='button' class='btn btn-default' style='cursor:default;min-width:100px;height:40px;color:#00B389;background:#FFF;'>"
												+"<font style='font-size:14px;'>"+ item.skillList2[i].str +"</font>"
											+"</button>"
										+"</div>";
			if (i != 0 && i % 4 == 0) skill = skill + "<br/><br/>";
		}
		skill = skill + "</td>"
							+ "</tr>"
							+ "<tr height='40px'/>"
						+ "</table>"
						+"</div>";
		document.getElementById("skillTd").innerHTML = skill; 
	}
	//workTd
	function addworkTd(item){
		/* var work = "";
		work = work + "<div style='background: #FFFFFF; width: 80%; margin-top:30px;margin-left:15%;padding-top:30px;padding-left:20px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
								+ "<td>"
									+ "<font style='font-weight:bold;margin-left:30px;'>工作经历</font>"
									+ "<p style='padding:20px;'><font size='2'>" + item.str + "</font></p>"
								+ "</td>"
								+ "<td width='20%' class='textC' valign='top'>"
									+ "<a href='#' onclick='javascript:top.location.href=\"resume_add_questionnaire.jsp\"'>"
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
		document.getElementById("workTd").innerHTML = work; */
		var work = "";
		work = work + "<div style='background: #FFFFFF; width: 100%;padding-top:40px;padding-left:40px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
								+ "<td>"
									+ "<font style='font-size:20px;color:#4F4F4F;margin-left:30px;'>工作经历</font>"
									/* + "<p style='padding:20px;'><font size='2'>" + item.str + "</font></p>" */
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
						+ "<td style='padding-left:30px;padding-top:30px;'>"
							+ "<img src='../img/firm.png' width='18px' height='18px'/>"
							+ "<font style='font-size:14px;color:#4F4F4F;padding-left:10px;'>" + item[i].oldFirmName + item[i].startTime + "~" + item[i].endTime + "</font>"
						+ "</td>"
						+ "<td class='textL' >"
							/* + "<p style='padding-top:30px'><font style='font-size:14px;color:#4F4F4F;'>" + item[i].startTime + "~" + item[i].endTime + "</font></p>" */
						+ "</td>"
						+ "<td></td>"
					+ "</tr>"
					+"<tr>"
						+ "<td colspan='2' style='padding-left:58px;padding-right:20%;'>"
							+ "<font style='font-size:14px;color:#4F4F4F;'>" + item[i].jobName + "</font><br/>"
							+ "<font style='font-size:14px;color:#4F4F4F;'>" + item[i].jobDescript + "</font>"
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
		/* var education = "";
		education = education + "<div style='background: #FFFFFF; width: 80%; margin-top:30px;margin-left:15%;padding-top:30px;padding-left:20px;'>"
										+ "<table width='100%'>"
											+ "<tr>"
												+ "<td>"
												+ "<font size='3' style='font-weight:bold;margin-left:30px;'>教育经历</font>"
													+ "<ul>";
		for(var i in item.educationList){
			education = education + "<li><font size='1' color='#666666'>"+item.educationList[i].str+"</font></li>";
		}
		education = education + "</ul>"
												+ "</td>"
												+ "<td width='20%' class='textC' valign='top'>"
													+ "<a href='#' onclick='javascript:top.location.href=\"resume_add_workexperience.jsp\"' >"
													+ "</a>"
												+ "</td>"
											+ "</tr>"
										+ "</table>"
									+ "</div>";
		document.getElementById("educationTd").innerHTML = education; */
		var education = "";
		education = education + "<div style='background: #FFFFFF; width: 100%;padding-top:40px;padding-left:40px;'>"
										+ "<table width='100%'>"
											+ "<tr>"
												+ "<td>"
												+ "<font style='font-size:20px;color:#4F4F4F;margin-left:30px;'>教育经历</font>"
												/* 	+ "<ul>";
			for(var i in item.educationList){
				education = education + "<li><font size='1' color='#666666'>"+item.educationList[i].schoolName+"</font></li>"
				 					+ "<li><font size='1' color='#666666'>"+item.educationList[i].userMajor+"，"+item.educationList[i].userXueLi+"</font></li>";
			}
			education = education + "</ul>" */
												+ "</td>"
												+ "<td width='15%' class='textC' valign='top'></td>"
												+ "<td width='20%' class='textC' valign='top'>"
													//+ "<a href='#' onclick='javascript:top.location.href=\"resume_edit_type.jsp?5\"' >"
													//	+ "<font size='2' color='#00B38A'>编辑</font>"
													//+ "</a>"
												+ "</td>"
											+ "</tr>";
				for (var i in item.educationList) {
					education = education + "<tr >"
												+ "<td style='padding-left:30px;padding-top:30px'>"
												+ "<img src='../img/firm.png' width='18px' height='18px'/>"
												+ "<font style='font-size:14px;color:#4F4F4F;padding-left:10px;'>" + item.educationList[i].schoolName + item.educationList[i].starTime + "~" +item.educationList[i].endTime + "</font>"
												+ "</td>"
												+ "<td class='textL' >"
													/* + "<p style='padding-top:30px'><font style='font-size:14px;color:#4F4F4F;'>" + "</font></p>" */
												+ "</td>"
												+ "<td></td>"
											+ "</tr>"
											+"<tr>"
												+ "<td colspan='2' style='padding-left:58px;padding-right:20%;'>"
													+ "<font style='font-size:14px;color:#4F4F4F;'>" + (item.educationList[i].userMajor == "" ? "" : item.educationList[i].userMajor + "，") + item.educationList[i].userXueLi + "</font>"
												+ "</td>"
												+ "<td >"
												+ "</td>"
											+ "</tr>";
				}
					education = education + "<tr height='54px'/></table>"
									+ "</div>";
		document.getElementById("educationTd").innerHTML = education;
	}
	function adddescriptionTd(item){
		var description = "";
		description = description + "<div style='background: #FFFFFF; width: 100%;padding-top:40px;padding-left:40px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
								+ "<td>"
									+ "<font style='font-size:20px;color:#4F4F4F;margin-left:30px;'>个人描述</font>"
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
		works = works + "<div style='background: #FFFFFF; width: 100%;padding-top:40px;padding-left:40px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
								+ "<td>"
									+ "<font style='font-size:20px;color:#4F4F4F;margin-left:30px;'>个人作品</font>"
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
		protect = protect + "<div style='background: #FFFFFF; width: 100%;padding-top:40px;padding-left:40px;'>"
						+ "<table width='100%'>"
							+ "<tr>"
								+ "<td>"
									+ "<font style='font-size:20px;color:#4F4F4F;margin-left:30px;'>私聊保护（可以填写您想屏蔽的公司邮箱后缀，让他们无法查看您的简历。）</font>"
									+ "<p style='padding:20px 30px;'><font style='font-size:14px;color:#4F4F4F;'>" + item.str + "</font></p>"
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
	
	function checkValue() {
		if(!checkInput('jobName',"职位名称","255",false)) return false;
		if(!checkInput('jobPlace',"工作地点","255",false)) return false;
		if(!checkInput('getMoneyType',"薪资类型","30",false)) return false;
		if(!checkInput('jobMonthWagesFirst',"第一个月收入","30",false)) return false;
		if(!checkInput('jobMonthWagesSecond',"第二个月收入","30",false)) return false;
		if(!checkInput('jobMonth',"月份值","30",false)) return false;
		if(!checkInput('chatMessage',"邀请信内容","2000",false)) return false;
		return true;
	}
	
	function saveOfferInvite() {
		if (!checkValue()) return;
		var url = "firm/saveOfferInvite.do";
		var formId = "saveOfferInviteForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			alert("成功发送!");//resume_view
			top.location.href='resume_view.jsp';
		}else{
			alert("保存出错!");
		}
	}
	
	function dowmloadpdf(){
		top.location.href='../user/downloadPdf2.do';
	}
	
	function selected(ret){
		if(ret.id == 'd1'){
			document.getElementById("noXinZi").setAttribute("class","circleB");;
			document.getElementById("haveXinZi").setAttribute("class","circleA");;
			document.getElementById("noXinZi1").style.color="#CCCCCC";
			document.getElementById("haveXinZi1").style.color="#00B38A";
			document.getElementById("d1").style.border="1px #00B38A solid";
			document.getElementById("d2").style.border="1px #CCCCCC solid";
			document.getElementById('banben').value = ret.id;
		}
		if(ret.id == 'd2'){
			document.getElementById("noXinZi").setAttribute("class","circleA");;
			document.getElementById("haveXinZi").setAttribute("class","circleB");;
			document.getElementById("noXinZi1").style.color="#00B38A";
			document.getElementById("haveXinZi1").style.color="#CCCCCC";
			document.getElementById("d1").style.border="1px #CCCCCC solid";
			document.getElementById("d2").style.border="1px #00B38A solid";
			document.getElementById('banben').value = ret.id;
		}
	}
	
	function saveXinZi(){
		var id = document.getElementById('userId').value;
		var zhuanfaEmail = document.getElementById('zhuanfaEmail').value;
		var banben = document.getElementById('banben').value;
		var shapetion = document.getElementById('shapetion').value;
		var url = "user/zhuanpdf.do?userId="+id+"&zhuanfaEmail="+zhuanfaEmail+"&banben=" + banben+"&shapetion="+shapetion;
		var data = ajaxSumbitNoform(url, "");
		if(data == 'success'){
			alert("转发成功");
		}
	}
	
	function addmuban(){
		var td1 = document.createElement("td");
		td.innerHTML = "<button type='button' class='btn btn-default' style='margin-left:10px;border-radius:20px;'>"
						+"<font style='font-size:14px;'>java工程师</font>"
						+"</button>";
		document.getElementById("canused").appendChild(td1);
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='finduser.jsp'">
				    	<font>候选人</font>
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='user_view.jsp'">
				    	<font>已发邀请</font>
				    </button>
			    </td>
			    <td class="textR" style="width:24%;padding-right:10%">
				    <div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" ><span id="userName" name="userName"></span>
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="background-color:#32373C;width:150px;">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#" onclick="javascript:top.location.href='personal_settings_edit.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">个人设置</font></a>
					            <a role="menuitem" tabindex="-1" href="#" onclick="javascript:top.location.href='firm_resume_add.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">企业信息</font></a>
					        </li>
					    </ul>
				    </div>
				    <button type="button" style="height:60px !important;color:#FFF;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<br />
	<br />
	<br />
	<br />
	<table width="100%" id="main" style="display:none;min-width:1000px;">
		<tr>
			<td width="13%" rowspan="29"/>
			<td id="informationTd1" width="56%">
			</td>
			<td width="10px" rowspan="29"/>
			<td class="textC" width="15%" style="background: #FFFFFF;">
				<div style="background: #FFFFFF; width: 100%;height:100%;padding-top:30px;">
					<center>
					<table width="100%">
						<tr height="60px">
							<td class="textC" id="fasongbutton">
							
							</td>
							<td>	<form id="saveOfferInviteForm">
									<input type="hidden" id="userId" name="userId" />
									<input type="hidden" id="haveCollect" name="haveCollect" />
									<input type="hidden" id="haveInvite" name="haveInvite" />
							   		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top:35px;">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														&times;
													</button>
													<center>
													<h4 class="modal-title" id="myModalLabel" style="padding-top:12px;">
														发送面试邀请
													</h4></center>
												</div>
												<div class="modal-body" style="height:72%;max-height:720px;overflow-y:auto;overflow-x:hidden;">
													<table width="100%" style="border-collapse:separate;border-spacing:10px;">
														<tr>
															<td colspan="2"><font style="font-size:14px;" color="#9A9A9A">你发送的面试邀请会自动存为模板</font></td>
														</tr>
														<tr>
															<td colspan="2">
																<table>
																	<tr id="canused">
																		<td>
																			<font style="font-size:16px;" color="#00B38A">可用模板</font>
																		</td>
																		<td id="keyongmoban"/>
																		<!-- <td>
																			<button type="button" class="btn btn-default" style="margin-left:10px;border-radius:20px;">
																	   			<font size="1">java工程师</font>
																	   		</button>
																		</td>
																		<td>
																			<button type="button" class="btn btn-default" style="margin-left:10px;border-radius:20px;">
																	   			<font size="1">java工程师</font>
																	   		</button>
																		</td> -->
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<font style="font-size:16px;">职位名称</font><font color="#00B38A">*</font>
															</td>
															<td class="textR">
																<font style='font-size:14px;' color="#9A9A9A">期望职位：java工程师</font>
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<input type="text" id="jobName" name="jobName" class="form-control">
															</td>
														</tr>
														<tr>
															<td>
																<font style="font-size:16px;">工作地点</font><font color="#00B38A">*</font>
															</td>
															<td class="textR">
																<font style='font-size:14px;color:#9A9A9A;'>期望地点：北京</font>
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<input type="text" id="jobPlace" name="jobPlace" class="form-control">
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<font style="font-size:16px;">薪资范围</font>
															</td>
															<td>
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<table width="100%">
																	<tr>
																		<td>
																			<div class="input-group" style="width: 135px !important">
																				<div class="dropdown" style="">
																					<input type="text" id="getMoneyType" name="getMoneyType" class="form-control" style="width: 80px !important" readonly>
																				    <button type="button" style="width:41px;height:41px !important;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
																				        <span class="caret"></span>
																				    </button>
																				    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 20px !important" id="moneyType">
																				        <li role="presentation">
																				            <a role="menuitem" tabindex="-1" href="#"><font color="#000">人民币</font></a>
																				        </li>
																				        <li role="presentation">
																				            <a role="menuitem" tabindex="-1" href="#"><font color="#000">Java2</font></a>
																				        </li>
																				    </ul>
																				</div>
																			</div>
																		</td>
																		<td>
																			<div class="input-group">
																				<input type="text" id="jobMonthWagesFirst" name="jobMonthWagesFirst" class="form-control" style="width: 80px !important"><span class="input-group-addon">K/月</span>
																			</div>
																		</td>
																		<td class="textC" width="5%">~</td>
																		<td>
																			<div class="input-group">
																				<input type="text" id="jobMonthWagesSecond" name="jobMonthWagesSecond" class="form-control" style="width: 80px !important"><span class="input-group-addon">K/月</span>
																			</div>
																		</td>
																		<td class="textC" width="5%">X</td>
																		<td>
																			<div class="input-group">
																				<input type="text" id="jobMonth" name="jobMonth" class="form-control" style="width: 80px !important"><span class="input-group-addon">月</span>
																			</div>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<input type="hidden" name="isstock" id="isstock"/>
																<div class="icheckbox_square-green hover" onclick="jobId(this)" id="divcheckbox">
													            	<input tabindex="2" type="checkbox" style="opacity:0;" class="jobId">
																</div>
																<font style="font-size:16px;">提供期权/股份</font>
															</td>
														</tr>
														<tr>
															<td><font style="font-size:16px;">邀请信<font color="#00B38A">*</font></font></td>
															<td class="textR"><a href="#" onclick="openWindow()"><font style='font-size:14px;' color="#00B38A">查看邀请模板</font></a></td>
														</tr>
														<tr>
															<td colspan="2">
																<textarea rows="10" style="width:99%;" id="chatMessage" name="chatMessage" ></textarea>
															</td>
														</tr>
														<tr height="12px"/>
														<tr>
															<td colspan="2" class="textC">
																<button type="button" onclick="saveOfferInvite()" class="btn btn-default" style="width:260px;background:#00B38A;color:#FFF;" data-dismiss="" id="closeModal">
																	确定
																</button>
															</td>
														</tr>
													</table>
												</div>
												<!-- <div class="modal-footer">
													<button type="button" class="btn btn-default" data-dismiss="modal">关闭
													</button>
													<center>
													</center>
												</div> -->
											</div>
										</div>
									</div>
								</form>
							</td>
						</tr>
						<tr height="60px">
							<td class="textC">
								<button type="button" class="btn btn-default" style="width: 150px;height:40px;color:#00B389;background:#FFF;" onclick="dowmloadpdf()">
						   			<img src="../img/download.png" width="17px" height="17px"/>&nbsp;<font style='font-size:14px;'>下载该简历</font>
						   		</button>
							</td>
						</tr>
						<tr height="60px">
							<td class="textC">
						   		<button type="button" class="btn btn-default" style="width: 150px;height:40px;color:#00B389;background:#FFF;" data-toggle="modal" data-target="#myModal123">
						   			<img src="../img/zhuanfa.png" width="17px" height="17px"/>&nbsp;<font style='font-size:14px;'>转发该简历</font>
						   		</button>
						   		<form id="saveXinZiForm">
							   		<div class="modal fade" id="myModal123" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top:85px;">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														&times;
													</button>
													<h4 class="modal-title" id="myModalLabel">
														转发该简历
													</h4>
												</div>
												<div class="modal-body">
													<table width="100%" style="border-collapse:separate;border-spacing:10px;">
														<tr>
															<td colspan="2"><font style='font-size:14px;' color="#9A9A9A">收件人邮箱</font></td>
														</tr>
														<tr>
															<td colspan="2">
																<div class="input-group" style="width:100%;">
																	<input type="text" id="zhuanfaEmail" name="zhuanfaEmail" class="form-control">
																	<span class="input-group-addon" style="background:#FFF;border:none;">
																		<font style='font-size:14px;color:#9A9A9A;' id="emailSuffer" style="float:left;">@qq.com</font>
																	</span>
																</div>
															</td>
														</tr>
														<tr>
															<td colspan="2"><font style='font-size:14px;color:#9A9A9A;'>选择版本</font></td>
														</tr>
														<tr>
															<td class="textC">
																<input type="hidden" id="banben" name="banben" class="form-control">
																<div style="width:90%;height:40px;border:1px #00B38A solid;padding:auto 0px;border-radius:5px;" onclick="selected(this)" id="d1">
																	<table width="100%" height="100%">
																		<tr>
																			<td class="textR" style="width:46%;">
																	   			<div class="circleA" id="haveXinZi" style="float:right;width:15px;height:15px;"></div>
																			</td>
																			<td style="width:54%;padding-left:10px;">
																	   			<font style='font-size:14px;' id="haveXinZi1" color="#00B38A">有薪资</font>
																			</td>
																		</tr>
																	</table>
																</div>
															</td>
															<td class="textC">
																<div style="width:90%;height:40px;border:1px #CCCCCC solid;padding:auto 0px;border-radius:5px;" onclick="selected(this)" id="d2">
																	<table width="100%" height="100%">
																		<tr>
																			<td class="textR" style="width:46%;">
																	   			<div class="circleB" id="noXinZi" style="float:right;width:15px;height:15px;"></div>
																			</td>
																			<td style="width:54%;padding-left:10px;">
																	   			<font style='font-size:14px;' id="noXinZi1" color="#CCCCCC">无薪资</font>
																			</td>
																		</tr>
																	</table>
																</div>
															</td>
														</tr>
														<tr>
															<td><font style='font-size:14px;color:#4F4F4F;'>分享描述</font></td>
														</tr>
														<tr>
															<td colspan="2">
																<textarea rows="4" style="width:99%;" id="shapetion" name="shapetion" ></textarea>
															</td>
														</tr>
													</table>
												</div>
												<div class="modal-footer">
													<center>
														<button type="button" onclick="saveXinZi()" class="btn btn-default" style="width:260px;background:#00B38A;color:#FFF;" data-dismiss="modal">
															确定
														</button>
													</center>
												</div>
											</div>
										</div>
									</div>
								</form>
							</td>
						</tr>
					</table>
					</center>
				</div>	
			</td>
			<td rowspan="9"/>
		</tr>
		<tr height="19px"/>
		<tr>
		    <td id="informationTd2"></td>
			<td rowspan="6" valign="top">
				<div style='background: #FFFFFF; width: 100%;padding-top:40px;padding-left:40px;'>
					<table width="100%">
						<tr>
							<td class="textL">
								<img src="../img/kefu.png" width="100px" height="100px" style="border-radius:10px;border:2px solid #BBBBBB;padding:10px 20px;"/>
							</td>
							<td/>
						</tr>
						<tr height="10px"/>
						<tr>
							<td>
								<font style='font-size:14px;color:#4F4F4F;'>
									我是蓝天，你的招聘助理 <br/>
									需要帮助，随时和我联系<br/>
									联系电话：13250325307<br/>
									微信号：13250325307<br/>
									QQ：1611972891<br/>
									邮箱：<font color="#00B38A">lantian@uoffer.com</font>
								</font>
							</td>
							<td/>
						</tr>
						<tr height="20px"/>
					</table>
				</div>
			</td>
		</tr>
		<tr height="19px"/>
		<tr>
			<td id="skillTd" class="textR">
			</td>
		</tr>
		<tr height="19px"/>
		<tr>
			<td id="workTd">
			</td>
		</tr>
		<tr height="19px"/>
		<tr>
			<td id="educationTd">
			</td>
		</tr>
		<tr height="19px"/>
		<tr>
			<td id="descriptionTd">
			</td>
		</tr>
		<tr height="19px"/>
		<tr>
			<td id="worksTd">
			</td>
		</tr>
		<!-- <tr height="19px"/>
		<tr>
			<td id="protectTd">
			</td>
		</tr> -->
		<tr height="19px"/>
		<tr>
			<td>
				<div style="background: #FFFFFF; width: 100%;height:100%;padding-top:30px;padding-left:40px;">
					<font style='font-size:20px;color:#4F4F4F;margin-left:30px;'>顾问备注</font>
					<p style='padding:20px 30px;'><img src="../img/person.png" width="17px" height="17px"/><font style='font-size:14px;color:#4F4F4F;padding-left:10px;padding-right:10%;' id='beizhu'></font></p>
					<br />
					<br />
				</div>
			</td>
		</tr>
	</table>
	<br/>
	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal2" style="display:none;" id="firmmuban"></button>
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top:20px;margin-left:-35px;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						邀请信样例
					</h4>
					<div style="width:100%">
						<table style="width:100%;border-collapse:separate;border-spacing:20px;">
							<tr>
								<th><font style='font-size:14px;color:#4F4F4F;'>简单介绍公司业务：</font></th>
							</tr>
							<tr>
								<td>
									<font style='font-size:14px;color:#4F4F4F;'>
										我们是一家刚开始创业的互联网公司，专注于K12领域，做老师最给力的教学 辅助利器，通过大数据和人工智能，让孩子更有效地提高成绩。
									</font>
								</td>
							</tr>
							<tr>
								<th><font style='font-size:14px;color:#4F4F4F;'>描述一下团队构成： </font></th>
							</tr>
							<tr>
								<td>
									<font style='font-size:14px;color:#4F4F4F;'>
										我们的团队成员自阿里UC、腾讯、百度的技术专家和专业的教研老师共同 深耕教育。
									</font>
								</td>
							</tr>
							<tr>
								<th><font style='font-size:14px;color:#4F4F4F;'> 简述一下企业文化：</font></th>
							</tr>
							<tr>
								<td>
									<font style='font-size:14px;color:#4F4F4F;'>
										 除了coding，教育本身就是一个伟大的事业，我们欢迎有激情有热情有潜力 能够认识到我们在做的事情是有意义有价值的对味小伙伴们，共享未来的那 一刻。加入我们，这一段人生经历才会更加丰富多彩。加入我们，你的孩子 有一天会以你为傲。
									</font>
								</td>
							</tr>
							<tr>
								<th><font style='font-size:14px;color:#4F4F4F;'>最后表达一下所招职位的岗位描述：</font></th>
							</tr>
							<tr>
								<td>
									<font style='font-size:14px;color:#4F4F4F;'>
										招聘Android开发，扎实的Java基础，精通Android平台开发，熟悉WebView 混合应用开发及C++混合开发，熟练使用Android Studio、Git等工具。常年 混迹GitHub及各大技术网站，对当下主流的开源框架有所研究和实践，对于 自己所掌握的技术有总结，会写一些技术文章者优先。对于Android的性能优 化有自己的理解，了解敏捷开发，掌握开发中保证程序质量的方法及工具，良 好的沟通能力和团队合作精神。
									</font>
								</td>
							</tr>
							<tr>
								<td class="textC">
									<button type="button" class="btn btn-default" data-dismiss="modal" onclick="closedialog('2')">关闭</button>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="width:100%;height:260px;"></div>
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
<script>
 function closedialog(ret){
	 if(ret == '2'){
		 $('#myModal').css({'overflow-y':'scroll'});
	 }
 }
</script>
</html>
