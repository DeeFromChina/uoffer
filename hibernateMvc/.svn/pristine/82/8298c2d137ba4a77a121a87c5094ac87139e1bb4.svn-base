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
		der.style.background="#999999";
	}
	function changeColor2(der){
		der.style.background="#000";
	}
	function init() {
		var url = "user/personalsettingsPage1.do";
		var formId = "personalsettingForm";
		var data = ajaxSumbit(url, formId);
		dataName = data.dataName;
		addaccount(data.account);
		addphone(data.phone,data.isAccountPhone);
		addemailmsg(data.emailmsg);
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
		document.getElementById("phone").value = val;
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
	function getmsg(){
		var phone = document.getElementById("phone").value;
		var url = "register/getmsg1.do";
		if(phone == ""){
			alert("请输入手机号码!")
			return;
		}
		ajaxSumbitNoform(url,phone);
	}
	function goSubmit(){
		var url = "user/updateOfferUserPassword2.do";
		var formId = "personalsettingForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			alert("保存成功！");
		}else{
			alert("保存出错！");
		}
	}
	function booleanInfot(url){
		if(dataName != '1'){
			top.location.href=url;
		}else{
			alert("请先填写好您的简历信息！");
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
		}
		if(ret == '2'){
			document.getElementById("emailType1").style.display="none";
			document.getElementById("emailType2").style.display="none";
			document.getElementById("emailType3").style.display="";
		}
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
	<div style="width:100%;height:55px;background: #000;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="270px" style="padding-left:150px;"><img src="../img/U-Offerlogo.png"></td>
				<td class="textL" style="padding-left:150px;">
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('user_view.jsp')">
				    	<font size="3">面试邀请</font>
				    </button>
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('resume_edit.jsp')">
				    	<font size="3">我的简历</font>
				    </button>
			    </td>
			    <td class="textC" width="270px">
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='personal_settings.jsp'">个人设置
				    </button>
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
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
		<div style="background: #FFFFFF; width: 600px;">
			<table width="100%">
				<tr height="20px"/>
				<tr>
					<td />
					<td colspan="2" class="textC">
						<h4>个人设置</h4>
					</td>
					<td />
				</tr>
				<tr height="20px"/>
			</table>
		</div>
		<div style="height: 2px; width: 600px; background-color: #E4E7E6;"></div>
		<div style="background: #FFFFFF; width: 600px;">
			<br />
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;">
				<tr>
					<td width="20%"/>
					<th class="textL">
						<font size="1" color="#666666">当前账号</font>
					</th>
					<td width="20%"/>
				</tr>
				<tr height="40px">
					<td width="20%"/>
					<td valign="top">
						<font color="#00B389" size="2" id="account"></font>
					</td>
					<td width="20%"/>
				</tr>
				<tr>
					<td width="20%"/>
					<th class="textL">
						<font size="1" color="#666666">手机：</font>
					</th>
					<td width="20%"/>
				</tr>
				<tr height="80px">
					<td width="20%"/>
					<td valign="top">
						<div class="col-lg-6" style="width:100%;">
			                <div class="input-group" style="width: 115% !important;margin-left: -22px !important;">
			                    <input type="text" class="form-control" id="phone" name="phone">
			                    <span class="input-group-btn">
			                        <button class="btn btn-default" type="button" onclick="openjiebang()" style="margin-left:-10px;background:#00B389;color:#FFF;">解除绑定</button>
			                    </span>
			                </div>
			            </div>
					</td>
					<td width="20%"/>
				</tr>
				<tr>
					<td width="20%"/>
					<th class="textL">
						<font size="1" color="#666666">通知信息</font>
					</th>
					<td width="20%"/>
				</tr>
				<tr height="40px">
					<td width="20%"/>
					<th class="textL" valign="top">
						<font size="1" color="#666666" id="emailmsg">已开启:邮件通知</font>
						&nbsp;&nbsp;
						<a href="#" id="emailType1" onclick="goType('1')" style="display:none;"><font size="1" color="#00B389">开启</font></a>
						&nbsp;
						<a href="#" id="emailType2" onclick="goType('2')" style="display:none;"><font size="1" color="#00B389">关闭</font></a>
						<a href="#" id="emailType3" onclick="goType('3')"><font size="1" color="#00B389">设置</font></a>
					</th>
					<td width="20%"/>
				</tr>
				<tr>
					<td width="20%"/>
					<th class="textL">
						<font size="1" color="#666666">新密码</font>
					</th>
					<td width="20%"/>
				</tr>
				<tr>
					<td width="20%"/>
					<td>
						<input type="password" name="password" class="form-control">
					</td>
					<td width="20%"/>
				</tr>
				<tr>
					<td width="20%"/>
					<th class="textL">
						<font size="1" color="#666666">确认密码</font>
					</th>
					<td width="20%"/>
				</tr>
				<tr>
					<td width="20%"/>
					<td>
						<input type="password" name="passwordconfirm" class="form-control">
					</td>
					<td width="20%"/>
				</tr>
				<tr>
					<td width="20%"/>
					<td style="padding:10px 0px;">
						<button type="button" class="btn btn-primary" onclick="goSubmit()" data-toggle="button"
							style="background-color: #00B38A !important; border-color: #00B38A !important; width: 100%">
							确认提交</button>
					</td>
					<td width="20%"/>
				</tr>
			</table>
			<br />
		</div>
	</center>
	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" id="jiebang" style="display:none;"></button>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog" style="margin-top:200px;">
	    	<center>
	        <div class="modal-content" style="width:500px;">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <center><h4 class="modal-title" id="myModalLabel">解绑手机</h4></center>
	            </div>
	            <div class="modal-body">
	            	<table>
	            		<tr>
	            			<td>验证码：</td>
	            			<td>
	            				<div class="col-lg-6" style="width:100%;">
					                <div class="input-group" style="width: 115% !important;margin-left: -22px !important;">
					                    <input type="text" class="form-control" id="inputCode" name="inputCode">
					                    <span class="input-group-btn">
					                        <button class="btn btn-default" type="button" onclick="getmsg()" style="margin-left:-10px;background:#00B389;color:#FFF;">获取验证码</button>
					                    </span>
					                </div>
					            </div>
	            			</td>
	            		</tr>
	            	</table>
				</div>
	            <div class="modal-footer">
	            	<center>
	                	<button type="button" class="btn btn-default" data-dismiss="modal" style="width:200px;color:#FFF;background:#00B389;" onclick="javascript:alert(1);">提交更改</button>
	                </center>
	            </div>
	        </div>
	        </center>
	    </div>
	</div>
	</form>
</body>
</html>
