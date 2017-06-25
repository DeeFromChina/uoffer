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
		selectInterviewType(1);
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
		var derid = "type"+document.getElementById("usertype").value;
		if(der.id==derid){
			return;
		}
		der.style.background="#FFF";
		der.style.color="#32373C";
	}
	function selectInterviewType(seqno){
		document.getElementById("type1").style.background="#FFF";
		document.getElementById("type1").style.color="#32373C";
		document.getElementById("type2").style.background="#FFF";
		document.getElementById("type2").style.color="#32373C";
		document.getElementById("type3").style.background="#FFF";
		document.getElementById("type3").style.color="#32373C";
		document.getElementById("type4").style.background="#FFF";
		document.getElementById("type4").style.color="#32373C";
		$(".triangle-left").each(function () {
			this.setAttribute("class","");
        });
		if(seqno == 1){
			document.getElementById("type11").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
			window.iframe1.location.href="accout.jsp";
		}
		if(seqno == 2){
			document.getElementById("type12").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
			window.iframe1.location.href="tuijian.jsp";
		}
		if(seqno == 3){
			document.getElementById("type13").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
			window.iframe1.location.href="guwen_commit.jsp";
		}
		if(seqno == 4){
			document.getElementById("type14").setAttribute("class","triangle-left");
			document.getElementById("usertype").value = seqno;
			window.iframe1.location.href="resume_show.jsp";
		}
		var derid = "type"+document.getElementById("usertype").value;
		document.getElementById(derid).style.background="#00B38A";
		document.getElementById(derid).style.color="#FFF";
	}
	function addtags(typeId,typemsg){
		document.getElementById(typeId).innerHTML="<font style='font-size:14px;color:#4F4F4F;'>"+typemsg+"</font>";
	}
	function goSearch(){
		//window.iframe1.location.href="mainusers_view.jsp";
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
	<form id="userviewForm">
		<input type="hidden" id="userId" name="userId"/>
	</form>
	<div style="width:100%;height:60px;background: #32373C; position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="24%" style="padding-left:19%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="13%"/>
				<td>
				    <button type="button" style="font-size:14px;width:103px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='user_manager.jsp'">
				    	<font>候选人</font>
				    </button>
				    <button type="button" style="font-size:14px;width:103px;height:60px !important;color:#F5F8F9;background-color:#32373C;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='firm_manager.jsp'">
				    	<font>企业</font>
				    </button>
				    <button type="button" style="font-size:14px;width:103px;height:60px !important;color:#F5F8F9;background-color:#32373C;"class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='account_manager.jsp'">
				    	<font>数据统计</font>
				    </button>
			    </td>
			    <td class="textR" style="width:24%;padding-right:10%">
			    	<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='stafflogin.jsp'">
				    	<font>退出</font>
				    </button>
			    </td>
			</tr>
		</table>
	</div>
	<table width="100%" height="100%" style="min-width:1000px;position:fixed;margin-top:80px;">
		<tr>
			<td width="19%" rowspan="10"/>
			<td rowspan="10" valign="top" width="13%" style="min-width:180px;">
				<input type="hidden" id="usertype" name="usertype" value="1"/>
				<table width="100%" style="background:#FFF">
					<tr>
						<td class="textC" style="cursor:pointer;padding-top:15px;padding-bottom:15px;color:#4F4F4F;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type1" onclick="selectInterviewType(1)">
							<font style="font-size:14px;">管理账号</font>
						</td>
					</tr>
					<tr><td class="textC" style="cursor:pointer;padding-top:15px;padding-bottom:15px;color:#4F4F4F;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type2" onclick="selectInterviewType(2)"><font style="font-size:14px;">推荐设置</font></td></tr>
					<tr><td class="textC" style="cursor:pointer;padding-top:15px;padding-bottom:15px;color:#4F4F4F;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type3" onclick="selectInterviewType(3)"><font style="font-size:14px;">顾问联系设置</font></td></tr>
					<tr><td class="textC" style="cursor:pointer;padding-top:15px;padding-bottom:15px;color:#4F4F4F;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type4" onclick="selectInterviewType(4)"><font style="font-size:14px;">简历展示设置</font></td></tr>
				</table>
			</td>
			<td width="20px" valign="top">
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
				</table>
			</td>
			<td rowspan="10" class="textL" valign="top" width="46%" style="min-width:600px;">
				<iframe height="85%" width="100%" style="border-left:2px #0dad87 solid;" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" id="iframe1" name="iframe1"></iframe>
			</td>
			<td/>
		</tr>
	</table>
</body>
</html>