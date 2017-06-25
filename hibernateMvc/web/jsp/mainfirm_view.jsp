<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	var dataType;
	function init() {
		var url = "firm/getFirmUserName.do";
		var formId = "firmForm";
		var data = ajaxSumbit(url, formId);
		document.getElementById('userName').innerText = data.userName;
		var status = data.status;
		if (status == '0' || status == '1' || status == '2' || status == '3') {
			dataType = '';
		}
		else if (status == '4') {
			dataType = 'edit';
		}
	}
	function booleanInfot(url){
		if(dataType == 'edit'){
			top.location.href=url;
		}else{
			alert("请先补充公司信息才能有此功能！");
		}
	}
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
		der.style.color="#CCCCCC";
	}
	function jobId(job){
		if(job.getAttribute('class') == "icheckbox_square-green checked"){
			job.setAttribute("class","icheckbox_square-green hover");
		}
		else if(job.getAttribute('class') == "icheckbox_square-green hover"){
			job.setAttribute("class","icheckbox_square-green checked");
		}
	}
	function selectInterviewType(seqno){
		$(".triangle-left").each(function () {
			this.setAttribute("class","");
        });
		if(seqno == 1){
			document.getElementById("type11").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = seqno;
		}
		if(seqno == 2){
			document.getElementById("type12").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = seqno;
		}
		if(seqno == 3){
			document.getElementById("type13").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = seqno;
		}
		if(seqno == 4){
			document.getElementById("type14").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = seqno;
		}
		if(seqno == 5){
			document.getElementById("type15").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = seqno;
		}
		if(seqno == 6){
			document.getElementById("type16").setAttribute("class","triangle-left");
			document.getElementById("interviewtype").value = seqno;
		}
		goSearch();
	}
	function addtags(typeId,typemsg){
		document.getElementById(typeId).innerHTML="<font style='font-size:14px;color:#4F4F4F;'>"+typemsg+"</font>";
	}
	function goSearch(){
		window.iframe1.location.href="maininterview_object.jsp";
	}
	function goBack(){
		top.location.href='firm_resume_add.jsp';
	}
	$(function(){
        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            // 获取已激活的标签页的名称
            var activeTab = $(e.target).text();
            // 获取前一个激活的标签页的名称
            var previousTab = $(e.relatedTarget).text();
            $(".active-tab span").html(activeTab);
            $(".previous-tab span").html(previousTab);
        });
    });
</script>
<body bgcolor="#FFF" onload="init()" style="overflow-y:hidden;">
<form id="firmForm">
	<input type="hidden" id="firmId" name="firmId"/>
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('finduser.jsp')">
				    	<font>候选人</font>
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('user_view.jsp')">
				    	<font>已发邀请</font>
				    </button>
			    </td>
			    <td class="textR" style="width:24%;padding-right:10%">
				    <div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" id="user"><span id="userName"></span>
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="background-color:#32373C;width:150px;"><!-- ;position:absolute -->
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#" onclick="booleanInfot('personal_settings_edit.jsp')" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">个人设置</font></a>
					            <a role="menuitem" tabindex="-1" href="#" onclick="booleanInfot('firm_resume_add.jsp')" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">企业信息</font></a>
					        </li>
					    </ul>
				    </div>
				    <button type="button" style="height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:60px"></div>
	<div style="width:100%;background:#F4F9F9;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;"><!-- z-index:9999; -->
		<table width="100%" height="100%">
			<tr height="22px"/>
			<tr>
				<td width="180px"/>
				<td width="90px">
					<button type="button" class="btn btn-default" style="width: 100px;background:#FFF;color:#0dad87;" onclick="goBack()">
			   			<font style="font-size:14px;">返回修改</font>
			   		</button>
				</td>
				<td width="90px">
					<button type="button" class="btn btn-default" style="width: 100px;background:#0dad87;color:#FFF;" onclick="goBack()">
			   			<font style="font-size:14px;">确认提交</font>
			   		</button>
				</td>
				<td/>
			</tr>
			<tr height="22px"/>
		</table>
	</div>
	<div id="myTabContent" class="tab-content" style="background:#FFF;height:100%;">
	    <div class="tab-pane fade in active" id="firminformation" style="height:100%;padding-top:68px;padding-bottom:10px;">
	        <iframe height="95%" width="100%" src="firm_information2.jsp" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;" id="iframe1" name="iframe1"></iframe>
	    </div>
	</div>
</form>
</body>
</html>