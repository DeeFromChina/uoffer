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
		der.style.background="#CCCCCC";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	var code;
	function getTran(ret) {
		var trans1 = document.getElementById('transparent1');
		var trans2 = document.getElementById('transparent2');
		if (ret == '1') {
			trans1.setAttribute("class", "triangle-up");
			trans2.setAttribute("class", "");
			document.getElementById("type").value="1";
		}
		if (ret == '2') {
			trans2.setAttribute("class", "triangle-up");
			trans1.setAttribute("class", "");
			document.getElementById("type").value="2";
		}
	}
	function changeRemeber() {
		var remeberId = document.getElementById('remeberId').value;
		if (remeberId == '1') {
			document.getElementById('remeber').src = "../img/cha.png";
			document.getElementById('remeber').style.width = "17px";
			document.getElementById('remeber').style.height = "17px";
			document.getElementById('remeberId').value = '2';
		} else if (remeberId == '2') {
			document.getElementById('remeber').src = "../img/gou.png";
			document.getElementById('remeber').style.width = "20px";
			document.getElementById('remeber').style.height = "20px";
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
			if(data == '0'){
				alert("该账号已停用,请联系客服");
			}
			if(data == '1'){
				alert("请确认你的邮箱");
			}
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
	function forgetPSD(){
		
	}
</script>
<body bgcolor="#F5F8F9" onload="init()">
	<form id="loginForm">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:14%;"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></td>
				<td width="5%"/>
				<td class="textC">
					<div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)">看机会
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu1" style="">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#"><font color="#000">Java1</font></a>
					        </li>
					    </ul>
					</div>
					<div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)">招人才
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#"><font color="#000">Java2</font></a>
					        </li>
					    </ul>
				    </div>
					<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;padding:0px 20px;"
					 class="btn dropdown-toggle" onmouseover="changeColor1(this)"
					 onmouseout="changeColor2(this)" onclick="javascript:top.location.href='check_email.jsp'">推荐
				    </button>
			    </td>
			    <td style="width:24%;padding-right:13%">
				    <button type="button" class="btn btn-default" style="width:101px;color:#00B38A;background:#F5F8F9;" onclick="javascript:top.location.href='login.jsp'">登录</button>
				    <button id="regit" type="button" class="btn btn-default" style="margin-left:9px;width:101px;color:#FFFFFF;background:#00B38A;" onclick="javascript:top.location.href='register.jsp'">注册</button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:127px;"></div>
	<center>
		<div style="background: #FFFFFF; min-width: 600px;width:42%;">
			<table width="100%">
				<tr>
					<td width="25%" />
					<td width="25%" />
					<td width="25%" />
					<td width="25%" />
				</tr>
				<tr>
					<td />
					<td colspan="2" class="textC">
						<h3>登 录</h3>
					</td>
					<td />
				</tr>
				<tr>
					<td />
					<td colspan="2" class="textC">
						<input type="hidden" name="type" id="type"/>
						<div class="btn-group btn-group-lg">
							<button id="button1" type="button" class="btn btn-default"
								onclick="getTran('1')">我是候选人</button>
							<button id="button2" type="button" class="btn btn-default"
								onclick="getTran('2')">我是HR/BOSS</button>
						</div>
					</td>
					<td />
				</tr>
				<tr>
					<th />
					<td class="textC"><center>
							<div id="transparent1"></div>
						</center></td>
					<td class="textC"><center>
							<div id="transparent2"></div>
						</center></td>
					<th />
				</tr>
			</table>
		</div>
		<div style="height: 2px; min-width: 600px;width:42%; background-color: #00B38A;"></div>
		<div style="background: #FFFFFF; min-width: 600px;width:42%;">
			<br />
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;">
				<tr>
					<th class="textR" width="25%">
						<font size="1" color="#666666">邮箱/手机号码：</font>
					</th>
					<td>
						<input type="text" id="name" name="name" class="form-control" style="width: 75% !important">
					</td>
				</tr>
				<tr>
					<th class="textR">
						<font size="1" color="#666666">密码：</font>
					</th>
					<td>
						<input type="password" name="password" id="password" class="form-control" style="width: 75% !important">
					</td>
				</tr>
				<tr>
					<th class="textR">
						<font size="1" color="#666666">图形验证码：</font>
					</th>
					<td>
						<div class="col-lg-6" style="width:100%;">
							<div class="input-group" style="width: 100% !important; margin-left: -22px !important;">
								<input type="text" id="inputCode" class="form-control" style="width: 60% !important">
								<div id="vCode2" style="width: 100px; height: 34px; border: 1px solid #ccc; display: inline-block;"></div>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<br />
			<center>
				<table width="250px">
					<tr>
						<td class="textL">
							<input type="hidden" id="remeberId" value="1" />
							<img id="remeber" src="../img/gou.png" width="20px" height="20px" onclick="changeRemeber()" />
							<font size="1" color="#999999">记住密码</font>
						</td>
						<td class="textR">
							<a href="#" onclick="forgetPSD()">
								<font size="1" color="#00B38A">忘记密码？</font>
							</a>
						</td>
					</tr>
					<tr height="10px" />
					<tr>
						<td colspan="2">
							<button type="button" class="btn btn-primary" onclick="validateCode()" data-toggle="button"
								style="background-color: #00B38A !important; border-color: #00B38A !important; width: 100%">
								确认提交</button>
						</td>
					</tr>
				</table>
			</center>
			<br />
		</div>
	</center>
	</form>
</body>
</html>
