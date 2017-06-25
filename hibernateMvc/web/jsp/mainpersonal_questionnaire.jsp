<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
	.gray{
		border:1px #CCCCCC solid;
		height:47px;
		min-width:100px;
	}
</style>
</head>
<script language="javascript">
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
	function addCheckJob(items){
		var jobs = "<table width='100%'><tr>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
		+"</tr>";
		var j = 1;
		for(var i in items){
			if(j == 1){
				jobs = jobs + "<tr>";
			}
			jobs = jobs + "<td class='textR' style='padding-top:10px;padding-bottom:10px;width:5%;'>"
							+"<div class='icheckbox_square-green hover' onclick='jobId(this)' id='"+items[i].id+"'>"
								+"<input type='hidden' name='CheckJob' value='CheckJob'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL' width='20%'><font style='font-size:14px;color:#4F4F4F;'>&nbsp;&nbsp;"+items[i].value+"</font></td>";
			if(j == 4){
				jobs = jobs + "</tr>";
				j = 1;
			}else{
				j = j+1;
			}
		}
		jobs = jobs + "</table>";
		document.getElementById('checkJob').innerHTML=jobs;
	}
	function addCheckJob1(items){
		var jobs = "<table width='100%'><tr>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
		+"</tr>";
		var j = 1;
		for(var i in items){
			if(j == 1){
				jobs = jobs + "<tr>";
			}
			jobs = jobs + "<td class='textR' style='padding-top:10px;padding-bottom:10px;width:5%;'>"
							+"<div class='icheckbox_square-green hover' onclick='jobId(this)' id='"+items[i].id+"'>"
								+"<input type='hidden' name='CheckJob1' value='CheckJob1'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL' width='20%'><font style='font-size:14px;color:#4F4F4F;'>&nbsp;&nbsp;"+items[i].value+"</font></td>";
			if(j == 4){
				jobs = jobs + "</tr>";
				j = 1;
			}else{
				j = j+1;
			}
		}
		jobs = jobs + "</table>";
		document.getElementById('checkJob1').innerHTML=jobs;
	}
	function addCheckJob2(items){
		var jobs = "<table width='100%'><tr>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
		+"</tr>";
		var j = 1;
		for(var i in items){
			if(j == 1){
				jobs = jobs + "<tr>";
			}
			jobs = jobs + "<td class='textR' style='padding-top:10px;padding-bottom:10px;width:5%;'>"
							+"<div class='icheckbox_square-green hover' onclick='jobId(this)' id='"+items[i].id+"'>"
								+"<input type='hidden' name='CheckJob2' value='CheckJob2'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL' width='20%'><font style='font-size:14px;color:#4F4F4F;'>&nbsp;&nbsp;"+items[i].value+"</font></td>";
			if(j == 4){
				jobs = jobs + "</tr>";
				j = 1;
			}else{
				j = j+1;
			}
		}
		jobs = jobs + "</table>";
		document.getElementById('checkJob2').innerHTML=jobs;
	}
	function addcity(items){
		var jobs = "<table width='100%'><tr>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
			+"<td width='5%'/><td width='20%'/>"
		+"</tr>";
		var j = 1;
		for(var i in items){
			if(j == 1){
				jobs = jobs + "<tr>";
			}
			jobs = jobs + "<td class='textR' style='padding-top:10px;padding-bottom:10px;width:5%;'>"
							+"<div class='icheckbox_square-green hover' onclick='jobId(this)' id='"+items[i].id+"'>"
								+"<input type='hidden' name='city' value='city'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL' width='20%'><font style='font-size:14px;color:#4F4F4F;'>&nbsp;&nbsp;"+items[i].cityName+"</font></td>";
			if(j == 4){
				jobs = jobs + "</tr>";
				j = 1;
			}else{
				j = j+1;
			}
		}
		jobs = jobs + "</table>";
		document.getElementById('citys').innerHTML=jobs;
	}
	function addworktime(items){
		var jobs = "<table width='100%'><tr>"
											+"<td width='5%'/><td width='20%'/>"
											+"<td width='5%'/><td width='20%'/>"
											+"<td width='5%'/><td width='20%'/>"
											+"<td width='5%'/><td width='20%'/>"
										+"</tr>";
		var j = 1;
		for(var i in items){
			if(j == 1){
				jobs = jobs + "<tr>";
			}
			jobs = jobs + "<td class='textR' style='padding-top:10px;padding-bottom:10px;;'>"
							+"<div class='icheckbox_square-green hover' onclick='jobId(this)' id='"+items[i].value+"'>"
								+"<input type='hidden' name='worktime' value='worktime'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL'><font style='font-size:14px;color:#4F4F4F;'>&nbsp;&nbsp;"+items[i].value+"</font></td>";
			if(j == 4){
				jobs = jobs + "</tr>";
				j = 1;
			}else{
				j = j+1;
			}
		}
		jobs = jobs + "</table>";
		document.getElementById('worktime').innerHTML=jobs;
	}
	function jobId(obj){
		if(obj.getAttribute('class') == "icheckbox_square-green checked"){
			obj.setAttribute("class","icheckbox_square-green hover");
		}
		else if(obj.getAttribute('class') == "icheckbox_square-green hover"){
			obj.setAttribute("class","icheckbox_square-green checked");
		}
	}
	function savefirmSelect(){
		var CheckJobId = "";
		var CheckJobId1 = "";
		var CheckJobId2 = "";
		var cityId = "";
		var worktimeId = "";
		var CheckJobIdNum = 0;
		var CheckJobId1Num = 0;
		var CheckJobId2Num = 0;
		var cityIdNum = 0;
		var worktimeIdNum = 0;
		$(".checked").each(function () {
			var id = this.getElementsByTagName("input")[0].value;
			if(id=="worktime"){
				if(worktimeId != ""){
					worktimeId = worktimeId + ",";
				}
				worktimeId = worktimeId + this.id;
				worktimeIdNum = worktimeIdNum + 1;
			}
			if(id=="city"){
				if(cityId != ""){
					cityId = cityId + ",";
				}
				cityId = cityId + this.id;
				cityIdNum = cityIdNum + 1;
			}
			if(id=="CheckJob2"){
				if(CheckJobId2 != ""){
					CheckJobId2 = CheckJobId2 + ",";
				}
				CheckJobId2 = CheckJobId2 + this.id;
				CheckJobId2Num = CheckJobId2Num + 1;
			}
			if(id=="CheckJob1"){
				if(CheckJobId1 != ""){
					CheckJobId1 = CheckJobId1 + ",";
				}
				CheckJobId1 = CheckJobId1 + this.id;
				CheckJobId1Num = CheckJobId1Num + 1;
			}
			if(id=="CheckJob"){
				if(CheckJobId != ""){
					CheckJobId = CheckJobId + ",";
				}
				CheckJobId = CheckJobId + this.id;
				CheckJobIdNum = CheckJobIdNum + 1;
			}
	    });
		if(CheckJobIdNum > 5){
			alert("技术类岗位（最多选5项）");
			return;
		}
		if(CheckJobId1Num > 2){
			alert("产品类岗位（最多选2项）");
			return;
		}
		if(CheckJobId2Num > 2){
			alert("设计类岗位（最多选2项）");
			return;
		}
		if(cityIdNum > 3){
			alert("职位工作地点（最多选3项）");
			return;
		}
		if(worktimeIdNum > 1){
			alert("对候选人工作经验要求（最多选1项）");
			return;
		}
		document.getElementById("cityIds").value = cityId;
		document.getElementById("worktimeIds").value = worktimeId;
		document.getElementById("CheckJobIds").value = CheckJobId;
		document.getElementById("CheckJobId1s").value = CheckJobId1;
		document.getElementById("CheckJobIds2").value = CheckJobId2;
	//		if(!checkValue()){
	//			return;
	//		}
		var url = "user/saveofferSelect.do";
		var formId = "examinefirmForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			alert("保存成功！");
			window.location.reload();
		}
		else if(data == "error"){
			alert("保存出错！");
		}
		else {
			alert(data);
		}
	}
	
	function initfirmSelect(items){
		var CheckJobId = "";
		var CheckJobId1 = "";
		var CheckJobId2 = "";
		var cityId = "";
		var worktimeId = "";
		$(".hover").each(function () {
			var id = this.getElementsByTagName("input")[0].value;
			if(id=="worktime"){
				var strs= new Array();
				strs = items[0].YearId.split(",");
				for(var i in strs){
					if(this.id == strs[i]){
						jobId(this);
					}
				}
			}
			if(id=="city"){
				var strs= new Array();
				strs = items[0].getCityId.split(",");
				for(var i in strs){
					if(this.id == strs[i]){
						jobId(this);
					}
				}
			}
			if(id=="CheckJob2"){
				/* if(CheckJobId2 != ""){
					CheckJobId2 = CheckJobId2 + ",";
				}
				CheckJobId2 = CheckJobId2 + this.id; */
				var strs= new Array();
				strs = items[0].getJobId.split(",");
				for(var i in strs){
					if(this.id == strs[i]){
						jobId(this);
					}
				}
			}
			if(id=="CheckJob1"){
				var strs= new Array();
				strs = items[0].getJobId.split(",");
				for(var i in strs){
					if(this.id == strs[i]){
						jobId(this);
					}
				}
			}
			if(id=="CheckJob"){
				var strs= new Array();
				strs = items[0].getJobId.split(",");
				for(var i in strs){
					if(this.id == strs[i]){
						jobId(this);
					}
				}
			}
	    });
	}
	
	function init() {
		var url = "user/personalQuestionnaire.do";
		var formId = "examinefirmForm";
		var data = ajaxSumbit(url, formId);
		dataName = data.dataName;
		addCheckJob(data.nowJobList);
		addCheckJob1(data.changOfferJobs);
		addCheckJob2(data.nowJobList2);
		addcity(data.cityList);
		addworktime(data.worktimeList);
		initfirmSelect(data.offerFirmSelectList);
		document.getElementById('userName').innerText = data.userName;
		if(data.offerUserName != undefined){
			editCheckJob(data.jobId1,data.jobId2, data.jobvalue1, data.jobvalue2);
			setSexValue(data.offerUserSex);
		}
		$("#userInformationForm").populateForm(data);
	}
	function booleanInfot(url){
		top.location.href=url;
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
	<form id="examinefirmForm">
	<input type="hidden" name="cityIds" id="cityIds"/>
	<input type="hidden" name="worktimeIds" id="worktimeIds"/>
	<input type="hidden" name="CheckJobIds" id="CheckJobIds"/>
	<input type="hidden" name="CheckJobId1s" id="CheckJobId1s"/>
	<input type="hidden" name="CheckJobIds2" id="CheckJobIds2"/>
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
	<br />
	<br />
	<br />
	<br />
	<table width="100%" style="min-width:1000px;">
		<tr>
			<td width="19%" rowspan="10"/>
			<td rowspan="2" width="13%" valign="top" style="min-width:180px;">
				<table width="100%" style="background:#FFF">
					<tr><td class="textC" style="color:#4F4F4F;cursor:pointer;padding-top:15px;padding-bottom:15px;border-bottom:1px #CCCCCC solid;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" onclick="javascript:top.location.href='personal_settings_edit.jsp'"><font style='font-size:14px;'>账号信息</font></td></tr>
					<tr><td class="textC" style="color:#4F4F4F;cursor:pointer;padding-top:15px;padding-bottom:15px;border-bottom:1px #CCCCCC solid;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" onclick="javascript:top.location.href='team_member.jsp'"><font style='font-size:14px;'>团队成员</font></td></tr>
					<tr><td class="textC" style="background:#00B38A;color:#FFF;cursor:pointer;padding-top:15px;padding-bottom:15px;" onclick="javascript:top.location.href='personal_questionnaire.jsp'"><font style='font-size:14px;'>需求问卷</font></td></tr>
				</table>
			</td>
			<td width="30px" rowspan="10" style="border-right:2px #0dad87 solid;" valign="top">
				<table width="100%">
					<tr height="49px"><td class="textR" style="padding-top:15px;padding-bottom:15px;"></td></tr>
					<tr height="49px"><td class="textR" style="padding-top:15px;padding-bottom:15px;"></td></tr>
					<tr height="49px"><td class="textR" style="padding-top:15px;padding-bottom:15px;"><div class="triangle-left" style="float:right"></div></td></tr>
				</table>
			</td>
			<td class="textL" width="46%">
				<div style="background: #FFFFFF; width: 100%;min-height:300px;">
					<table style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:30px;">
						<tr height="58px"/>
						<tr>
							<td class="textC"><font color="#4F4F4F" style="font-size:16px;">企业每周可以重新设置1次招聘需求，我们每期都将为你推荐适合的候选人</font></td>
						</tr>
						<tr height="58px"/>
						<tr>
							<th><font color="#4F4F4F" style="font-size:16px;">1.招聘岗位的需求</font></th>
						</tr>
						<tr height="20px"/>
						<tr>
							<td style="padding-left:20px;">
								<font color="#4F4F4F" style="font-size:14px;">技术类岗位（最多选5项）</font>
							</td>
						</tr>
						<tr>
							<td style="paddding:0px 20px;" id="checkJob">
							</td>
						</tr>
						<tr height="58px"/>
						<tr>
							<td style="padding-left:20px;">
								<font color="#4F4F4F" style="font-size:14px;">产品类岗位（最多选2项）</font>
							</td>
						</tr>
						<tr>
							<td style="paddding:0px 20px;" id="checkJob1">

							</td>
						</tr>
						<tr height="58px"/>
						<tr>
							<td style="padding-left:20px;">
								<font color="#4F4F4F" style="font-size:14px;">设计类岗位（最多选2项）</font>
							</td>
						</tr>
						<tr>
							<td style="paddding:0px 20px;" id="checkJob2">

							</td>
						</tr>
					</table>
					<table style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:30px;">
								<tr>
									<th><font color="#4F4F4F" style="font-size:16px;">2.职位工作地点（最多选3项）</font></th>
								</tr>
								<tr>
									<td style="paddding:0px 20px;" id="citys">
										
									</td>
								</tr>
								<tr height="20px"/>
					</table>
					<div style="height:2px;width:100%;background:#CCCCCC;"></div>
							<table style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:30px;">
								<tr>
									<th><font color="#4F4F4F" style="font-size:16px;">3、对候选人工作经验要求</font></th>
								</tr>
								<tr>
									<td style="paddding:0px 20px;" id="worktime">

									</td>
								</tr>
								<tr height="50px"/>
							</table>
					<table width="100%">
						<tr>
							<td class="textC">
								<button type="button" class="btn btn-primary" data-toggle="button" onclick="savefirmSelect()"
								style="background-color: #00B38A; border-color: #00B38A; width: 240px">
								保存</button>
							</td>
						</tr>
						<tr height="100px"/>
					</table>
				</div>
			</td>
			<td/>
		</tr>
	</table>
	</form>
	<div style="width:100%;height:261px;"></div>
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