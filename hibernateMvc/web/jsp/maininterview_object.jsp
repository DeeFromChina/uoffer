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
		goSearch();
	}
	function goSearch(){
		document.getElementById('interviewtype').value=parent.document.getElementById('interviewtype').value;
		var url = "firm/interviewPage2.do";
		var formId = "interviewForm";
		var data = ajaxSumbit(url, formId);
		parent.document.getElementById('inviteId').value = data.inviteId;
		document.getElementById('inviteId').value = data.inviteId;
		adddiv(data.firmList);
		if(data.firmList != undefined && data.firmList != ''){
			parent.window.iframe2.location.href="maininterview_object_view.jsp";
		}
	}
	function goAllview(id){
		parent.document.getElementById('inviteId').value=id;
		parent.window.iframe2.location.href="maininterview_object_view.jsp";
	}
	function adddiv(items){
		var div1 = "";
		for(var i in items){
			div1 = div1+"<div class='getColor' onclick='goAllview(this.id)' onmouseover='changeColor3(this)' onmouseout='changeColor2(this)' style='width:100%;padding-top:15px;padding-left:20px;' id='"+items[i].id+"'>"
						+"<table style='width: 100%;'>"
							+"<tr>"
								+"<td rowspan='4' width='40px'>"
									+"<div style='border-radius:50%; overflow:hidden;'>"
										+"<img src='" + items[i].imgpath + "' width='40px' height='40px'/>"
									+"</div>"
								+"</td>"
								+"<td />"
							+"</tr>"
							+"<tr>"
								+"<td class='textL' style='padding-left:20px;'><font style='font-size:14px;color:#4F4F4F;'>" +items[i].address+"</font></td>"
							+"</tr>"
							+"<tr>"
								+"<td class='textL' style='padding-left:20px;padding-top:10px;'><font style='font-size:14px;color:#4F4F4F;'>"+items[i].job+"</font></td>"
							+"</tr>"
							+"<tr>"
								+"<td class='textL' style='padding-left:20px;padding-top:10px;word-break:break-all'><font style='font-size:14px;color:#4F4F4F;'>"+items[i].money+"</font></td>"
							+"</tr>"
							+"<tr>"
								+"<td class='textC' style='padding-top:10px;' colspan='2' style='word-break:break-all'><font style='font-size:14px;color:#4F4F4F;'>"+items[i].time+"</font></td>"
							+"</tr>"
							+"<tr height='15px'/>"
						+"</table>"
					+"</div>";
		}
		document.body.innerHTML=div1;
	}
	function changeColor1(obj){
		obj.style.background="#999999";
	}
	function changeColor2(obj){
		obj.style.background="#FFF";
	}
	function changeColor3(obj){
		obj.style.background="#E9F7E5";
	}
</script>
<style>
</style>
<body onload="init()" style="overflow-x:hidden;">
	<form id="interviewForm">
		<input type="hidden" id="interviewtype" name="interviewtype"/>
		<input type="hidden" id="inviteId" name="inviteId"/>
	</form>
</body>
</html>
