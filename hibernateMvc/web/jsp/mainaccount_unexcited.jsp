<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
</style>
<script language="javascript">
function goSubmit(){
	var url = "firm/saveexaminefirm1.do";
	var formId = "firmForm";
	var data = ajaxSumbit(url, formId);
	if(data == 'success'){
		top.location.href='examine_firm.jsp';
	}
}
function goWrite(){
	alert("请重新激活您的账号！");
}
function init(){
	var url = "login/checkLogin1.do";
	var data = ajaxSumbitNoform(url, "123");
	if(data.flag==false){
		$("#userName").html(data.username);
	}
}
</script>
<body bgcolor="#F5F8F9" onload="init()">
	<form id="loginForm">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:12%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="goWrite()">
				    	<font>候选人</font>
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="goWrite()">
				    	<font>已发邀请</font>
				    </button>
			    </td>
			    <td class="textR" style="width:24%;padding-right:10%">
				    <div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" id="user"><span id="userName"></span>
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="background-color:#32373C;width:150px;">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="goWrite()"><font color="#F5F8F9">个人设置</font></a>
					            <a role="menuitem" tabindex="-1" href="#" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="goWrite()"><font color="#F5F8F9">企业信息</font></a>
					        </li>
					    </ul>
				    </div>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<div style="height:159px"></div>
	<center>
		<div style="background: #FFFFFF; width: 800px;">
			<table width="100%">
				<tr height="57px"/>
				<tr>
					<td width="123px"/>
					<td class="textC">
						<font style="font-size:24px;" color="#4F4F4F">超时激活</font>
					</td>
					<td width="123px"/>
				</tr>
				<tr height="55px"/>
				<tr height="2px">
					<td colspan="3" style="background:#00B38A;" />
				</tr>
				<tr height="88px"/>
				<tr>
					<td/>
					<td class="textC">
						<font style="font-size:16px" color="#4F4F4F">超时激活，请重新进行邮件激活</font>
					</td>
					<td/>
				</tr>
				<tr height="55px"/>
				<tr>
					<td/>
					<td class="textC">
						<button type="button" class="btn btn-default" style="width:280px;color:#FFF;background:#00B38A;" onclick="goSubmit()">
							发送激活邮件
						</button>
					</td>
					<td/>
				</tr>
				<tr height="90px"/>
			</table>
		</div>
	</center>
	</form>
</body>
</html>
