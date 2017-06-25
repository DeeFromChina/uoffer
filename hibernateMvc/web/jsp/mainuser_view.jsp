<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
.greenTd{
	background:#00B38A !important;
	color:#FFF !important;
}
</style>
</head>
<script language="javascript">
	var type1, type2, type3, type4, type5, type6;
	function pareUrl(){
		var name,value; 
		var str=parent.location.href; //取得整个地址栏
		var num=str.indexOf("?") 
		str=str.substr(num+1);
		if(num == -1){
			return false;
		}
		selectInterviewType(str);
		return true;
	}
	function init() {
		var url = "firm/userviewPage1.do";
		var formId = "userviewForm";
		var data = ajaxSumbit(url, formId);
		addtags("type1","等待候选人回应("+data.interview1+")");
		addtags("type2","待安排面试("+data.interview2+")");
		addtags("type3","待反馈结果("+data.interview3+")");
		addtags("type4","面试通过("+data.interview4+")");
		addtags("type5","归档("+data.interview5+")");
		addtags("type6","面试安排表");
		type1 = data.interview1;
		type2 = data.interview2;
		type3 = data.interview3;
		type4 = data.interview4;
		type5 = data.interview5;
		document.getElementById('userName').innerText = data.userName;
		document.getElementById("type1").setAttribute("class","greenTd");
		if(!pareUrl()){
			if (type1 > 0)
				goSearch();
			else
				noValue();
		}
		else {
			noValue();
		}
		document.getElementById("main").style.display="";
	}
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function changeColor3(der){
		der.style.background="#00B38A";
		der.style.color="#FFF";
	}
	function changeColor4(der){
		der.style.background="#FFF";
		der.style.color="#666666";
	}
	function jobId(job){
		if(job.getAttribute('class') == "icheckbox_square-green checked"){
			job.setAttribute("class","icheckbox_square-green hover");
		}
		else if(job.getAttribute('class') == "icheckbox_square-green hover"){
			job.setAttribute("class","icheckbox_square-green checked");
		}
	}
	function selectInterviewType(seqno){
		window.iframe2.location.href="e.html";
		$(".greenTd").each(function () {
			this.setAttribute("class","");
        });
		var tdId = "type" + seqno;
		document.getElementById(tdId).setAttribute("class","greenTd");
		$(".triangle-left").each(function () {
			this.setAttribute("class","");
        });
		$(".triangle-left").each(function () {
			this.setAttribute("class","");
        });
		if(seqno == 1){
			document.getElementById("type11").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = "'0','1'";
			if (type1 > 0) {
				document.getElementById("viewnone").style.display="";
				document.getElementById("viewntwo").style.display="";
				document.getElementById("viewtd").style.display="none";
			}
		}
		if(seqno == 2){
			document.getElementById("type12").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
			if (type2 > 0) {
				document.getElementById("viewnone").style.display="";
				document.getElementById("viewntwo").style.display="";
				document.getElementById("viewtd").style.display="none";
			}
		}
		if(seqno == 3){
			document.getElementById("type13").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
			if (type3 > 0) {
				document.getElementById("viewnone").style.display="";
				document.getElementById("viewntwo").style.display="";
				document.getElementById("viewtd").style.display="none";
			}
		}
		if(seqno == 4){
			document.getElementById("type14").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
			if (type4 > 0) {
				document.getElementById("viewnone").style.display="";
				document.getElementById("viewntwo").style.display="";
				document.getElementById("viewtd").style.display="none";
			}
		}
		if(seqno == 5){
			document.getElementById("type15").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = "'4','5','6','7','8'";
			if (type5 > 0) {
				document.getElementById("viewnone").style.display="";
				document.getElementById("viewntwo").style.display="";
				document.getElementById("viewtd").style.display="none";
			}
		}
		if(seqno == 6){
			document.getElementById("type16").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
			if (type6 > 0) {
				document.getElementById("viewnone").style.display="";
				document.getElementById("viewntwo").style.display="";
				document.getElementById("viewtd").style.display="none";
			}
		}
		goSearch();
	}
	function addtags(typeId,typemsg){
		document.getElementById(typeId).innerHTML="<font style='font-size:14px;'>"+typemsg+"</font>";
	}
	function goSearch(){
		window.iframe1.location.href="mainusers_view.jsp";
	}
	function noValue(){
		document.getElementById("viewtd").style.display="";
		document.getElementById("viewnone").style.display="none";
		document.getElementById("viewntwo").style.display="none";
		window.noValueiframe.location.href="noValue.html"
	}
