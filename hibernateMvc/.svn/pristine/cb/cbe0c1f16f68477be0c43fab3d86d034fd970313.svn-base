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
		var url = "login/firmzhaopin1.do";
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		addtags("type1","等待候选人回应("+data.wait+")");
		addtags("type2","待安排面试("+data.waitanpai+")");
		addtags("type3","待反馈结果("+data.fankui+")");
		addtags("type4","面试通过("+data.tongguo+")");
		addtags("type5","归档("+data.guidang+")");
		addtags("type6","面试安排表");
		//document.getElementById('userName').innerText = data.userName;
		document.getElementById("type1").setAttribute("class","greenTd");
		if(!pareUrl()){
			goSearch();
		}
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
		}
		if(seqno == 2){
			document.getElementById("type12").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
		}
		if(seqno == 3){
			document.getElementById("type13").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
		}
		if(seqno == 4){
			document.getElementById("type14").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
		}
		if(seqno == 5){
			document.getElementById("type15").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = "'4','5','6','7','8'";
		}
		if(seqno == 6){
			document.getElementById("type16").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
		}
		goSearch();
	}
	function addtags(typeId,typemsg){
		document.getElementById(typeId).innerHTML="<font style='font-size:14px;color:#4F4F4F;'>"+typemsg+"</font>";
	}
	function goSearch(){
		window.iframe1.location.href="firm_zhaopin_object.jsp";
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
	<form id="userviewForm"></form>
	<input type="hidden" id="inviteId" name="inviteId"/>
	<div style="width:100%;height:57px;"></div>
	<table width="100%" height="100%" style="margin-top:40px;">
		<tr>
			<td width="200px" rowspan="10"/>
			<td rowspan="10" valign="top" width="220px" valign="top">
				<input type="hidden" id="usertype" name="usertype" value="'0','1'"/>
				<table width="100%" style="background:#FFF">
					<tr><td class="textL" style="border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type1" onclick="selectInterviewType(1)"><font>账号信息</font></td></tr>
					<tr><td class="textL" style="border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type2" onclick="selectInterviewType(2)"><font>待沟通(1)</font></td></tr>
					<tr><td class="textL" style="border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type3" onclick="selectInterviewType(3)"><font>待安排面试(1)</font></td></tr>
					<tr><td class="textL" style="border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type4" onclick="selectInterviewType(4)"><font>已安排面试(1)</font></td></tr>
					<tr><td class="textL" style="border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type5" onclick="selectInterviewType(5)"><font>面试结果(1)</font></td></tr>
					<tr><td class="textL" style="border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:60px;padding-right:20px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type6" onclick="javascript:top.location.href='calendar.jsp'"><font>已拒绝面试邀请(1)</font></td></tr>
				</table>
			</td>
			<td width="20px" style="border-right:2px #3CBAFF solid;" valign="top">
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
			<td class="textL" width="200px" valign="top" height="84%" style="min-width:200px;">
				<iframe height="100%" width="100%" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;border-top:2px #CCCCCC solid;border-bottom:1px #CCCCCC solid;" id="iframe1" name="iframe1"></iframe>
			</td>
			<td class="textL" valign="top" height="84%">
				<iframe height="100%" width="70%" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;border:2px #CCCCCC solid;" id="iframe2" name="iframe2"></iframe>
			</td>
		</tr>
	</table>
	<table style="bottom:0px;width:100%;height:81px;background:#32373C;" id="botom">
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