<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	function init(){
		var url = "login/useraccount1.do";
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		addinformation(data.information);
		document.getElementById("offerCandidateId").value=data.offerCandidateId;
		document.getElementById("firmguwen").value=data.firmguwen;
		document.getElementById("firmguwenValue").value=data.firmguwenValue;
		addLi(data.guwen,"guwen");
	}
	function addinformation(item){
		document.getElementById("userPhoto").src=item.userPhoto;
		document.getElementById("userName").innerText=item.userName;
		document.getElementById("usershenfen").innerText=item.usershenfen;
		document.getElementById("zhucetime").innerText=item.zhucetime;
		document.getElementById("newtime").innerText=item.newtime;
		//document.getElementById("firmName").innerText=item.firmName;
		document.getElementById("job").innerText=item.job;
		document.getElementById("phone").innerText=item.phone;
		document.getElementById("tongzhi").innerText=item.tongzhi;
		document.getElementById("status").innerText=item.status;
		document.getElementById("gewenbeizhu").innerText=item.beizhu;
		document.getElementById("beizhu").value=item.beizhu;
	}
	//下拉列表
	function addLi(items,liId){
		var inn = "";
		for(var i in items){
			inn = inn + "<li role='presentation'>"
				+"<a role='menuitem' onclick='selectDownValue(" + items[i].id +",\"" + items[i].value +"\",\""+liId+"\")'><font color='#000'>" + items[i].value
				+"</font></a></li>";
		}
		document.getElementById(liId).innerHTML=inn;
	}
	function selectDownValue(ke, val, targetInput){
		var ti1 = "firm" + targetInput;
		var ti2 = "firm" + targetInput + "Value";
		document.getElementById(ti1).value=ke;
		document.getElementById(ti2).value=val;
	}
	
	function validateCode() {
		var firmguwen = document.getElementById('firmguwen').value;
		var beizhu = document.getElementById('beizhu').value;
		var url = "firm/changeUserStatus.do?firmguwen="+firmguwen+"&beizhu="+beizhu;
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			alert("提交成功!");
		}else{
			alert("保存出错!");
		}
		window.location.href="user_account.jsp";
	}
</script>
<body bgcolor="#FFF" onload="init()">
	<form id="finduserForm">
		<input type="hidden" name="offerCandidateId" id="offerCandidateId"/>
	
	</form>
	<div style="width:100%;padding:60px 14%;">
		<table width="563px" style="border-bottom:2px #CCCCCC solid;">
			<tr>
				<td style="width:130px;" rowspan="3">
					<img src="../img/changjinglu.jpg" width="120px" height="120px" id="userPhoto"/>
				</td>
				<td valign="bottom" style="padding-left:40px;">
					<font style="font-size:14px;" color="#4F4F4F" id="userName">捂脸</font>
					<font style="font-size:14px;" color="#3CBAFF" id="usershenfen">管理员</font>
				</td>
			</tr>
			<tr>
				<td valign="bottom" style="height:25px;padding-left:40px;">
					<font style="font-size:14px;" color="#4F4F4F" id="zhucetime">注册时间：1017年07月17日</font>
				</td>
			</tr>
			<tr>
				<td valign="top" style="height:15px;padding-left:40px;">
					<font style="font-size:14px;" color="#4F4F4F" id="newtime">最新登陆：1017年07月17日</font>
				</td>
			</tr>
			<tr>
				 <td height="49px" colspan="2"></td>
			</tr>
		</table>
		<table width="563px" style="border-bottom:2px #CCCCCC solid;" cellpadding="10">
			<tr height="38px"/>
			<tr>
				<td width="100px" style="padding-bottom:30px;"><font style="font-size:14px;" color="#4F4F4F">期望职位</font></td>
				<td style="padding-bottom:30px;"><font style="font-size:14px;" color="#3CBAFF" id="job">CEO</font></td>
			</tr>
			<tr>
				<td width="100px" style="padding-bottom:30px;"><font style="font-size:14px;" color="#4F4F4F">手机</font></td>
				<td style="padding-bottom:30px;"><font style="font-size:14px;" color="#3CBAFF" id="phone">133464356</font></td>
			</tr>
			<tr>
				<td width="100px" style="padding-bottom:30px;"><font style="font-size:14px;" color="#4F4F4F">通知信息</font></td>
				<td style="padding-bottom:30px;"><font style="font-size:14px;" color="#3CBAFF" id="tongzhi">已开启：邮件通知，邮件订阅</font></td>
			</tr>
			<tr>
				<td width="100px" style="padding-bottom:30px;"><font style="font-size:14px;" color="#4F4F4F">目前状态</font></td>
				<td style="padding-bottom:30px;"><font style="font-size:14px;" color="#FE9B00" id="status">审核中</font></td>
			</tr>
			<tr>
				<td width="100px" style="padding-bottom:30px;"><font style="font-size:14px;" color="#4F4F4F">顾问备注</font></td>
				<td id="gewenbeizhu" style="padding-bottom:30px;font-size:14px;color:#4F4F4F;"></td>
			</tr>
		</table>
		<table width="541px" style="border-collapse:separate;">
			<tr>
				<td width="541px" style="padding:25px 0px;"><font style="font-size:14px;" color="#4F4F4F">顾问审核</font></td>
			</tr>
			<tr height="49px">
				<td style="padding-bottom:28px;">
					<div class="input-group" style="display:inline;width: 100%;">
						<div class="dropdown" style="">
							<input type="hidden" id="firmguwen" name="firmguwen"/>
							<input type="text" name="firmguwenValue" id="firmguwenValue" class="form-control" readOnly="readOnly" style="width: 120px !important;color:#9A9A9A;font-size:14px;">
						    <button type="button" style="width:41px;height:41px !important;background-color:#3CBAFF;color:#FFF;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 120px !important" id="guwen">
						        
						    </ul>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td style="padding-bottom:28px;">
					<textarea placeholder="顾问审核备注" rows="8" style="width:541px;font-size:14px;color:#4F4F4F;height:181px;" id="beizhu" name="beizhu"></textarea>
				</td>
			</tr>
			<tr>
				<td class="textR">
					<button type="button" class="btn btn-primary" onclick="validateCode()" data-toggle="button"
						style="background-color: #3CBAFF; border-color: #3CBAFF; color:#FFF; width: 150px;">
						提交</button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:180px;"></div>
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