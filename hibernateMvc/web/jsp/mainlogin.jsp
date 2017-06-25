<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
</style>
</head>
<script src="../js/jq_cookie/jquery.cookie.js"></script>
<script language="javascript">
	//初始化页面时验证是否记住了密码 
	$(document).ready(function() {
		if ($.cookie("rmbUser") == "true") {
			$("#rmbUser").attr("checked", true);
			$("#name").val($.cookie("userName"));
			$("#password").val($.cookie("passWord"));
		}
	});
	//保存用户信息 
	function saveUserInfo() {
		if (document.getElementById('remeberId').value == '1') {
			var userName = $("#name").val();
			var passWord = $("#password").val();
			$.cookie("rmbUser", "true", {
				expires : 7
			}); // 存储一个带7天期限的 cookie 
			$.cookie("userName", userName, {
				expires : 7
			}); // 存储一个带7天期限的 cookie 
			$.cookie("passWord", passWord, {
				expires : 7
			}); // 存储一个带7天期限的 cookie 
		} else {
			$.cookie("rmbUser", "false", {
				expires : -1
			});
			$.cookie("userName", '', {
				expires : -1
			});
			$.cookie("passWord", '', {
				expires : -1
			});
		}
	}
</script>
<script language="javascript">
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function changeColor3(der){
		if(der.style.Color=="#00B38A"){
			der.style.background="#00B38A";
			der.style.Color="#FFF";
		}
	}
	function changeColor4(){
		if(document.getElementById("type").value=="1"){
			document.getElementById("button1").style.background="#00B38A";
			document.getElementById("button1").innerHTML="<font style='font-size:14px;' color='#FFF'>我是候选人</font>";
			document.getElementById("button2").style.background="#FFF";
			document.getElementById("button2").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是HR/BOSS</font>";
		}
		if(document.getElementById("type").value=="2"){
			document.getElementById("button2").style.background="#00B38A";
			document.getElementById("button2").innerHTML="<font style='font-size:14px;' color='#FFF'>我是HR/BOSS</font>";
			document.getElementById("button1").style.background="#FFF";
			document.getElementById("button1").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是候选人</font>";
		}
	}
	var code;
	function getTran(ret) {
		var trans1 = document.getElementById('transparent1');
		var trans2 = document.getElementById('transparent2');
		if (ret == '1') {
			trans1.setAttribute("class", "triangle-up");
			trans2.setAttribute("class", "");
			document.getElementById("type").value="1";
			document.getElementById("button1").style.background="#00B38A";
			document.getElementById("button1").innerHTML="<font style='font-size:14px;' color='#FFF'>我是候选人</font>";
			document.getElementById("button2").style.background="#FFF";
			document.getElementById("button2").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是HR/BOSS</font>";
		}
		if (ret == '2') {
			trans2.setAttribute("class", "triangle-up");
			trans1.setAttribute("class", "");
			document.getElementById("type").value="2";
			document.getElementById("button2").style.background="#00B38A";
			document.getElementById("button2").innerHTML="<font style='font-size:14px;' color='#FFF'>我是HR/BOSS</font>";
			document.getElementById("button1").style.background="#FFF";
			document.getElementById("button1").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是候选人</font>";
		}
	}
	function changeRemeber() {
		var remeberId = document.getElementById('remeberId').value;
		if (remeberId == '1') {
			document.getElementById('remeber').src = "../img/wangji.png";
			document.getElementById('remeber').style.width = "16px";
			document.getElementById('remeber').style.height = "16px";
			document.getElementById('remeberId').value = '2';
		} else if (remeberId == '2') {
			document.getElementById('remeber').src = "../img/gou.png";
			document.getElementById('remeber').style.width = "16px";
			document.getElementById('remeber').style.height = "16px";
			document.getElementById('remeberId').value = '1';
		}
	}
	function init() {
		var url = "logout/user.do";
		var data = ajaxSumbitNoform(url, "1");
		getTran('1');
		var regit = document.getElementById('regit');
		regit.focus();
		var b = document.getElementById('button1');
		b.focus();
		code = createValidateCode('vCode2');
	}
	function validateCode() {
		if(!checkValue()){
			return;
		}
		var ispass = true;//code.verify(document.getElementById("inputCode").value);
		if (ispass) {
			var url = "login/user1.do";
			var formId = "loginForm";
			var data = ajaxSumbit(url, formId);
			if(data == 'loginError'){
        		alert("用户名或密码出错!");
        		code.update();
        		return;
        	}
			saveUserInfo();
			/* if(data == '0'){
				alert("该账号已停用,请联系客服");
			}
			if(data == '1'){
				alert("请确认你的邮箱");
			} */
			if(document.getElementById("type").value == '1'){
				if (data.status == '0') {//停用
					top.location.href='check_msg.jsp';
				}
				else if(data.status == '1') {//未提交
					top.location.href='resume_add_information.jsp';
				}
				else if(data.status == '2') {//待审批
					top.location.href='examine_user.jsp';
				}
				else if(data.status == '3') {//审批不通过
					top.location.href='examine_user_fail.jsp';
				}
				else if(data.status == '4') {//审批通过
					top.location.href='resume_edit.jsp';
				}
				else if(data.status == '5') {//下线
					top.location.href='mainresume_down.jsp';
				}
			}
			else if(document.getElementById("type").value == '2'){
				if (data.status == '0') {//停用
					top.location.href='check_msg.jsp';
				}
				else if(data.status == '1'){//未提交
					top.location.href='firm_resume_add.jsp';
				}
				else if(data.status == '2'){//待审批
					top.location.href='examine_firm.jsp';
				}
				else if(data.status == '3'){//审批不通过
					top.location.href='examine_firm_fail.jsp';
				}
				else if(data.status == '4'){//审批通过
					if (data.qytgdy == 'true') {
						top.location.href='finduser.jsp';
					}
					else {
						top.location.href='examine_firm_success.jsp';
					}
				}
			}
		} else {
			alert("验证码输入有误！");
			code.update();
		}
		return;
	}
	function checkValue(){
		if(!checkInput('name',"邮箱/手机号码","30",false)) return false;
		if(!checkInput('password',"密码","30",false)) return false;
		return true;
	}
	function test123(){
		top.location.href='check_email1.jsp';
	}