</script>
<body bgcolor="#F5F8F9" onload="init()">
	<form id="userviewForm"></form>
	<input type="hidden" id="inviteId" name="inviteId"/>
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:13%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='finduser.jsp'">
				    	<font style="font-size:14px;" color="#F5F8F9">候选人</font>
				    </button>
				    <button type="button" style="height:60px !important;color:#F5F8F9;background-color:#777777;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onclick="javascript:top.location.href='user_view.jsp'">
				    	<font style="font-size:14px;" color="#F5F8F9">已发邀请</font>
				    </button>
			    </td>
			    <td width="5%"/>
			    <td style="width:19%;padding-right:10%">
				    <div class="btn-group">
						<button type="button" style="height:60px !important;color:#FFF;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" ><span id="userName"></span>
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
	<table width="100%" height="100%" style="min-width:1000px;position:fixed;margin-top:90px;display:none;" id="main">
		<tr>
			<td width="19%" rowspan="10"/>
			<td rowspan="10" valign="top" style="min-width:200px;width:13%;">
				<input type="hidden" id="usertype" name="usertype" value="'0','1'"/>
				<table width="100%" style="background:#FFF">
					<tr><td class="textL" style="color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type1" onclick="selectInterviewType(1)"><font>账号信息</font></td></tr>
					<tr><td class="textL" style="color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type2" onclick="selectInterviewType(2)"><font>待沟通(1)</font></td></tr>
					<tr><td class="textL" style="color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type3" onclick="selectInterviewType(3)"><font>待安排面试(1)</font></td></tr>
					<tr><td class="textL" style="color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type4" onclick="selectInterviewType(4)"><font>已安排面试(1)</font></td></tr>
					<tr><td class="textL" style="color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type5" onclick="selectInterviewType(5)"><font>面试结果(1)</font></td></tr>
					<tr><td class="textL" style="color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type6" onclick="javascript:top.location.href='calendar.jsp'"><font style='font-size:14px;color:#FFF;'>已拒绝面试邀请(1)</font></td></tr>
				</table>
			</td>
			<td width="20px" style="border-right:2px #0dad87 solid;" valign="top">
				<table width="100%">
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="triangle-left" style="float:right" id="type11"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type12"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type13"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type14"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type15"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type16"></div>
						</td>
					</tr>
				</table>
			</td>
			<td class="textL" width="13%" valign="top" height="84%" style="min-width:200px;display:none;" id="viewnone">
				<iframe height="100%" width="100%" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;border-top:2px #CCCCCC solid;border-bottom:1px #CCCCCC solid;" id="iframe1" name="iframe1"></iframe>
			</td>
			<td class="textL" valign="top" height="84%" style="min-width:460px;min-height:84%;display:none;" id="viewntwo">
				<iframe height="100%" width="100%" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;border:2px #CCCCCC solid;" id="iframe2" name="iframe2"></iframe>
			</td>
			<td class="textL" valign="top" height="84%" id="viewtd" style="min-height:84%;display:none;">
				<iframe height="100%" width="100%" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;border:1px #CCCCCC solid;"  id="noValueiframe" name="noValueiframe"></iframe>
			</td>
			<td width="19%"/>
			<td/>
		</tr>
	</table>
</body>
</html>