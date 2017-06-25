<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
.circleA {
    width: 21px;
    height: 21px;
    /* background: #00B38A;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%; */
    background: url('../img/gou.png');
    background-size: 21px 21px;
}
.circleB {
    width: 21px;
    height: 21px;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
    border:1px #CCCCCC solid;
}
.circleC {
    width: 25px;
    height: 25px;
    background: #00B38A;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
.circleD {
    width: 25px;
    height: 25px;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
    border:1px #CCCCCC solid;
}
td{
	color:#4F4F4F;
}
</style>
</head>
<script language="javascript">
	var dataName;
	var phoneCode;
	//头部
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function init() {
		if(isResetLogin()) {
			alert("登陆超时!");
			top.location.href='login.jsp';
		}
		else{
			var url = "user/resumeAddQuestionnairePage1.do";
			var formId = "saveresumeAddQuestionnaireForm";
			var data = ajaxSumbit(url, formId);
			dataName = data.dataName;
			addli(data.moneytypeList,"money1");
			addli(data.moneytypeList,"money2");
			$("#saveresumeAddQuestionnaireForm").populateForm(data);
			var jobstatus = document.getElementById("jobstatus").value;
			if (jobstatus != "") {
				document.getElementById(jobstatus).setAttribute("class","circleA");
			}
			var intime = document.getElementById("intime").value;
			if (intime != "") {
				document.getElementById(intime).setAttribute("class","circleA");
			}
			moneysum();
		}
	}
	function jobId(job){
		if(job.getAttribute('class') == "icheckbox_square-green checked"){
			job.setAttribute("class","icheckbox_square-green hover");
		}
		else if(job.getAttribute('class') == "icheckbox_square-green hover"){
			job.setAttribute("class","icheckbox_square-green checked");
		}
	}
	function selected(obj){
		$(".circleA").each(function () {
			if(obj.id.indexOf('j') > -1 && this.id.indexOf('j') > -1){
				this.setAttribute("class","circleB");
			}
			if(obj.id.indexOf('i') > -1 && this.id.indexOf('i') > -1){
				this.setAttribute("class","circleB");
			}
		});
		obj.setAttribute("class","circleA");
		if(obj.id.indexOf('j') > -1){
			document.getElementById("jobstatus").value=obj.id;
		}
		if(obj.id.indexOf('i') > -1){
			document.getElementById("intime").value=obj.id;
		}
	}
	function addli(items,liId){
		var li1 = "";
		for(var i in items){//href='#' 
			li1 = li1 + "<li role='presentation'>"
						+"<a role='menuitem' tabindex='-1' onclick='"+liId+"(this)'><font color='#4F4F4F'>"+items[i].value+"</font></a>"
						+"</li>";
		}
		document.getElementById(liId).innerHTML = li1;
	}
	function money1(obj){
		document.getElementById("nowmoneytype").value=obj.innerText;
	}
	function money2(obj){
		document.getElementById("planmoneytype").value=obj.innerText;
	}
	function moneysum(){
		var monthmoney = 0;
		var month = 0;
		if(document.getElementById("monthmoney").value != '' && document.getElementById("month").value != ''){
			monthmoney = document.getElementById("monthmoney").value
			month = document.getElementById("month").value
		}
		document.getElementById("summoney").innerText = "= "+monthmoney * month / 10000 +"万/年";
		document.getElementById("offerUserNowYearWages").value = monthmoney * month / 10000;
	}

	function goSubmit(){
		if(!checkValue()){
			return;
		}
		var url = "user/saveresumeAddQuestionnaire1.do";
		var formId = "saveresumeAddQuestionnaireForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			top.location.href='examine_user.jsp';
		}else{
			alert("保存出错！");
		}
	}
	function booleanInfot(url){
		if(dataName == '1'){
			top.location.href=url;
		}else{
			alert("请先填写好您的简历信息！");
		}
	}
	function checkValue(){
		if(!checkInput('jobstatus',"求职状态","30",false)) return false;
		if(!checkInput('intime',"入职时间","30",false)) return false;
		if(!checkInput('nowmoneytype',"税前收入","30",false)) return false;
		if(!checkNum('monthmoney',"税前收入","30",false)) return false;
		if(!checkNum('month',"税前收入","30",false)) return false;
		if(!checkInput('planmoneytype',"最低税前年薪要求","30",false)) return false;
		if(!checkInput('planmoney',"最低税前年薪要求","30",false)) return false;
		if(!checkInput('offerRequestNextJob',"下一份工作的要求","130",false)) return false;
		if(phoneCode != document.getElementById("msgCode").value) {
			alert("手机验证码错误");
			return false;
		}
		return true;
	}
	var myVar;
	var a = 60;
	function getmsg(){
		phoneCode = Math.floor(Math.random()*9000)+1000;
		var phone = document.getElementById("phone").value;
		if(phone.length < 11 || isNaN(phone)){
			alert("手机号码格式不正确！")
			return;
		}
		var url = "register/getmsg1.do?code="+phoneCode;
		if(phone == ""){
			alert("请输入手机号码!")
			return;
		}
		ajaxSumbitNoform(url,phone);
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
			document.getElementById("msgtime").innerHTML="<font style='font-size:14px;'>获取</font>";
			document.getElementById("msgtime").removeAttribute("disabled"); 
			return;
		}
		document.getElementById("msgtime").style.background="#FFF";
		document.getElementById("msgtime").style.color="#9A9A9A";
		document.getElementById("msgtime").style.border="1px #9A9A9A solid";
		document.getElementById("msgtime").innerHTML="<font style='font-size:14px;'>"+a+"秒</font>";
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
			    <td style="width:24%;padding-right:10%">
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('personal_settings.jsp')">个人设置
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:78px;"></div>
	<center>
		<div style="width:1000px;">
			<table width="100%">
				<tr>
					<td width="5%"/>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:23%;">
						<table>
							<tr>
								<td><div class="circleD"></div></td>
								<td><font color="#9A9A9A">&nbsp;&nbsp;基本信息 </font></td>
							</tr>
						</table>
					</td>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:23%;">
						<table>
							<tr>
								<td><div class="circleD"></div></td>
								<td><font color="#9A9A9A">&nbsp;&nbsp;期望工作 </font></td>
							</tr>
						</table>
					</td>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:23%;">
						<table>
							<tr>
								<td><div class="circleD"></div></td>
								<td><font color="#9A9A9A">&nbsp;&nbsp;个人经历 </font></td>
							</tr>
						</table>
					</td>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:23%;">
						<table>
							<tr>
								<td><div class="circleC"></div></td>
								<td><font color="#00B38A">&nbsp;&nbsp;调查问卷 </font></td>
							</tr>
						</table>
					</td>
					<td width="5%"/>
				</tr>
				<tr height="20px"/>
			</table>
		</div>
		<div style="background: #FFFFFF;height:74px; width: 1000px;padding-top:29px;padding-bottom:20px;">
			<center><font color="#4F4F4F" style="font-size:18px;">最后一步，谈谈您对新工作的要求吧！</font></center>
		</div>
		<div style="height: 2px; width: 1000px; background-color: #CCCCCC;"></div>
		<form id="saveresumeAddQuestionnaireForm" style="overflow:hidden;">
		<div style="background: #FFFFFF; width: 1000px;padding-bottom:67px;">
			<br />
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;padding-left:15%;padding-right:15%;">
				<tr>
					<td class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">您目前的求职状态是？<font color="#00B389">*</font></font>
						<input type="hidden" id="jobstatus" name="jobstatus"/>
					</td>
				</tr>
				<tr height="9px"/>
				<tr>
					<td class="textL">
						<table style="border-collapse:separate; border-spacing:0px 10px;">
							<tr>
								<td style="padding-bottom:44px;width:28px;"><div class="circleB" id="j1" onclick="selected(this)" style="cursor:pointer;"></div></td>
								<td style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">不着急找工作，先看看机会</font></td>
							</tr>
							<tr>
								<td style="padding-bottom:44px;width:28px;"><div class="circleB" id="j2" onclick="selected(this)" style="cursor:pointer;"></div></td>
								<td style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;已经有offer了，想看更好的</font></td>
							</tr>
							<tr>
								<td style="padding-bottom:44px;width:28px;"><div class="circleB" id="j3" onclick="selected(this)" style="cursor:pointer;"></div></td>
								<td style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;正在找工作，还没有offer</font></td>
							</tr>
							<tr>
								<td style="padding-bottom:44px;width:28px;"><div class="circleB" id="j4" onclick="selected(this)" style="cursor:pointer;"></div></td>
								<td style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;暂时不考虑换工作</font></td>
							</tr>
						</table>
					</td>
					<td/>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">如果找到合适的工作，您预计多久可以入职？<font color="#00B389">*</font></font>
						<input type="hidden" id="intime" name="intime"/>
					</td>
				</tr>
				<tr height="9px"/>
				<tr>
					<td colspan="2">
						<table width="100%">
							<tr height="20px">
								<td class="textR" style="padding-bottom:44px;width:28px;"><div class="circleB" id="i1" onclick="selected(this)" style="cursor:pointer;"></div></td>
								<td class="textL" style="padding-bottom:44px;width:263px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;目前是离职状态，随时可以入职</font></td>
								<td class="textR" style="padding-bottom:44px;width:28px;"><div class="circleB" id="i2" onclick="selected(this)" style="cursor:pointer;"></div></td>
								<td class="textL" style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;一周</font></td>
								<td/>
							</tr>
							<tr height="20px">
								<td class="textR" style="padding-bottom:44px;width:28px;"><div class="circleB" id="i3" onclick="selected(this)" style="cursor:pointer;"></div></td>
								<td class="textL" style="padding-bottom:44px;width:263px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;一个月</font></td>
								<td class="textR" style="padding-bottom:44px;width:28px;"><div class="circleB" id="i4" onclick="selected(this)" style="cursor:pointer;"></div></td>
								<td class="textL" style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;不确定</font></td>
								<td/>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">您目前的税前收入是？<font color="#00B389">*</font></font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table width="100%">
							<tr>
								<td style="width: 160px !important">
									<div class="input-group" >
										<div class="dropdown" style="">
											<input type="text" id="nowmoneytype" name="nowmoneytype" readOnly="readOnly" class="form-control" style="width: 80px !important">
										    <button type="button" style="width:41px;height:41px;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
										        <span class="caret"></span>
										    </button>
										    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 160px !important" id="money1">
										        
										    </ul>
										</div>
									</div>
								</td>
								<td width="171px">
									<div class="input-group">
										<input type="text" name="monthmoney" id="monthmoney" onchange="moneysum()" class="form-control" style="width: 141px !important"><span style="width:30px;border:none;background:#FFF;font-size:14px;color:#4F4F4F;" class="input-group-addon">每月</span>
									</div>
								</td>
								<td class="textC" width="30px"><font style="font-size:14px;" color="#4F4F4F">X</font></td>
								<td width="185px">
									<div class="input-group">
										<input type="hidden" id="offerUserNowYearWages" name="offerUserNowYearWages">
										<input type="text" name="month" id="month" onchange="moneysum()" class="form-control" style="width: 141px !important"><span style="width:41px;border:none;background:#FFF;font-size:14px;" class="input-group-addon">月</span>
									</div>
								</td>
								<td id="summoney" width="90px">= 0 万/年</td>
								<td/>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="30px"/>
				<tr>
					<td class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">您对下一份工作的最低税前年薪要求是？<font color="#00B389">*</font></font>
					</td>
				</tr>
				<tr>
					<td>
						<table>
							<tr>
								<td width="160px">
									<div class="input-group">
										<div class="dropdown">
											<input type="text" readOnly="readOnly" id="planmoneytype" name="planmoneytype" class="form-control" style="width: 80px !important">
										    <button type="button" style="width:41px;height:41px;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
										        <span class="caret"></span>
										    </button>
										    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 20px !important" id="money2">
										    </ul>
										</div>
									</div>
								</td>
								<td>
									<div class="input-group">
										<input type="text" id="planmoney" name="planmoney" class="form-control" style="width: 141px !important"><span style="width:41px;border:none;background:#FFF;font-size:14px;color:#4F4F4F;" class="input-group-addon">万/年</span>
									</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="30px"/>
				<tr>
					<td class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">您对下一份工作的要求是？<font color="#00B389">*</font></font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="8" name="offerRequestNextJob" id="offerRequestNextJob" style="width:789px;height:201px;color:#4F4F4F;"></textarea>
					</td>
				</tr>
				<tr height="30px"/>
				<tr>
					<td class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">请验证您的手机号码？<font color="#00B389">*</font></font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="col-lg-6" style="width: 100%;">
							<div class="input-group" style="margin-left: -22px !important;">
								<input type="text" id="phone" name="phone" class="form-control" style="width: 350px !important" placeholder="请输入您的手机号">
								<button type="button" style="width:91px;background:#00B38A;color:#FFF;" class="btn btn-default" onclick="getmsg()" id="msgtime">获取验证码</button>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<div class="col-lg-6" style="width: 100%;">
							<div class="input-group" style="margin-left: -22px !important;">
								<input type="text" id="msgCode" name="inputCode" class="form-control" style="width: 350px !important" placeholder="请输入验证码">
<!-- 								<button type="button" style="width:91px;background:#00B38A;color:#FFF;" class="btn btn-default" onclick="getmsg()">验证码</button> -->
							</div>
						</div>
					</td>
				</tr>
			</table>
			<table>
				<tr>
					<td style="padding-top:67px;padding-bottom:40px;" class="textC">
						<button type="button" class="btn btn-primary" onclick="javascript:top.location.href='resume_add_workexperience.jsp';" data-toggle="button"
							style="color: #4F4F4F !important;background-color: #CCCCCC !important; border-color: #CCCCCC !important; width: 281px;">
							上一步</button>
						<button type="button" class="btn btn-primary" onclick="goSubmit()" data-toggle="button"
							style="margin-left:19px;color: #FFF !important;background-color: #00B38A !important; border-color: #00B38A !important; width: 281px;">
							提交资料</button>
					</td>
				</tr>
			</table>
		</div>
		</form>
	</center>
	<div style="height: 288px; width: 100%;"></div>
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
