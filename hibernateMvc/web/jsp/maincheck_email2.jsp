<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
*{
    margin:0;
    padding:0;
}
.circle1 {
    width: 61px;
    height: 61px;
    border-radius: 60px;
    border:2px #00B38A solid;
}
.circle2 {
    width: 61px;
    height: 61px;
    border-radius: 60px;
    border:2px #CCCCCC solid;
}
div.wrapper{
            margin:12px 12px;
        }
</style>
<script language="javascript">
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function changeColor3(ret){
		var g1 = "#00B38A"; 
		var g2 = "#FFF"; 
		if(ret == '1'){
			g1 = "#00B38A"; 
			g2 = "#FFF";
		}
		if(ret == '2'){
			g1 = "#FFF"; 
			g2 = "#00B38A";
		}
		document.getElementById("button1").style.background=g1;
		document.getElementById("button1").style.color=g2;
		document.getElementById("button2").style.background=g2;
		document.getElementById("button2").style.color=g1;
	}
	function init(){
		var url = parent.location.search;
		document.getElementById("email").innerText=url.substring(1);
		changeColor3('1');
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
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
	<div style="height:127px"></div>
	<center>
		<div style="background: #FFFFFF; width: 800px;">
			<table width="100%">
				<tr height="68px"/>
				<tr>
					<td width="180px"/>
					<td class="textR" width="61px">
						<div class="circle1">
							<div class="wrapper">
								<img src="../img/green_email.png" width="34px"/>
							</div>
						</div>
					</td>
					<td width="131px">
						<div style="width:131px;height:2px;background:#00B38A;">
						</div>
					</td>
					<td width="61px">
						<div class="circle1">
							<div class="wrapper">
								<img src="../img/green_dun.png" width="34px"/>
							</div>
						</div>
					</td>
					<td width="131px">
						<div style="width:131px;height:2px;background:#CCCCCC;">
						</div>
					</td>
					<td>
						<div class="circle2">
							<div class="wrapper">
								<img src="../img/gray_suo.png" width="34px"/>
							</div>
						</div>
					</td>
					<td width="180px"/>
				</tr>
				<tr height="14px"/>
				<tr>
					<td/>
					<td class="textC">
						<font style='font-size:14px;' color="#00B38A" style="width:60px;" class="textC">邮箱地址</font>
					</td>
					<td></td>
					<td class="textC">
						<font style='font-size:14px;' color="#00B38A" style="width:60px;" class="textC">验证邮箱</font>
					</td>
					<td></td>
					<td class="textC">
						<font style='font-size:14px;' color="#CCCCCC" style="width:60px;" class="textC">重置密码</font>
					</td>
					<td/>
				</tr>
				<tr height="58px"/>
				<tr>
					<td/>
					<td class="text" colspan="5">
						<font style='font-size:14px;color:#4F4F4F;'>密码重置邮件已发送你的邮箱:</font>
					</td>
					<td/>
				</tr>
				<tr height="20px"/>
				<tr>
					<td/>
					<td class="text" colspan="5">
						<font style='font-size:14px;color:#4F4F4F;' id="email">xxx@xxx.xom</font>
					</td>
					<td/>
				</tr>
				<tr height="20px"/>
				<tr>
					<td/>
					<td class="text" colspan="5">
						<font style='font-size:14px;' color="#CCCCCC">请尽快登陆你的邮箱接收邮件，链接激活后可重置密码。</font>
					</td>
					<td/>
				</tr>
				<tr height="167px"/>
			</table>
		</div>
	</center>
	</form>
</body>
</html>
