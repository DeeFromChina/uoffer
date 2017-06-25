<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
.greenTd{
	background:#3CBAFF !important;
	color:#FFF !important;
}
.triangle-left {
	width: 0;
	height: 0;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
	border-right: 10px solid #3CBAFF;
}
</style>
<script language="javascript">
	function init() {
		var url = "login/userqiuzhi1.do";
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		addtags("type1","新的面试邀请("+data.new1+")");
		addtags("type2","待沟通("+data.talk+")");
		addtags("type3","待安排面试("+data.waitanpai+")");
		addtags("type4","已安排面试("+data.anpaied+")");
		addtags("type5","面试结果("+data.mianshi+")");//4通过,5没通过
		addtags("type6","已拒绝面试邀请("+data.jujue+")");
		document.getElementById("type1").setAttribute("class","greenTd");
		goSearch();
	}
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function changeColor3(der){
		der.style.background="#3CBAFF";
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
		if(seqno == 1){
			document.getElementById("type11").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = "'0','1'";//0,1
		}
		if(seqno == 2){
			document.getElementById("type12").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = seqno - 1;//1
		}
		if(seqno == 3){
			document.getElementById("type13").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = seqno - 1;//2
		}
		if(seqno == 4){
			document.getElementById("type14").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = seqno - 1;//3
		}
		if(seqno == 5){
			document.getElementById("type15").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = "'4','5','7'";//4,5
		}
		if(seqno == 6){
			document.getElementById("type16").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = "'6','8'";//6
		}
		goSearch();
	}
	function addtags(typeId,typemsg){
		document.getElementById(typeId).innerHTML="<font style='font-size:14px;'>"+typemsg+"</font>";
	}
	function goSearch(){
		window.iframe1.location.href="user_qiuzhi_object.jsp";
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
	<form id="testForm"></form>
	<input type="hidden" id="inviteId" name="inviteId" />
	<table width="100%" height="100%" style="margin-top:40px;">
		<tr>
			<td width="14.5%" rowspan="10"/>
			<td rowspan="10" valign="top" style="min-width:200px;width:13%;">
				<input type="hidden" id="interviewtype" name="interviewtype" value="1"/>
				<table width="100%" style="background:#FFF">
					<tr>
						<td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type1" onclick="selectInterviewType(1)">
							<font>新的面试邀请</font>
						</td>
					</tr>
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type2" onclick="selectInterviewType(2)"><font>待沟通</font></td></tr>
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type3" onclick="selectInterviewType(3)"><font>待安排面试</font></td></tr>
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type4" onclick="selectInterviewType(4)"><font>已安排面试</font></td></tr>
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type5" onclick="selectInterviewType(5)"><font>面试结果</font></td></tr>
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type6" onclick="selectInterviewType(6)"><font>已拒绝面试邀请</font></td></tr>
				</table>
			</td>
			<td width="30px" style="border-right:2px #3CBAFF solid;" valign="top">
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
			<td class="textL" width="13%" valign="top" height="84%" style="min-width:200px;">
				<iframe height="100%" width="100%" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;" id="iframe1" name="iframe1"></iframe>
			</td>
			<td class="textL" valign="top" height="84%" style="min-height:84%;min-width:460px;">
				<iframe height="100%" width="70%" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;border:1px #CCCCCC solid;" id="iframe2" name="iframe2"></iframe>
			</td>
		</tr>
	</table>
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