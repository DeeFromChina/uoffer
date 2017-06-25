<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
.smailfont{
	font-size:1px;
}
.fontcol{
	padding-left: 20px;
	color:#666666;
}
</style>
</head>
<script language="javascript">
	function changeColor1(der){
		der.style.background="#999999";
	}
	function changeColor2(der){
		der.style.background="#000";
	}
	function init() {
		if(isResetLogin()) {
			alert("登陆超时!");
			top.location.href='login.jsp';
		}
		else{
			var url = "firm/examinefirmPage1.do";
			var formId = "firmForm";
			var data = ajaxSumbit(url, formId);
			addLi(data.firmStageList,"Stage");
			addLi(data.cityList,"City");
			//addLi(data.xuqiuList,"xuqiu");
			$("#firmForm").populateForm(data);
		}
	}
	function addLi(items,liId){
		var inn = "";
		for(var i in items){
			inn = inn + "<li role='presentation'>"
				+"<a role='menuitem' onclick='selectDownValue(" + items[i].id +",\"" + items[i].value +"\",\""+liId+"\")'><font color='#000'>" + items[i].value
				+"</font></a></li>";
		}
		document.getElementById(liId).innerHTML=inn;
		var ti1 = "firm" + liId;
		var ti2 = "firm" + liId + "Value";
	}
	function selectDownValue(ke, val, targetInput){
		var ti1 = "firm" + targetInput;
		var ti2 = "firm" + targetInput + "Value";
		document.getElementById(ti1).value=ke;
		document.getElementById(ti2).value=val;
	}
	function goSubmit(){
		var url = "firm/saveexaminefirm1.do";
		var formId = "firmForm";
		var data = ajaxSumbit(url, formId);
		if(data == 'success'){
			top.location.href='examine_firm_dai.jsp';
		}
	}
</script>
<body bgcolor="#FFFFFF" onload="init()">
	<form id="firmForm">
	<div style="width:100%;height:55px;background: #000;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="270px" style="padding-left:150px;"><img src="../img/U-Offerlogo.png"></td>
				<td class="textC">
					<div class="btn-group">
						<button type="button" style="height:55px !important;color:#FFF;background-color:#000;"
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
						<button type="button" style="height:55px !important;color:#FFF;background-color:#000;"
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
					<button type="button" style="height:55px !important;color:#FFF;background-color:#000;padding:0px 20px;"
					 class="btn dropdown-toggle" onmouseover="changeColor1(this)"
					 onmouseout="changeColor2(this)" onclick="javascript:top.location.href='check_email.jsp'">推荐
				    </button>
			    </td>
			    <td class="textC" width="270px">
				    <button type="button" class="btn btn-default" style="color:#FFF;background:#00B389;" onclick="javascript:top.location.href='login.jsp'">登录</button>
				    <button id="regit" type="button" class="btn btn-default" onclick="javascript:top.location.href='register.jsp'">注册</button>
				</td>
			</tr>
		</table>
	</div>
	<br />
	<br />
	<br />
	<br />
	<center>
		<div style="background: #FFFFFF; width: 80%;">
			<table width="100%">
				<tr>
					<td class="textC" style="padding:20px 0px;" colspan="2">
						<font size="3" color="#00B389">很抱歉，我们暂时无法向您提供服务。你可以重新提交审核或联系我们的企业客服。</font>
					</td>
				</tr>
				<tr>
					<td class="textC" style="padding:10px 0px;font-size:17px;" colspan="2">公司信息</td>
				</tr>
				<tr height="60px">
					<td class="textR" style="width:40%;padding-right:30px;">
						<font size="1">公司全称</font>
					</td>
					<td>
						<div class="input-group">
							<div class="dropdown">
								<input type="text" name="firmAllName" id="firmAllName" class="form-control" style="width: 300px;">
							</div>
						</div>
					</td>
				</tr>
				<tr height="60px">
					<td class="textR" style="width:40%;padding-right:30px;">
						<font size="1">公司官网</font>
					</td>
					<td>
						<div class="input-group">
							<div class="dropdown">
								<input type="text" name="firmWebLink" id="firmWebLink" class="form-control" style="width: 300px;">
							</div>
						</div>
					</td>
				</tr>
				<tr height="60px">
					<td class="textR" style="width:40%;padding-right:30px;">
						<font size="1">融资阶段</font>
					</td>
					<td>
						<input type="hidden" id="firmStage" name="firmStage"/>
						<div class="input-group">
							<div class="dropdown">
								<input type="text" name="firmStageValue" id="firmStageValue" class="form-control" style="width: 300px;">
							    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
							        <span class="caret"></span>
							    </button>
							    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important" id="Stage">
							        
							    </ul>
							</div>
						</div>
					</td>
				</tr>
				<tr height="60px">
					<td class="textR" style="width:40%;padding-right:30px;">
						<font size="1">所在城市</font>
					</td>
					<td>
						<input type="hidden" id="firmCity" name="firmCity"/>
						<div class="input-group">
							<div class="dropdown">
								<input type="text" name="firmCityValue" id="firmCityValue" class="form-control" style="width: 300px;">
							    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
							        <span class="caret"></span>
							    </button>
							    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important" id="City">
							        
							    </ul>
							</div>
						</div>
					</td>
				</tr>
				<tr height="60px">
					<td class="textR" style="width:40%;padding-right:30px;">
						<font size="1">招聘需求</font>
					</td>
					<td>
						<input type="hidden" id="firmxuqiu" name="firmxuqiu"/>
						<div class="input-group">
							<div class="dropdown" style="">
								<input type="text" name="firmxuqiuValue" id="firmxuqiuValue" class="form-control" style="width: 300px;">
							    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
							        <span class="caret"></span>
							    </button>
							    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important" id="xuqiu">
							        
							    </ul>
							</div>
						</div>
					</td>
				</tr>
				<tr height="80px">
					<td colspan="2" class="textC">
						<button type="button" class="btn btn-primary" onclick="goSubmit()" data-toggle="button"
							style="background-color: #00B38A !important; border-color: #00B38A !important; width: 200px">
							提交审核</button>
					</td>
				</tr>
			</table>
		</div>
		<div style="height: 2px; width: 80%; background-color: #DDDDDD;"></div>
		<div style="background: #FFFFFF; width: 80%;">
			<br />
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%;">
				<tr height="20px"/>
				<tr>
					<td colspan="4">
						<table width="100%">
							<tr>
								<td rowspan="6" class="textR" width="50%"><img src="../img/kefu.png" width="100px" style="border:2px solid #BBBBBB;padding:10px 20px;border-radius:13px;"/></td>
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
			</table>
			<br />
		</div>
	</center>
	</form>
</body>
</html>
