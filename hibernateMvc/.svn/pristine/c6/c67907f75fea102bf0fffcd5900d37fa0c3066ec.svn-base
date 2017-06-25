<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	function init() {
	}
	function changeColor1(der){
		der.style.background="#999999";
	}
	function changeColor2(der){
		der.style.background="#000";
	}
	function changeColor3(der){
		der.style.background="#00B38A";
		der.style.color="#FFF";
	}
	function changeColor4(der){
		der.style.background="#FFF";
		der.style.color="#666666";
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
		document.getElementById(typeId).innerHTML="<font size='3' color='#666666'>"+typemsg+"</font>";
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
	<input type="hidden" id="firmId" name="firmId"/>
	<div style="width:100%;height:55px;background: #000;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="270px" style="padding-left:150px;"><img src="../img/U-Offerlogo.png"></td>
				<td class="textL" style="padding-left:100px;">
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('finduser.jsp')">
				    	<font size="3">候选人</font>
				    </button>
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('interview.jsp')">
				    	<font size="3">已发邀请</font>
				    </button>
			    </td>
			    <td class="textC" width="270px">
				    <div class="btn-group">
						<button type="button" style="height:55px !important;color:#FFF;background-color:#000;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" id="user"><span id="userName"></span>
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#" onclick="javascript:top.location.href='personal_settings_edit.jsp'"><font color="#000">个人设置</font></a>
					            <a role="menuitem" tabindex="-1" href="#" onclick="javascript:top.location.href='firm_resume_add.jsp'"><font color="#000">企业信息</font></a>
					        </li>
					    </ul>
				    </div>
				    <button type="button" style="height:55px !important;width:80px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<br/>
	<div style="width:100%;height:10px"></div>
	<div style="width:100%;height:50px;margin-top:15px;background:#F4F9F9;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table width="100%" height="100%">
			<tr>
				<td width="180px"/>
				<td width="90px">
					<button type="button" class="btn btn-default" style="width: 80px;background:#FFF;color:#0dad87;" onclick="goBack()">
			   			<font size="1">返回修改</font>
			   		</button>
				</td>
				<td width="90px">
					<button type="button" class="btn btn-default" style="width: 80px;background:#0dad87;color:#FFF;" onclick="goBack()">
			   			<font size="1">确认提交</font>
			   		</button>
				</td>
				<td/>
			</tr>
		</table>
	</div>
	<div id="myTabContent" class="tab-content" style="background:#FFF;height:100%;">
	    <div class="tab-pane fade in active" id="firminformation" style="height:100%;padding-top:68px;padding-bottom:10px;">
	        <iframe height="100%" width="100%" src="firm_information2.jsp" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;" id="iframe1" name="iframe1"></iframe>
	    </div>
	</div>
</body>
</html>