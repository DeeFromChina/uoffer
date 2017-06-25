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
		document.getElementById('usertype').value=parent.document.getElementById('usertype').value;
		var url = "firm/firmzhaopin2.do";
		var formId = "userviewForm1";
		var data = ajaxSumbit(url, formId);
		parent.document.getElementById('inviteId').value = data.inviteId;
		document.getElementById('inviteId').value = data.inviteId;
		adddiv(data.userList);
		if(data.userList != undefined && data.userList != ''){
			parent.window.iframe2.location.href="firm_zhaopin_object_view.jsp";//"mainuser_all_view.jsp";
		}
	}
	function goAllview(id){
		parent.document.getElementById('inviteId').value = id;
		parent.window.iframe2.location.href="firm_zhaopin_object_view.jsp";
	}
	function adddiv(items){
		var div1 = "";
		for(var i in items){
			div1 = div1+"<div class='getColor' onclick='goAllview(this.id)' onmouseover='changeColor1(this)' onmouseout='changeColor2(this)' style='width:100%;padding-top:15px;padding-left:20px;' id='"+items[i].id+"'>"
						+"<table style='width:100%;'>"
							+"<tr>"
								+"<td rowspan='4' width='100px'>"
									+"<div style='border-radius:50%; overflow:hidden;'>"
										+"<img src='" + items[i].imgpath + "' width='100px' height='100px'/>"
									+"</div>"
								+"</td>"
								+"<td />"
							+"</tr>"
							+"<tr>"
								+"<td class='textL' style='padding-left:20px;'><font style='font-size:14px;' color='#4F4F4F'>" +items[i].name+"</font></td>"
							+"</tr>"
							+"<tr>"
								+"<td class='textL' style='padding-left:20px;'><font style='font-size:14px;' color='#4F4F4F'>"+items[i].job+"</font></td>"
							+"</tr>"
							+"<tr>"
								+"<td class='textL' style='padding-left:20px;'><font style='font-size:14px;' color='#4F4F4F'>"+items[i].money+"</font></td>"
							+"</tr>"
							+"<tr height='20px'>"
								+"<td class='textC' colspan='2'><font style='font-size:14px;' color='#4F4F4F'>"+items[i].time+"</font></td>"
							+"</tr>"
						+"</table>"
					+"</div>";
		}
		document.body.innerHTML=div1;
	}
	function changeColor1(obj){
		obj.style.background="#BCE7B1";
	}
	function changeColor2(obj){
		obj.style.background="#FFF";
	}
</script>
<style>
</style>
<body onload="init()" style="overflow-x:hidden;">
	<form id="userviewForm1">
		<input type="hidden" id="usertype" name="usertype"/>
		<input type="hidden" id="inviteId" name="inviteId"/>
	</form>
</body>
</html>
