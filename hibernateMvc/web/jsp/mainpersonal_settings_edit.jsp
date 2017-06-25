<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
.greenTd{
	background:#00B38A !important;
	color:#FFF !important;
}
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
</style>
</head>
<script language="javascript">
	var nowJobList;
	var emadilstatus;
	var phoneCode = "";
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function changeColor3(der){
		der.style.background="#00B38A";
		der.style.color="#FFF";
	}
	function changeColor4(der){
		der.style.background="#FFF";
		der.style.color="#4F4F4F";
	}
	function booleanInfot(url){
		top.location.href=url;
	}
	function disedit(ret){
		if(ret == "1"){
			document.getElementById("edit").style.display="";
			document.getElementById("edita").style.display="none";
			document.getElementById("username").style.display="none";
		}
		if(ret == "2"){
			document.getElementById("edit").style.display="none";
			document.getElementById("edita").style.display="";
			document.getElementById("username").style.display="";
		}
	}
	function openWindow(name){
		document.getElementById("wins").click();
		var title ="";
		var content = "";
		if(name == 'job'){
			title = "请选择您的职位";
			content = addjob();
		}
		if(name == 'password'){
			title = "修改密码";
			content = addpassword();
		}
		if(name == 'phone'){
			title = "解绑手机";
			content = addphone();
		}
		if(name == 'email'){
			title = "通知信息设置";
			content = addemail();
		}
		document.getElementById("myModalLabel").innerText=title;
		document.getElementById("winbody").innerHTML=content;
	}
	function addjob(){
		document.getElementById("footer").style.display="";
		var jobName = "ali";
		var returnjob = "<table width='100%'>";
		for(var i in nowJobList){
			returnjob = returnjob + "<tr height='5px' style='border-radius:5px;'/>"
			returnjob = returnjob + "<tr style='border:1px #CCCCCC solid;' height='69px'>"
				+ "<td style='width:60px;padding:10px 0px;'>"
				+ "<div class='circleB' style='margin:0px auto;' id='"+nowJobList[i].id+"' onclick='selectjob(this)'></div></td>"
				+ "<td class='textC'>"+nowJobList[i].value+"</td></tr>";
		}
		//returnjob = returnjob +"<tr><td colspan='2' class='textC' style='padding:20px 0px;'><button type='button' class='btn btn-default' data-dismiss='modal' style='width:350px;'>确定</button></td></tr>";
		returnjob = returnjob + "</table>";
		return returnjob;
	}
	function addpassword(){
		document.getElementById("footer").style.display="";
		var returnjob = "<table width='100%'>";
		returnjob = returnjob + "<tr>"
									+"<td width='120px' style='padding-left:40px;padding-top:20px;padding-bottom:20px;'>"
										+"当前密码"
									+"</td>"
									+"<td>"
										+"<input type='password' name='oldPassword' id='oldPassword' class='form-control' style='width: 80% !important'>"
									+"</td>"
								+"</tr>"
								+"<tr>"
									+"<td style='padding-left:40px;padding-top:20px;padding-bottom:20px;'>"
										+"新密码"
									+"</td>"
									+"<td>"
										+"<input type='password' name='newPassword' id='newPassword' class='form-control' style='width: 80% !important'>"
									+"</td>"
								+"</tr>"
								+"<tr>"
									+"<td style='padding-left:40px;padding-top:20px;padding-bottom:20px;'>"
										+"重复密码"
									+"</td>"
									+"<td>"
										+"<input type='password' name='comfirmpsw' id='comfirmpsw' class='form-control' style='width: 80% !important'>"
									+"</td>"
								+"</tr>"
								//+"<tr><td colspan='2' class='textC' style='padding:20px 0px;'><button type='button' class='btn btn-default' data-dismiss='modal' style='background:#00B389;color:#FFF;width:250px;'>确定</button></td></tr>"
							+"</table>";
		return returnjob;
	}
	function addphone(){
		document.getElementById("footer").style.display="";
		var returnjob = "<table width='100%'>";
		returnjob = returnjob + "<tr height='200px'>"
									+"<td width='120px' style='padding-left:40px;padding-top:20px;padding-bottom:20px;'>"
										+"验证码:"
									+"</td>"
									+"<td>"
										+"<div class='input-group'>"
											+"<input type='text' id='msgCode' class='form-control'>"
											+"<span class='input-group-addon' style='background:#00B389;color:#FFF;' onclick=‘getmsg()’>获取验证码</span>"
										+"</div>"
									+"</td>"
								+"</tr>"
								//+"<tr><td colspan='2' class='textC' style='padding:20px 0px;'><button type='button' class='btn btn-default' data-dismiss='modal' style='background:#00B389;color:#FFF;width:250px;'>确定</button></td></tr>"
							+"</table>";
		return returnjob;
	}
	function addemail(){
		document.getElementById("footer").style.display="none";
		var returnjob = "<table width='100%'>";
		for(var i in emadilstatus){
		returnjob = returnjob + "<tr>"
									+"<td>"
										+"<div style='width:100%;border-top:1px #CCCCCC solid;border-bottom:1px #CCCCCC solid;padding:20px 0px;'>"
											+"<table width='100%'>"
												+"<tr>"
													+"<td>"
														+"邮件通知"
													+"</td>"
													+"<td rowspan='2'>"
														+"<table>"
															+"<tr>"
																+"<td>"
																	+"<div class='"+emadilstatus[i].statusValue+"' onclick='open123(this)' id='"+emadilstatus[i].id+"'>"
																		+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
																	+"</div>"
																+"</td>"
																+"<td style='padding-left:10px;'>"
																	+"<font id='tongzhi_"+emadilstatus[i].id+"'  style='font-size:14px;' color='#CCCCCC'>"+emadilstatus[i].statustext+"</font>"
																+"</td>"
															+"</tr>"
														+"</table>"
													+"</td>"
												+"</tr>"
												+"<tr>"
													+"<td>"
														+"<font style='font-size:14px;' color='#CCCCCC'>"
															+"每当候选人响应了您的面试邀请或者给您发送消息，会给"+emadilstatus[i].email+"发送邮件进行通知"
														+"</font>"
													+"</td>"
												+"</tr>"
											+"</table>"
										+"</div>"
									+"</td>"
								+"</tr>";
		}
		returnjob = returnjob +"</table>";
		return returnjob;
	}
	function selectjob(selectedfirm){
		$(".circleA").each(function () {
			this.setAttribute("class", "circleB");
        });
		selectedfirm.setAttribute("class", "circleA");
		document.getElementById('selectjobId').value = selectedfirm.id;
	}
	function open123(obj){
		if(obj.getAttribute('class') == "icheckbox_square-green checked"){
			obj.setAttribute("class","icheckbox_square-green hover");
			document.getElementById('tongzhi_'+obj.getAttribute('id')).innerHTML = "未开启";
			var url = "user/updateOfferInviteEmail.do";
			var data = ajaxSumbitNoform(url, obj.getAttribute('id')+","+"0");
			if(data == "success"){
// 				alert("修改成功");
				init();
			}else{
				alert("保存出错！");
			}
		}
		else if(obj.getAttribute('class') == "icheckbox_square-green hover"){
			obj.setAttribute("class","icheckbox_square-green checked");
			document.getElementById('tongzhi_'+obj.getAttribute('id')).innerHTML = "开启";
			var url = "user/updateOfferInviteEmail.do";
			var data = ajaxSumbitNoform(url, obj.getAttribute('id')+","+"1");
			if(data == "success"){
// 				alert("修改成功");
				init();
			}else{
				alert("保存出错！");
			}
		}
	}
	function checkChangePswValue() {
		if(!checkpsw('oldPassword',"当前密码","4","16",false)) return false;
		if(!checkpsw('newPassword',"新密码","4","16",false)) return false;
		if(!checkpsw('comfirmpsw',"重复密码","4","16",false)) return false;
		/* if(!checkInput('oldPassword',"旧密码","16",false)) return false;
		if(!checkInput('newPassword',"新密码","16",false)) return false;
		if(!checkInput('comfirmpsw',"重复密码","16",false)) return false; */
		return true;
	}
	function saveModal(){
		if(document.getElementById("myModalLabel").innerText == "请选择您的职位"){
			var url = "user/updateOfferUserJobId.do";
			var data = ajaxSumbitNoform(url, document.getElementById('selectjobId').value);
			if(data == "success"){
				alert("修改成功");
				window.location.reload();
				//init();
			}else{
				alert("保存出错！");
			}
		}
		else if(document.getElementById("myModalLabel").innerText == "修改密码"){
			if (!checkChangePswValue()) return;
			/* var oldPassword = document.getElementById('oldPassword').value;
			var newPassword = document.getElementById('newPassword').value;
			var comfirmpsw = document.getElementById('comfirmpsw').value;
			if (newPassword.length < 4 || newPassword.length > 16) {
				alert("输入的新密码应该在4-16位之间");
				return;
			}
			if (newPassword != comfirmpsw) {
				alert("输入的新密码和重复密码不一致！");
				return;
			} */
			var url = "user/updateOfferUserPassword.do";
			var formId = "savemyModalFROM";
			var data = ajaxSumbit(url, formId);
			if(data == "success"){
				alert("修改成功");
				window.location.reload();
			}else if(data == "error"){
				alert("保存出错！");
			}
			else {
				alert(data);
			}
		}
		else if(document.getElementById("myModalLabel").innerText == "解绑手机"){
			alert(3);
		}
		else{
			alert("保存出错！");
		}
	}
	
	function submitName(){
		if(!checkInput('editName',"新名字","30",false)) return;
		var url = "user/savepersonalSettingsEditName.do";
		var formId = "personalSettingsEditForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			alert("修改成功");
			window.location.reload();
			/* disedit('2');
			init(); */
		}else{
			alert("保存出错！");
		}
	}
	
	function msg(){
		if(phoneCode != document.getElementById("msgCode").value) {
			alert("手机验证码错误");
			return false;
		}
	}
	function init(){
		var url = "user/personalSettingsEdit.do";
		var data = ajaxSumbitNoform(url, "123");
		document.getElementById('name').innerHTML = data.username;
		document.getElementById('editName').value = data.name;
		document.getElementById('jobName').innerHTML =data.JobName ;
		document.getElementById('phone').innerHTML = data.phone;
		document.getElementById("offer_user_phone").value = data.phone;
		document.getElementById('creatTime').innerHTML = "注册时间："+data.CreatTime;
		document.getElementById('userName').innerText = data.userName;
		document.getElementById('touxiang').src = data.touxiang;
		nowJobList = data.nowJobList;
		emadilstatus = data.emadilstatus;
	}
	function getmsg(){
		phoneCode = Math.floor(Math.random()*9000)+1000;
		var phone = document.getElementById("offer_user_phone").value;
		var url = "register/getmsg1.do?code="+phoneCode;
		if(phone == ""){
			alert("请输入手机号码!")
			return;
		}
		ajaxSumbitNoform(url,phone);
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
<form id="personalSettingsEditForm">
	<input type="hidden" id="offer_user_phone" name="offer_user_phone"/>
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:13%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='finduser.jsp'">
				    	<font style="font-size:14px;" color="#F5F8F9">候选人</font>
				    </button>
				    <button type="button" style="height:60px !important;color:#F5F8F9;background-color:#32373C;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onclick="javascript:top.location.href='user_view.jsp'">
				    	<font style="font-size:14px;" color="#F5F8F9">已发邀请</font>
				    </button>
			    </td>
			    <td width="5%"/>
			    <td style="width:19%;padding-right:10%">
				    <div class="btn-group">
						<button type="button" style="height:60px !important;color:#FFF;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" ><span id="userName"></span>
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
	</div>
	<div style="width:100%;height:83px;"></div>
	<table width="100%" style="min-width:1000px;">
		<tr>
			<td width="19%" rowspan="10"/>
			<td rowspan="2" width="13%" valign="top" style="min-width:180px;">
				<table width="100%" style="background:#FFF">
					<tr><td class="textC" style="background:#00B38A;color:#FFF;cursor:pointer;padding-top:15px;padding-bottom:15px;border-bottom:1px #CCCCCC solid;" onclick="javascript:top.location.href='personal_settings_edit.jsp'"><font style='font-size:14px;'>账号信息</font></td></tr>
					<tr><td class="textC" style="color:#4F4F4F;cursor:pointer;padding-top:15px;padding-bottom:15px;border-bottom:1px #CCCCCC solid;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" onclick="javascript:top.location.href='team_member.jsp'"><font style='font-size:14px;'>团队成员</font></td></tr>
					<tr><td class="textC" style="color:#4F4F4F;cursor:pointer;padding-top:15px;padding-bottom:15px;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" onclick="javascript:top.location.href='personal_questionnaire.jsp'"><font style='font-size:14px;'>需求问卷</font></td></tr>
				</table>
			</td>
			<td width="30px" rowspan="2" style="border-right:2px #0dad87 solid;" valign="top">
				<table width="100%">
					<tr><td class="textR" style="padding-top:15px;padding-bottom:15px;"><div class="triangle-left" style="float:right"></div></td></tr>
					<tr><td class="textR" style="padding-top:15px;padding-bottom:15px;"></td></tr>
					<tr><td class="textR" style="padding-top:15px;padding-bottom:15px;"></td></tr>
				</table>
			</td>
			<td class="textL" width="46%">
				<div style="background: #FFFFFF; width: 100%;padding-top:30px;padding-left:40px;">
					<table width="100%">
						<tr>
							<td width="100px" style="padding-top:10px;padding-bottom:10px;" class="textL" rowspan="2">
								<img id="touxiang" src="" width="100px" height="100px"/>
							</td>
							<td valign="bottom" style="width:120px;padding:10px;" ><font id="name" style='font-size:20px;color:#4F4F4F;'></font></td>
							<td valign="bottom">
								<table id="edit" style="display:none;">
									<tr>
										<td style="padding:0px 10px;"><input id="editName" type="text" id="editName" name="editName" class="form-control" style="width:200px;"></td>
										<td style="padding:0px 10px;">
											<button type="button" class="btn btn-primary" data-toggle="button"
											style="background-color: #00B38A; border-color: #00B38A;" onclick="submitName()">
											保存</button>
										</td>
										<td style="padding:0px 10px;">
											<a onclick="disedit('2')" href="#"><font style='font-size:14px;' color="#00B38A">取消</font></a>
										</td>
									</tr>
								</table>
								<a onclick="disedit('1')" href="#" id="edita"><font style='font-size:14px;'color="#00B38A">编辑</font></a>
							</td>
							<td width="120px"/>
						</tr>
						<tr>
							<td colspan="2"><font id="creatTime" color="#9A9A9A" style='font-size:14px;'></font></td>
						</tr>
						<tr height="20px"/>
						<tr>
							<td style="height:1px;background:#CCCCCC;" colspan="3"></td>
						</tr>
					</table>
				</div>
			</td>
			<td/>
		</tr>
		<tr>
			<td>
				<div style="background: #FFFFFF; width: 100%;padding-top:30px;padding-left:40px;">
					<table width="100%">
						<tr height="40px">
							<td width="116px">
								<font style="background:#F5F8F9;padding:5px 20px;width:100px;font-size:14px;color:#4F4F4F">
								&nbsp;&nbsp;&nbsp;&nbsp;职位&nbsp;&nbsp;&nbsp;&nbsp;
								</font>
							</td>
							<td style="width:500px;">
								<font id="jobName" style='font-size:14px;color:#4F4F4F;'></font>&nbsp;&nbsp;&nbsp;
								<a href="#" onclick="openWindow('job')"><font style='font-size:14px;' color="#00B38A">修改职位</font></a>
							</td>
							<td/>
						</tr>
						<tr height="40px">
							<td width="116px">
								<font style="background:#F5F8F9;padding:5px 20px;width:100px;font-size:14px;color:#4F4F4F;">
								&nbsp;&nbsp;&nbsp;&nbsp;密码&nbsp;&nbsp;&nbsp;&nbsp;
								</font>
							</td>
							<td style="width:500px;">
								<a href="#" onclick="openWindow('password')"><font style='font-size:14px;' color="#00B38A">修改密码</font></a>
							</td>
							<td/>
						</tr>
						<tr height="40px">
							<td width="116px">
								<font style="background:#F5F8F9;padding:5px 20px;width:100px;font-size:14px;color:#4F4F4F;">
									&nbsp;&nbsp;&nbsp;&nbsp;手机&nbsp;&nbsp;&nbsp;&nbsp;
								</font>
							</td>
							<td style="width:500px;">
								<font id="phone" style='font-size:14px;color:#4F4F4F;'></font>&nbsp;&nbsp;&nbsp;
								<a href="#" onclick="openWindow('phone')"><font style='font-size:14px;' color="#00B38A">解绑手机</font></a>
							</td>
							<td/>
						</tr>
						<tr height="40px">
							<td width="116px">
								<font style="background:#F5F8F9;padding:5px 20px;width:100px;font-size:14px;color:#4F4F4F;">通知信息</font>
							</td>
							<td style="width:500px;">
								<font style='font-size:14px;color:#4F4F4F;'>已开启&nbsp;邮件通知&nbsp;邮件订阅</font>&nbsp;&nbsp;&nbsp;
								<a href="#" onclick="openWindow('email')"><font style='font-size:14px;' color="#00B38A">编辑</font></a>
							</td>
							<td/>
						</tr>
						<tr height="100px"/>
					</table>
				</div>
			</td>
		</tr>
	</table>
	</form>
	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display:none;" id="wins">开始演示模态框</button>
	<form id="savemyModalFROM">
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="overflow-y:hidden;margin-top:100px;">
	    <input type='hidden' name='selectjobId1' id='selectjobId'/>
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title textC" id="myModalLabel"></h4>
	            </div>
	            <div class="modal-body" id="winbody" style="overflow-y:auto;min-height:200px;max-height:300px;border-bottom:none;">
	            </div>
	            <div class="modal-footer" style="border-top:none;" id="footer">
	            	<center>
	            		<button type='button' class='btn btn-default' data-dismiss='' style="background:#00B389;color:#FFF;width:350px;" onclick="saveModal()">确定</button><!-- modal -->
	            	</center>
	            </div>
	        </div>
	    </div>
	</div>
	</form>
</body>
</html>