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
	//头部
	function changeColor1(der){
		der.style.background="#999999";
	}
	function changeColor2(der){
		der.style.background="#000";
	}
	function init() {
		var url = "user/resumeAddWorkexperiencePage1.do?id=1";
		var data = ajaxSumbitNoform(url,"123");
		dataName = data.dataName;
		$("#resumeAddWorkexperienceForm1").populateForm(data);
		$("#resumeAddWorkexperienceForm2").populateForm(data);
	}
	function resetOne(ispass){
		if(ispass){
			if(confirm("要保存数据吗？")){
				var url = "user/saveresumeAddWorkexperience1.do";
				var formId = "resumeAddWorkexperienceForm1";
				var data = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("offerUserWorksId").value = "";
		document.getElementById("reset1").click();
	}
	function resetTwo(ispass){
		if(ispass){
			if(confirm("要保存数据吗？")){
				var url = "user/saveresumeAddWorkexperience2.do";
				var formId = "resumeAddWorkexperienceForm2";
				var data = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("offerUserEducationId").value = "";
		document.getElementById("reset2").click();
	}
	function goSumbit(){
		if(!checkValue()){
			return;
		}
		var url = "user/saveresumeAddWorkexperience1.do";
		var formId = "resumeAddWorkexperienceForm1";
		var data1 = ajaxSumbit(url, formId);
		var url = "user/saveresumeAddWorkexperience2.do";
		var formId = "resumeAddWorkexperienceForm2";
		var data2 = ajaxSumbit(url, formId);
		if(data2 == 'success'){
			top.location.href='resume_add_questionnaire.jsp';
		}else{
			alert(data2);
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
		if(!checkInput('firmName',"公司名称","30",true)) return false;
		if(!checkInput('jobName',"职位名称","30",true)) return false;
		if(!checkInput('jobstart',"开始","30",true)) return false;
		return true;
	}
</script>
<body bgcolor="#F4F9F9" onload="init()">
	<div style="width:100%;height:55px;background: #000;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="270px" style="padding-left:150px;"><img src="../img/U-Offerlogo.png"></td>
				<td class="textC">
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('interview.jsp')">
				    	<font size="3">面试邀请</font>
				    </button>
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('resume_edit.jsp')">
				    	<font size="3">我的简历</font>
				    </button>
			    </td>
			    <td class="textC" width="270px">
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('personal_settings.jsp')">个人设置
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
	<center>
		<div style="width:600px;">
			<table width="100%">
				<tr>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:25%;">
						<table>
							<tr>
								<td><div class="circleB"></div></td>
								<td><font color="#999999">&nbsp;&nbsp;基本信息 </font></td>
							</tr>
						</table>
					</td>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:25%;">
						<table>
							<tr>
								<td><div class="circleB"></div></td>
								<td><font color="#999999">&nbsp;&nbsp;期望工作 </font></td>
							</tr>
						</table>
					</td>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:25%;">
						<table>
							<tr>
								<td><div class="circleA"></div></td>
								<td><font color="#00B38A">&nbsp;&nbsp;个人经历 </font></td>
							</tr>
						</table>
					</td>
					<td class="textC" style="padding-left:10px;padding-top:10px;padding-bottom:10px;width:25%;">
						<table>
							<tr>
								<td><div class="circleB"></div></td>
								<td><font color="#999999">&nbsp;&nbsp;调查问卷 </font></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div style="background: #FFFFFF; width: 600px;padding-top:20px;padding-bottom:20px;">
			<center><font size="3" color="#666666">您在哪里工作和学习过？</font></center>
		</div>
		<div style="height: 2px; width: 600px; background-color: #999999;"></div>
		<div style="background: #FFFFFF; width: 600px;">
			<br />
			<form id="resumeAddWorkexperienceForm1">
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:30px;">
				<tr>
					<th class="textL">
						<font size="1" color="#666666">工作经历*</font>
					</th>
					<td class="textR" style="padding-right:30px;">
						<a href="#" onclick="resetOne(true)"><font size="1" color="#00B389">新增</font></a>
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font size="1" color="#666666">公司名称</font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="text" name="firmName" id="firmName" class="form-control" style="width: 75% !important">
						<input id="offerUserWorksId" type="hidden" name="offerUserWorksId"/>
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font size="1" color="#666666">职位名称</font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="text" name="jobName" id="jobName" class="form-control" style="width: 75% !important">
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font size="1" color="#666666">在职时间</font>
					</td>
				</tr>
				<tr>
					<td class="textL" width="50%">
						<table width="100%">
							<tr>
								<td class="textR">
									<font size="1" color="#666666">开始</font>
								</td>
								<td class="textL">
									<input type="text" name="jobstart" id="jobstart" class="form-control" style="width: 75% !important;">
								</td>
							</tr>
						</table>
					</td>
					<td class="textL" width="50%">
						<table width="100%">
							<tr>
								<td class="textR">
									<font size="1" color="#666666">结束</font>
								</td>
								<td class="textL">
									<input type="text" name="jobend" class="form-control" style="width: 75% !important;">
								</td>
								<td class="textL">
									<input type="checkbox" name="toNow1"/><font size="1">至今</font>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font size="1" color="#666666">工作内容</font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="8" style="width:90%;" name="workcontent"></textarea>
					</td>
				</tr>
				<tr>
					<td/>
					<td class="textR">
						<input type="reset" name="reset1" id="reset1" style="display: none;" />
						<button type="button" class="btn btn-primary" onclick="resetOne(false)" data-toggle="button"
							style="background-color: #999999 !important; border-color: #999999 !important; width: 100px;">
							取消</button>
						<button type="button" class="btn btn-primary" onclick="resetOne(true)" data-toggle="button"
										style="background-color: #00B38A !important; border-color: #00B38A !important; width: 100px;">
										保存</button>
					</td>
				</tr>
			</table>
			</form>
			<form id="resumeAddWorkexperienceForm2">
			<table style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:30px;">
				<tr height="20px"/>
				<tr>
					<th class="textL">
						<font size="1" color="#666666">教育经历*</font>
						<input id="offerUserEducationId" type="hidden" name="offerUserEducationId"/>
					</th>
					<td class="textR" style="padding-right:30px;">
						<a href="#" onclick="resetTwo(true)"><font size="1" color="#00B389">新增</font></a>
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font size="1" color="#666666">学校名称</font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="text" name="schoolName" class="form-control" style="width: 75% !important">
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font size="1" color="#666666">学历</font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="text" name="xueli" class="form-control" style="width: 75% !important">
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font size="1" color="#666666">就读时间</font>
					</td>
				</tr>
				<tr>
					<td class="textL" width="50%">
						<table width="100%">
							<tr>
								<td class="textR">
									<font size="1" color="#666666">开始</font>
								</td>
								<td class="textL">
									<input type="text" name="studstart" class="form-control" style="width: 75% !important;">
								</td>
							</tr>
						</table>
					</td>
					<td class="textL" width="50%">
						<table width="100%">
							<tr>
								<td class="textR">
									<font size="1" color="#666666">结束</font>
								</td>
								<td class="textL">
									<input type="text" name="studend" class="form-control" style="width: 75% !important;">
								</td>
								<td class="textL">
									<input type="checkbox" name="toNow2"/><font size="1">至今</font>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="textL" colspan="2">
						<font size="1" color="#666666">专业</font>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="text" name="zhuanye" class="form-control" style="width: 75% !important">
					</td>
				</tr>
				<tr>
					<td/>
					<td class="textR">
						<input type="reset" name="reset2" id="reset2" style="display: none;" />
						<button type="button" class="btn btn-primary" onclick="resetTwo(false)" data-toggle="button"
							style="background-color: #999999 !important; border-color: #999999 !important; width: 100px;">
							取消</button>
						<button type="button" class="btn btn-primary" onclick="resetTwo(true)" data-toggle="button"
										style="background-color: #00B38A !important; border-color: #00B38A !important; width: 100px;">
										保存</button>
					</td>
				</tr>
				<tr height="20px"/>
				<tr>
					<td colspan="2" class="textC">
						<button type="button" class="btn btn-primary" onclick="validateCode()" data-toggle="button"
							style="color: #00B38A !important;background-color: #FFF !important; border-color: #00B38A !important; width: 300px;">
							上传简历，自动解析</button>
					</td>
				</tr>
			</table>
			</form>
			<br />
			<br />
		</div>
		<div style="height: 2px; width: 600px; background-color: #999999;"></div>
		<div style="width: 600px; background-color: #FFF;">
			<table>
				<tr>
					<td style="padding-top:40px;padding-bottom:40px;" class="textC">
						<button type="button" class="btn btn-primary" onclick="javascript:top.location.href='resume_add_planjob.jsp'" data-toggle="button"
							style="color: #000 !important;background-color: #999999 !important; border-color: #999999 !important; width: 200px;">
							上一步</button>
						<button type="button" class="btn btn-primary" onclick="goSumbit()" data-toggle="button"
							style="color: #FFF !important;background-color: #00B38A !important; border-color: #00B38A !important; width: 200px;">
							下一步</button>
					</td>
				</tr>
			</table>
		</div>
	</center>
	<br/>
	<br/>
</body>
</html>
