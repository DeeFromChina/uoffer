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
	function booleanInfot(){
		alert("请确认你的邮箱！");
	}
</script>
<body bgcolor="#F5F8F9">
	<form id="loginForm">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td class="textC">
					<div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)">看机会
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu1" style="background-color:#32373C;width:150px;">
					        <li role="presentation">
					            <a tabindex="-1" href="#" onclick="javascript:top.location.href='mainuse_strategy.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">使用攻略</font></a>
					        </li>
					        <li role="presentation" style="height:46px;">
					            <a tabindex="-1" href="mainuser_question.jsp" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">常见问题</font></a>
					        </li>
					    </ul>
					</div>
					<div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)">招人才
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="background-color:#32373C;width:150px;">
					        <li role="presentation">
					            <a tabindex="-1" href="#" onclick="javascript:top.location.href='mainfirm_strategy.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">使用攻略</font></a>
					        </li>
					        <li role="presentation" style="height:46px;">
					            <a tabindex="-1" href="mainfirm_question.jsp" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">常见问题</font></a>
					        </li>
					    </ul>
				    </div>
					<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;padding:0px 20px;"
					 class="btn dropdown-toggle" onmouseover="changeColor1(this)"
					 onmouseout="changeColor2(this)" onclick="javascript:top.location.href='maincontact_assistant.jsp'">联系助理
				    </button>
			    </td>
			    <td style="width:24%;padding-right:13%">
				    <button type="button" class="btn btn-default" style="width:101px;color:#00B38A;background:#F5F8F9;" onclick="javascript:top.location.href='login.jsp'">登录</button>
				    <button id="regit" type="button" class="btn btn-default" style="margin-left:9px;width:101px;color:#FFFFFF;background:#00B38A;" onclick="javascript:top.location.href='register.jsp'">注册</button>
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
						<font style="font-size:24px;" color="#4F4F4F">查收确认信</font>
					</td>
					<td width="123px"/>
				</tr>
				<tr height="55px"/>
				<tr height="2px">
					<td colspan="3" style="background:#00B38A;" />
				</tr>
				<tr height="56px"/>
				<tr>
					<td/>
					<td>
						<font style="font-size:16px" color="#4F4F4F">确认信已经发到你的邮箱.................，你需要点击邮件中的确认链接来完成注册。</font>
					</td>
					<td/>
				</tr>
				<tr height="55px"/>
				<tr height="30px">
					<td/>
					<td>
						<font style="font-size:16px" color="#4F4F4F">没有收到确认信怎么办？</font>
					</td>
					<td/>
				</tr>
				<tr height="30px">
					<td/>
					<td>
						<font style="font-size:16px" color="#9A9A9A">• 检查一下上面Email地址是否正确，错了就重新注册一次吧 </font>
					</td>
					<td/>
				</tr>
				<tr height="30px">
					<td/>
					<td>
						<font style="font-size:16px" color="#9A9A9A">• 看看是否在邮箱的垃圾箱里</font>
					</td>
					<td/>
				</tr>
				<tr height="30px">
					<td/>
					<td>
						<font style="font-size:16px" color="#9A9A9A">• 稍等几分钟，若仍旧没收到确认信，重新发送验证邮件</font>
					</td>
					<td/>
				</tr>
				<tr height="57px"/>
			</table>
		</div>
	</center>
	</form>
</body>
</html>
