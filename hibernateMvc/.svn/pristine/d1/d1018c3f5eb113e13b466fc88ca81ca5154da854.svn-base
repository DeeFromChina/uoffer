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
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
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
		//window.iframe1.location.href="maininterview_object.jsp";
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
	<div style="width:100%;min-width:1000px;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="font-size:14px;width:103px;height:60px !important;color:#F5F8F9;background-color:#777777;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onclick="javascript:top.location.href='user_manager.jsp'">
				    	<font>候选人</font>
				    </button>
				    <button type="button" style="font-size:14px;width:103px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='firm_manager.jsp'">
				    	<font>企业</font>
				    </button>
				    <button type="button" style="font-size:14px;width:103px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='account_manager.jsp'">
				    	<font>数据统计</font>
				    </button>
			    </td>
			     <td class="textR" style="width:24%;padding-right:10%">
			    	<button type="button" style="height:60px !important;width:80px !important;color:#F5F8F9;background-color:#32373C;"class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='stafflogin.jsp'">
				    	<font>退出</font>
				    </button>
			    </td>
			</tr>
		</table>
	</div>
	<br/>
	<!-- <div style="width:100%;height:10px"></div> -->
    <div id="firminformation" style="background:#FFF;height:100%;padding-top:40px;">
        <iframe height="100%" width="100%" src="user_information.jsp" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;" id="iframe1" name="iframe1"></iframe>
    </div>
</body>
</html>