</script>
<body bgcolor="#F5F8F9" onload="init()">
	<form id="loginForm">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;" id="nologin">
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
					            <a tabindex="-1" href="#" onclick="javascript:top.location.href='use_strategy.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">使用攻略</font></a>
					        </li>
					        <li role="presentation" style="height:46px;">
					            <a tabindex="-1" href="user_question.jsp" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">常见问题</font></a>
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
					            <a tabindex="-1" href="#" onclick="javascript:top.location.href='firm_strategy.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">使用攻略</font></a>
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
		<table style="width:100%;white-space: nowrap;display:none;" id="loginfirm">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#777777;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onclick="javascript:top.location.href='finduser.jsp'">
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
						 onmouseout="changeColor2(this)" ><span id="topUserName"></span>
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
		<table style="width:100%;white-space: nowrap;display:none;" id="loginuser">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('interview.jsp')">
				    	<font>面试邀请</font>
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('resume_edit.jsp')">
				    	<font>我的简历</font>
				    </button>
			    </td>
			    <td style="width:24%;padding-right:10%">
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('personal_settings.jsp')">个人设置
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:167px;"></div>
	<center>
		<div style="background: #FFFFFF;width: 800px;">
			<table width="100%">
				<tr>
					<td width="25%" />
					<td width="25%" />
					<td width="25%" />
					<td width="25%" />
				</tr>
				<tr height="25px"/>
				<tr>
					<td />
					<td colspan="2" class="textC">
						<font color="#4F4F4F" style="font-size:24px;">登 录</font>
					</td>
					<td />
				</tr>
				<tr height="25px"/>
				<tr>
					<td />
					<td colspan="2" class="textC">
						<input type="hidden" name="type" id="type"/>
						<div class="btn-group btn-group-lg">
							<button id="button1" type="button" style="width:140px;" class="btn btn-default" onmouseover="changeColor3(this)" onmouseout="changeColor4()"
								onclick="getTran('1')"><font style="font-size:14px;">我是候选人</font></button>
							<button id="button2" type="button" style="width:140px;" class="btn btn-default" onmouseover="changeColor3(this)" onmouseout="changeColor4()"
								onclick="getTran('2')"><font style="font-size:14px;">我是HR/BOSS</font></button>
						</div>
					</td>
					<td />
				</tr>
				<tr height="13px"/>
				<tr>
					<th />
					<td class="textC" style="padding-left:60px;">
							<div id="transparent1" style="margin:auto;"></div>
						</td>
					<td class="textC" style="padding-right:60px;">
							<div id="transparent2" style="margin:auto;"></div>
						</td>
					<th />
				</tr>
			</table>
		</div>
		<div style="height: 2px;width: 800px; background-color: #00B38A;"></div>
		<div style="background: #FFFFFF;width: 800px;">
			<br />
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;">
				<tr>
					<td class="textR" width="25%">
						<font style="font-size:14px;" color="#4F4F4F">邮箱/手机号码：</font>
					</td>
					<td colspan="3">
						<input type="text" id="name" name="name" class="form-control" style=" width: 381px;height:41px;">
					</td>
				</tr>
				<tr height="2px"/>
				<tr>
					<td class="textR">
						<font style="font-size:14px;" color="#4F4F4F">密码：</font>
					</td>
					<td colspan="3">
						<input type="password" name="password" id="password" class="form-control" style=" width: 381px;height:41px;">
					</td>
				</tr>
				<tr>
					<td class="textR">
						<font style="font-size:14px;" color="#4F4F4F">图形验证码：</font>
					</td>
					<td colspan="3">
						<div class="col-lg-6" style="width:100%;">
							<div class="input-group" style="width: 100% !important; margin-left: -24px !important;">
								<input type="text" id="inputCode" class="form-control" style=" width: 281px;height:41px;">
								<div id="vCode2" style="width: 100px; height: 41px; border: 1px solid #ccc; display: inline-block;"></div>
							</div>
						</div>
					</td>
				</tr>
				<tr height="23px"/>
				<tr>
					<td class="textR" width="25%">
					<td class="textL">
						<input type="hidden" id="remeberId" value="1" />
						<img id="remeber" src="../img/gou.png" width="16px" height="16px" onclick="changeRemeber()" />
						<font style="font-size:14px;" color="#9A9A9A">记住密码</font>
					</td>
					<td class="textR">
						<a onclick="javascipt:top.location.href='check_email1.jsp'" style="cursor:pointer;">
							<font style="font-size:14px;" color="#00B38A">忘记密码？</font>
						</a>
					</td>
					<td width="25%"/>
				</tr>
				<tr height="3px"/>
				<tr>
					<td width="25%"/>
					<td colspan="3">
						<button type="button" class="btn btn-primary" onclick="validateCode()" data-toggle="button"
							style="font-size:14px;height:40px;background-color: #00B38A !important; border-color: #00B38A !important; width: 381px;">
							确认提交</button>
					</td>
				</tr>
				<tr height="10px"/>
			</table>
		</div>
	</center>
	</form>
	<div style="width:100%;height:53%;"></div>
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
