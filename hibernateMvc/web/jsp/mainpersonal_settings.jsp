 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	var dataName;
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function init() {
		var url = "user/personalsettingsPage1.do";
		var formId = "personalsettingForm";
		var data = ajaxSumbit(url, formId);
		if (data == 'error') {
			alert('数据访问出错！');
		}
		else {
			dataName = data.dataName;
			addaccount(data.account);
			addphone(data.phone,data.isAccountPhone);
			addemailmsg(data.emailmsg);
		}
	}
	function addaccount(item){
		document.getElementById("account").innerText = item;
	}
	function addphone(item1,item2){
		var val = "";
		if(item2 == "0"){
			val = item1;
			document.getElementById("phone").disabled = "";
		}
		if(item2 == "1"){
			val = item1 + "(已绑定)";
			document.getElementById("phone").disabled = "disabled";
		}
		document.getElementById("phone").value = item1;
	}
	function addemailmsg(item){
		if(item == "0"){
			document.getElementById("emailmsg").innerText = "未开启：邮箱通知";
		}
		if(item == "1"){
			document.getElementById("emailmsg").innerText = "已开启：邮箱通知";
		}
	}
	function openjiebang(){
		document.getElementById("jiebang").click();
	}
	function getmsg1(){
		phoneCode = Math.floor(Math.random()*9000)+1000;
		var phone = document.getElementById("phone").value;
		var url = "register/getmsg1.do?code="+phoneCode;
		/* if(phone == ""){
			alert("请输入手机号码!")
			return;
		} */
		ajaxSumbitNoform(url,phone);
	}
	var myVar;
	var a = 60;
	function daoshu(){
		var phone = document.getElementById("phone").value;
		if(phone.length < 11 || isNaN(phone)){
			alert("手机号码格式不正确！")
			return;
		}
		getmsg1();
		myVar=setInterval(function(){myTimer()},1000);
		a = 60;
	}
	function myTimer(){
		if(a != 0){
			a = a-1;
			document.getElementById("msgtime").setAttribute("disabled", true);
		}else{
			clearInterval(myVar);
			document.getElementById("msgtime").style.background="#00B38A";
			document.getElementById("msgtime").style.color="#FFF";
			document.getElementById("msgtime").style.border="1px #00B38A solid";
			document.getElementById("msgtime").innerHTML="<font style='font-size:14px;'>获取验证码</font>";
			document.getElementById("msgtime").removeAttribute("disabled"); 
			return;
		}
		document.getElementById("msgtime").style.background="#FFF";
		document.getElementById("msgtime").style.color="#9A9A9A";
		document.getElementById("msgtime").style.border="1px #9A9A9A solid";
		document.getElementById("msgtime").innerHTML="<font style='font-size:14px;'>"+a+"秒</font>";
	}
	function checkValue() {
		if(!checkpsw('password',"新密码","4","16",false)) return false;
		if(!checkpsw('passwordconfirm',"确认密码","4","16",false)) return false;
		return true;
	}
	function goSubmit(){
		if (!checkValue()) return;
		var passwordconfirm = document.getElementById('passwordconfirm').value;
		var password = document.getElementById('password').value;
		if (passwordconfirm != password) {
			alert("两次输入的密码不一致");
			return;
		}
		var url = "user/updateOfferUserPassword2.do";
		var formId = "personalsettingForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			alert("保存成功！");
		}else{
			alert("保存出错！");
		}
		location.reload(true);
	}
	function booleanInfot(url){
		if(dataName == '1'){
			top.location.href=url;
		}else{
			alert("请先等待审核结果！");
		}
	}
	function goType(ret){
		if(ret == '3'){
			document.getElementById("emailType1").style.display="";
			document.getElementById("emailType2").style.display="";
			document.getElementById("emailType3").style.display="none";
		}
		if(ret == '1'){
			document.getElementById("emailType1").style.display="none";
			document.getElementById("emailType2").style.display="none";
			document.getElementById("emailType3").style.display="";
			
			var url = "change/changeUserMsgStatus.do";
			var data = ajaxSumbitNoform(url, "1");
			if(data == "success"){
				alert("保存成功！");
			}else{
				alert("保存出错！");
			}
			location.reload(true);
		}
		if(ret == '2'){
			document.getElementById("emailType1").style.display="none";
			document.getElementById("emailType2").style.display="none";
			document.getElementById("emailType3").style.display="";
			var url = "change/changeUserMsgStatus.do";
			var data = ajaxSumbitNoform(url, "0");
			if(data == "success"){
				alert("保存成功！");
			}else{
				alert("保存出错！");
			}
			location.reload(true);
		}
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
	<div style="width:100%;height:60px;min-width:1000px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
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
			    <td width="5%"/>
			    <td style="width:19%;padding-right:10%">
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#777777;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onclick="javascript:top.location.href='personal_settings.jsp'">个人设置
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<form id="personalsettingForm" name="personalsettingForm">
	<center>
		<div style="background: #FFFFFF; width: 900px;">
			<table width="100%">
				<tr height="38px"/>
				<tr>
					<td />
					<td colspan="2" class="textC">
						<font style="font-size:24px;" color="#4F4F4F">个人设置</font>
					</td>
					<td />
				</tr>
				<tr height="37px"/>
			</table>
		</div>
		<div style="height: 2px; width: 900px; background-color: #CCCCCC;"></div>
		<div style="background: #FFFFFF; width: 900px;">
			<br />
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;">
				<tr>
					<td width="26%"/>
					<td class="textL" width="421px">
						<font style="font-size:14px;" color="#4F4F4F">当前账号</font>
					</td>
					<td/>
				</tr>
				<tr height="36px">
					<td/>
					<td valign="top">
						<font color="#00B389" style="font-size:14px;" id="account"></font>
					</td>
					<td/>
				</tr>
				<tr>
					<td/>
					<td class="textL">
						<font style="font-size:14px;" color="#4F4F4F">手机：</font>
					</td>
					<td/>
				</tr>
				<tr height="65px">
					<td/>
					<td valign="top">
						<table width="421px">
							<tr>
								<td><input type="text" class="form-control" id="phone" name="phone" ></td>
								<td width="121px"><button class="btn btn-default" type="button"  style="width:121px;background:#00B389;color:#FFF;" data-toggle="modal" data-target="#myModal">解除绑定</button></td>
							</tr>
						</table>
					</td>
					<td/>
				</tr>
				<tr>
					<td/>
					<td class="textL">
						<font style="font-size:14px;" color="#4F4F4F">通知信息</font>
					</td>
					<td/>
				</tr>
				<tr height="40px">
					<td/>
					<td class="textL" valign="top">
						<font style="font-size:14px;" color="#4F4F4F" id="emailmsg">已开启:邮件通知</font>
						&nbsp;&nbsp;
						<a href="#" id="emailType1" onclick="goType('1')" style="display:none;"><font style="font-size:14px;" color="#00B389">开启</font></a>
						&nbsp;
						<a href="#" id="emailType2" onclick="goType('2')" style="display:none;"><font style="font-size:14px;" color="#00B389">关闭</font></a>
						<a href="#" id="emailType3" onclick="goType('3')"><font style="font-size:14px;" color="#00B389">设置</font></a>
					</td>
					<td/>
				</tr>
				<tr>
					<td/>
					<td class="textL">
						<font style="font-size:14px;" color="#4F4F4F">新密码</font>
					</td>
					<td/>
				</tr>
				<tr>
					<td/>
					<td>
						<input type="password" id="password" name="password" class="form-control" width="421px">
					</td>
					<td/>
				</tr>
				<tr height="31px">
					<td/>
					<td class="textL">
						<font style="font-size:14px;" color="#4F4F4F">确认密码</font>
					</td>
					<td/>
				</tr>
				<tr>
					<td/>
					<td>
						<input type="password" id="passwordconfirm" name="passwordconfirm" class="form-control" width="421px">
					</td>
					<td/>
				</tr>
				<tr height="8px"/>
				<tr>
					<td/>
					<td style="padding:10px 0px;">
						<button type="button" class="btn btn-primary" onclick="goSubmit()" data-toggle="button"
							style="background-color: #00B38A !important; border-color: #00B38A !important; width: 100%">
							确认提交</button>
					</td>
					<td/>
				</tr>
				<tr height="8px"/>
			</table>
		</div>
	</center>
	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" id="jiebang" style="display:none;"></button>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog" style="margin-top:200px;">
	    	<center>
	        <div class="modal-content" style="width:600px;">
	            <div class="modal-header" style="border-bottom:2px #CCCCCC solid;">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <center><font style="font-size:24px;color:#4F4F4F;" class="modal-title" id="myModalLabel">解绑手机</font></center>
	            </div>
	            <div class="modal-body">
	            	<table>
	            		<tr height="8px"/>
	            		<tr>
	            			<td width="102px" class="textC"><font style="font-size:16px;" color="#4F4F4F">验证码</font></td>
	            			<td>
	            				<table>
	            					<tr>
	            						<td width="350px"><input type="text" class="form-control" id="inputCode" name="inputCode" width="350px"></td>
	            						<td width="124px"><button class="btn btn-default" type="button" onclick="daoshu()" style="width:124px;font-size:14px;background:#00B389;color:#FFF;" id="msgtime">获取验证码</button></td>
	            					</tr>
	            				</table>
	            			</td>
	            		</tr>
	            		<tr>
	            			<td colspan="2" class="textC" style="padding:23px 0px 10px 0px;">
			                	<button type="button" class="btn btn-default" data-dismiss="modal" style="width:279px;font-size:16px;color:#FFF;background:#00B389;" onclick="javascript:alert(1);">确 定</button>
	            			</td>
	            		</tr>
	            	</table>
				</div>
	        </div>
	        </center>
	    </div>
	</div>
	</form>
	<div style="width:100%;height:38%;"></div>
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
