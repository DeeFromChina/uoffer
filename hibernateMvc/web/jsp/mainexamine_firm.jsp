<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
.smailfont{
	font-size:18px;
}
.smailfont1{
	font-size:16px;
}
.fontcol{
	padding-left: 40px;
	color:#4F4F4F;
}
</style>
</head>
<script language="javascript">
	var dataType;
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function init() {
		var url = "firm/examineFirmStatus.do";
		var formId = "loginForm";
		var data = ajaxSumbit(url, formId);
		if (data == 'error') {
			alert('数据访问出错');
		}
		else {
			var status = data.status;
			document.getElementById('userName').innerText = data.userName;
			if (status == '4') {
				dataType = 'edit';
				top.location.href='examine_firm_success.jsp';
			}
			else if (status == '3'){
				top.location.href='examine_firm_fail.jsp';
			}
		}
	}
	function booleanInfot(url){
		if(dataType == 'edit'){
			top.location.href=url;
		}else{
			alert("请等待审核！");
		}
	}
</script>
<body bgcolor="#FFFFFF" onload="init()">
	<form id="loginForm">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('finduser.jsp')">
				    	<font>候选人</font>
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('user_view.jsp')">
				    	<font>已发邀请</font>
				    </button>
			    </td>
			    <td style="width:24%;padding-right:10%">
				    <div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" ><span id="userName" name="userName"></span>
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="background-color:#32373C;width:150px;">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#" onclick="booleanInfot('personal_settings_edit.jsp')" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">个人设置</font></a>
					            <a role="menuitem" tabindex="-1" href="#" onclick="booleanInfot('firm_resume_add.jsp')" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">企业信息</font></a>
					        </li>
					    </ul>
				    </div>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:263px;"></div>
	<center>
		<div style="background: #FFFFFF; width: 80%;">
			<table width="100%">
				<tr>
					<td class="textC" style="padding:20px 0px;"><img src="../img/shangchuan.png" width="150px"/></td>
				</tr>
				<tr>
					<td class="textC" style="padding:10px 0px;font-size:17px;">贵公司申请已提交，请等待审核......</td>
				</tr>
				<tr height="30px">
					<td><center><div style="width:645px;margin:auto;"><font style="font-size:16px;float:left;" color="#4F4F4F">我们的客服人员在2个工作日内与你联系沟通，审核结果会在2个工作日内通知你。</font></div></center></td>
				</tr>
				<tr>
					<td><center><div style="width:645px;margin:auto;"><font style="font-size:16px;float:left;" color="#CCCCCC">-若贵司通过审核，您讲收到我们的审核通过邮件，登录网站后饥渴开始招聘之旅；</font></div></center></td>
				</tr>
				<tr>
					<td><center><div style="width:647px;margin:auto;"><font style="font-size:16px;float:left;" color="#CCCCCC">-若贵司未通过审核，我们也将以邮件形式告知您具体原因，您可以重新修改资料提交审核。</font></div></center></td>
				</tr>
				<tr height="203px"/>
			</table>
		</div>
		<table style="width: 38%;min-width:750px;">
			<tr>
				<td width="34%"><div style="height: 2px; width: 100%; background-color: #CCCCCC;"></div></td>
				<td class="textC"><font style="font-size:16px;" color="#CCCCCC">需要帮助</font></td>
				<td width="34%"><div style="height: 2px; width: 100%; background-color: #CCCCCC;"></div></td>
			</tr>
		</table>
		<!-- <div style="height: 2px; width: 80%; background-color: #CCCCCC;"></div> -->
		<div style="background: #FFFFFF; width: 80%;">
			<br />
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;">
				<tr height="58px"/>
				<tr>
					<td colspan="4">
						<table width="100%">
							<tr>
								<td rowspan="6" class="textR" width="50%"><img src="../img/kefu.png" width="160px" height="160px" style="border:2px solid #BBBBBB;padding:20px 40px;border-radius:13px;"/></td>
								<td class="textL fontcol smailfont" width="50%">蓝天</td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont">招聘助理</td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont1">联系电话：13250325307</td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont1">微信号：13250325307 </td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont1">QQ：1611972891</td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont1">邮箱：lantian@uoffer.com</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="103px"/>
			</table>
			<br />
		</div>
	</center>
	</form>
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
