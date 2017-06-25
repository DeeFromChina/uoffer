<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
.smailfont{
	
}
.fontcol{
	padding-left: 20px;
	color:#666666;
}
</style>
</head>
<script language="javascript">
	//头部
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function booleanInfot(url){
		alert("请等候我们的审核！");
	}
	function init(){
		var url = "user/examineUserPage.do";
		var data = ajaxSumbit(url, "loginForm");
		var status = data.status;
		document.getElementById('wanchengdu').innerText = data.wanchengdu;
		document.getElementById('changdu').style.width = data.wanchengdu;
		if (status == '3') {
			top.location.href='examine_user_fail.jsp';
		}
		else if (status == '4'){
			top.location.href='resume_edit.jsp';
		}
	}
</script>
<body bgcolor="#FFF" onload="init()">
	<form id="loginForm">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
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
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='personal_settings.jsp'">个人设置
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:205px;"></div>
	<center>
		<div style="background: #FFF; width: 80%;">
			<table width="100%">
				<tr>
					<td class="textC" style="padding:20px 0px;"><img src="../img/shangchuan.png" width="216px"/></td>
				</tr>
				<tr height="30px"/>
				<tr>
					<td class="textC"><font style="font-size:20px;" color="#4F4F4F">Hi,你们已经收到你的申请，审核结果会在2个工作日内通知你</font></td>
				</tr>
				<tr>
					<td class="textC"><font style="font-size:20px;" color="#4F4F4F">您的简历尚不完善，可能无法通过审核，请尽快完善。</font></td>
				</tr>
				<tr height="149px"/>
			</table>
		</div>
		<div style="height: 2px; width: 80%; background-color: #CCCCCC;"></div>
		<div style="background: #FFF; width: 80%;">
			<br />
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;">
				<tr height="56px"/>
				<tr>
					<td class="textC" colspan="4"><font style="font-size:20px;" color="#4F4F4F">完善简历</font></td>
				</tr>
				<tr height="17px"/>
				<tr>
					<td class="smailfont textR" valign="top" width="40%" style="padding-right:20px;">简历完成度</td>
					<td style="width:203px;">
						<div class="progress" style="width:250px;height:15px;">
						    <div id="changdu" class="progress-bar" role="progressbar" aria-valuenow="60" 
						        aria-valuemin="0" aria-valuemax="100" style="width: 40%;background:#00B389;border:1px #00B389 solid;">
						        <span class="sr-only"></span>
						    </div>
						</div>
					</td>
					<td class="smailfont textL" valign="top" style="width:20px;color:#00B38A;"><span id="wanchengdu">40%</span></td>
					<td class="smailfont textL" valign="top"><a href="#" onclick="javascript:top.location.href='resume_add_information.jsp'">修改简历</a></td>
				</tr>
				<tr>
					<td class="smailfont textC" colspan="4">
						<font color="#666666">简历的完善程度影响您能收获的机会，也是我们审核时重要的依据。<a href="#" onclick="javascript:document.getElementById('team').click();"><font color="#00B389" style="text-decoration: underline;">看看我们的审核标准</font></a></font>
					</td>
				</tr>
				<tr height="57px"/>
				<tr>
					<td colspan="4">
						<table width="100%">
							<tr>
								<td rowspan="6" class="textR" width="50%"><img src="../img/kefu.png" width="161px" height="161px" style="border:2px solid #CCCCCC;padding:10px 30px;border-radius:13px;"/></td>
								<td class="textL fontcol smailfont" width="50%">我是张丽，你的职业顾问</td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont">期待着与您交流工作、求职中的想法</td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont">电话：</td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont">微信：</td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont">QQ:</td>
							</tr>
							<tr>
								<td class="textL fontcol smailfont">邮箱：</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="47px"/>
			</table>
		</div>
		<div style="height: 2px; width: 80%; background-color: #CCCCCC;"></div>
		<div style="background: #FFF; width: 80%;">
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;">
			<tr height="58px"/>
				<tr>
					<td width="33%"/>
					<td class="textC" style="padding:10px 0px;"><font color="#4F4F4F" style="font-size:20px;">看看申请后会发生什么</font></td>
					<td width="33%"/>
				</tr>
				<tr>
					<td class="textC"><img src="../img/project.png" width="100px"/></td>
					<td class="textC"><img src="../img/email.png" width="100px"/></td>
					<td class="textC"><img src="../img/aguy.png" width="180px"/></td>
				</tr>
				<tr>
					<td class="textC">
						<center>
							<div style="width:125px;margin-top:-20px">
								<font style="font-size:16px;" color="#4F4F4F">您的简历向您感兴趣的企业展示2周</font>
							</div>
						</center>
					</td>
					<td class="textC">
						<center>
							<div style="width:145px;font-size:1;margin-top:-20px">
								<font style="font-size:16px;" color="#4F4F4F">企业向您发出面试邀请，并声明职位及薪酬</font>
							</div>
						</center>
					</td>
					<td class="textC">
						<center>
							<div style="width:147px;font-size:1;margin-top:-10px">
								<font style="font-size:16px;" color="#4F4F4F">选择您满意的参加面试，挑选满意的offer入职</font>
							</div>
						</center>
					</td>
				</tr>
				<tr height="55px"/>
			</table>
		</div>
		<div style="height: 2px; width: 80%; background-color: #CCCCCC;"></div>
		<div style="background: #FFF; width: 80%;">
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;">
				<tr height="47px"/>
				<tr>
					<td width="40%"/>
					<td class="textC" style="padding:10px 0px;"><font color="#4F4F4F" style="font-size:20px;">最近在U-offer招聘的企业</font></td>
					<td width="40%"/>
				</tr>
				<tr height="47px"/>
				<tr>
					<td class="textC"><img src="../img/firm_logo3.png" width="121px"/></td>
					<td class="textC"><img src="../img/firm_logo2.png" width="121px"/></td>
					<td class="textC"><img src="../img/firm_logo1.png" width="112px"/></td>
				</tr>
				<tr height="47px"/>
				<tr>
					<td class="textC"><img src="../img/firm_logo5.png" width="121px"/></td>
					<td class="textC"><img src="../img/firm_logo6.png" width="121px"/></td>
					<td class="textC"><img src="../img/firm_logo4.png" width="121px"/></td>
				</tr>
				<tr height="168px"/>
			</table>
			<br />
		</div>
	</center>
	</form>
	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display:none;" id="team"></button>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top:100px;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
						<center><font style="font-size:24px;" color="#4F4F4F">筛选标准</font></center>
					<!-- <h4 class="modal-title" id="myModalLabel">
					</h4> -->
				</div>
				<div class="modal-body" style="overflow-y:auto;height:420px;">
					<iframe src="shenhe.html" height="100%" width="100%" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;"></iframe>
	            </div>
			</div>
		</div>
	</div>
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
