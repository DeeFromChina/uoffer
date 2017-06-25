<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	var address;
	function init(){
		goSearch();
	}
	function goSearch(){
		var url = "manager/accoutPage1.do";
		var formId = "caozuoForm";
		var data = ajaxSumbit(url, formId);
		addmessage(data.accoutList);
		addselect(data.types,"types");
	}
	
	function changeColor1(obj){
		obj.style.background="#999999";
	}
	function changeColor2(obj){
		obj.style.background="#FFF";
	}
	function openWindow(ret){
		document.getElementById("address").innerHTML = ret.name;
		document.getElementById("address").innerHTML = ret.name;
		if(ret.id == 'newaccount'){
			document.getElementById("newPage").style.display="";
			document.getElementById("editPage").style.display="none";
			document.getElementById("quanxianPage").style.display="none";
			document.getElementById("caozuotype").value='1';
		}else if(ret.name == 'quanxian'){
			document.getElementById("newPage").style.display="none";
			document.getElementById("editPage").style.display="none";
			document.getElementById("quanxianPage").style.display="";
			document.getElementById("caozuotype").value='3';
			document.getElementById("userId").value=ret.id;
		}else{
			document.getElementById("newPage").style.display="none";
			document.getElementById("editPage").style.display="";
			document.getElementById("quanxianPage").style.display="none";
			document.getElementById("caozuotype").value='2';
			document.getElementById("userId").value=ret.id;
		}
		document.getElementById("new").click();
	}
	function goSumbit(){
		var url = "manager/editaccout1.do";
		var formId = "caozuoForm";
		var data = ajaxSumbit(url, formId);
	}
	function goChangepsw(){
		var url = "user/updateOfferUserPassword1.do";
		var formId = "caozuoForm";
		var data = ajaxSumbit(url, formId);
	}
	function goguwenstatus(status,id){
		var url = "changeguwenStatus/user.do?status="+status+"&id="+id;
		var formId = "caozuoForm";
		var data = ajaxSumbit(url, formId);
		if (data == 'success'){
			if (status == '0') {
				alert("已禁用成功！");
			}
			else {
				alert("启用成功！");
			}
		}
		else {
			alert("操作错误！");
			return;
		}
		goSearch();
	}
	
	function addmessage(items){
		var me = "<tr height='40px' style='border:1px #666666 solid;'>"
					+"<td class='textC'>"
						+"<font size='2'>账号信息</font>"
					+"</td>"
					+"<td class='textC'>"
						+"<font size='2'>邮箱</font>"
					+"</td>"
					+"<td class='textC'>"
						+"<font size='2'>密码</font>"
					+"</td>"
					+"<td class='textC'>"
						+"<font size='2'>类型</font>"
					+"</td>"
					+"<td class='textC'>"
						+"<font size='2'>操作</font>"
					+"</td>"
				+"</tr>";
			//alert(items[0].type);
		for(var i in items){
			var caozuo = "<a href='#' id='"+items[i].id+"' name='"+items[i].address+"' onclick='openWindow(this)'>修改密码</a>";
			if(items[i].type == '管理员' || items[i].type == '顾问'){
				caozuo = caozuo + "|"
								+"<a href='#' id='"+items[i].id+"' name='quanxian' onclick='openWindow(this)'>设置权限</a>"
								+"|";
				if(items[i].status == 4){
					caozuo = caozuo +"<a href='#' id='"+items[i].id+"' onclick='goguwenstatus(0,"+items[i].id+")'>禁用</a>"
				}else{
					caozuo = caozuo +"<a href='#' id='"+items[i].id+"' onclick='goguwenstatus(4,"+items[i].id+")'>启用</a>"
				}
				
			}
			me = me + "<tr height='40px' style='border:1px #666666 solid;'>"
						+"<td class='textC'>"
							+"<font size='2'>"+items[i].name+"</font>"
						+"</td>"
						+"<td class='textC'>"
							+"<font size='2'>"+items[i].address+"</font>"
						+"</td>"
						+"<td class='textC'>"
							+"<font size='2'>"+items[i].password+"</font>"
						+"</td>"
						+"<td class='textC'>"
							+"<font size='2'>"+items[i].type+"</font>"
						+"</td>"
						+"<td class='textC'>"
							+"<font size='2'>"+caozuo+"</font>"
						+"</td>"
					+"</tr>";
		}
		document.getElementById("message").innerHTML= me;
	}
	function addselect(items,selectId){
		for(var i in items){
			document.getElementById(selectId).options.add(new Option(items[i].value,items[i].id));
		}
	}
	function goSaveType(){
		var id = document.getElementById("userId").value;
		var url = "manager/saveAccoutPageType.do?id="+id;
		var types = document.getElementById("types").value;
		var data = ajaxSumbitNoform(url, types);
		if(data == 'success'){
			alert("保存成功！");
		}
	}
	function editType(id){
		var url = "manager/accoutPageType.do";
		var data = ajaxSumbitNoform(url, id);
		document.getElementById("types").value = data;
	}
</script>
<style>
</style>
<body bgColor="#FFF" onload="init()">
	<table style="width:100%;">
		<tr>
			<td style="padding:30px 20px;" colspan="2">管理账号</td>
		</tr>
		<tr>
			<td style="padding:5px 20px;">
				<font size="2">已保存账户信息<span id="">（2条）</span></font>
			</td>
			<td class="textR" style="padding-right:40px;">
				<a href="#" id="newaccount" onclick="openWindow(this)"><font size="2">新增账号</font></a>
			</td>
		</tr>
		<tr>
			<td style="padding:5px 20px;" colspan="2">
				<table style="width:100%;" id="message">

<!-- 					<tr height="40px" style="border:1px #666666 solid;"> -->
<!-- 						<td class="textC"> -->
<!-- 							<font size="2">洋洋</font> -->
<!-- 						</td> -->
<!-- 						<td class="textC"> -->
<!-- 							<font size="2">172537643@qq.com</font> -->
<!-- 						</td> -->
<!-- 						<td class="textC"> -->
<!-- 							<font size="2">aiuwgf</font> -->
<!-- 						</td> -->
<!-- 						<td class="textC"> -->
<!-- 							<font size="2">飞顾问</font> -->
<!-- 						</td> -->
<!-- 						<td class="textC"> -->
<!-- 							<font size="2">修改密码|设置|禁用</font> -->
<!-- 						</td> -->
<!-- 					</tr> -->
<!-- 					<tr height="40px" style="border:1px #666666 solid;"> -->
<!-- 						<td class="textC"> -->
<!-- 							<font size="2">洋洋</font> -->
<!-- 						</td> -->
<!-- 						<td class="textC"> -->
<!-- 							<font size="2">172537643@qq.com</font> -->
<!-- 						</td> -->
<!-- 						<td class="textC"> -->
<!-- 							<font size="2">aiuwgf</font> -->
<!-- 						</td> -->
<!-- 						<td class="textC"> -->
<!-- 							<font size="2">飞顾问</font> -->
<!-- 						</td> -->
<!-- 						<td class="textC"> -->
<!-- 							<a href="#" onclick="openWindow(this)" id="2"><font size="2">修改密码</font></a> -->
<!-- 						</td> -->
<!-- 					</tr> -->
				</table>
			</td>
		</tr>
	</table>
	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display:none;" id="new"></button>
	<form id="caozuoForm">
	<input type="hidden" id="userId" name="userId"/>
	<input type="hidden" id="caozuotype" name="caozuotype"/>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content" style="width:600px;display:none;" id="newPage">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">新增账号</h4>
	            </div>
	            <div class="modal-body">
	            	<table style="width:100%">
	            		<tr>
	            			<td class="textR" style="width:180px;padding:10px 10px;">账号名称</td>
	            			<td><input name="accountName" type="text" style="height:30px;width:300px;"/></td>
	            		</tr>
	            		<tr>
	            			<td class="textR" style="width:180px;padding:10px 10px;">邮箱</td>
	            			<td><input name="accountEmail" type="text" style="height:30px;width:300px;"/></td>
	            		</tr>
	            		<tr>
	            			<td class="textR" style="width:180px;padding:10px 10px;">密码</td>
	            			<td><input name="accountPsw" type="text" style="height:30px;width:300px;"/></td>
	            		</tr>
	            		<tr height="80px">
	            			<td colspan="2" class="textC">
	            				<button type="button" class="btn btn-default" data-dismiss="modal" onclick="goSumbit()" style="width:100px;background:#00B38A;color:#FFF;">保存</button>
	            				<button type="button" class="btn btn-default" data-dismiss="modal" style="width:100px;background:#FFF;color:#00B38A;">取消</button>
	            			</td>
	            		</tr>
	            	</table>
	            </div>
	        </div>
	        <div class="modal-content" style="width:600px;display:none;" id="editPage">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">修改密码</h4>
	            </div>
	            <div class="modal-body">
	            	<table style="width:100%">
	            		<tr>
	            			<td class="textR" style="width:180px;padding:10px 10px;">邮箱</td>
	            			<td id ="address"></td>
	            		</tr>
	            		<tr>
	            			<td class="textR" style="width:180px;padding:10px 10px;">新密码</td>
	            			<td><input name="newpsw" type="text" style="height:30px;width:300px;"/></td>
	            		</tr>
	            		<tr>
	            			<td class="textR" style="width:180px;padding:10px 10px;">确认密码</td>
	            			<td><input name="comfirmpsw" type="text" style="height:30px;width:300px;"/></td>
	            		</tr>
	            		<tr height="80px">
	            			<td colspan="2" class="textC">
	            				<button type="button" class="btn btn-default" data-dismiss="modal" onclick="goChangepsw()" style="width:100px;background:#00B38A;color:#FFF;">保存</button>
	            				<button type="button" class="btn btn-default" data-dismiss="modal" style="width:100px;background:#FFF;color:#00B38A;">取消</button>
	            			</td>
	            		</tr>
	            	</table>
	            </div>
	        </div>
	        <div class="modal-content" style="width:600px;display:none;" id="quanxianPage">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">权限设置</h4>
	            </div>
	            <div class="modal-body">
	            	<table style="width:100%">
	            		<tr>
	            			<td class="textR" style="width:180px;padding:10px 10px;">类型</td>
	            			<td id ="address">
	            				<select style="height:30px;width:300px" id="types" name="types">
								</select>
							</td>
	            		</tr>
	            		<tr height="80px">
	            			<td colspan="2" class="textC">
	            				<button type="button" class="btn btn-default" data-dismiss="modal" onclick="goSaveType()" style="width:100px;background:#00B38A;color:#FFF;">保存</button>
	            				<button type="button" class="btn btn-default" data-dismiss="modal" style="width:100px;background:#FFF;color:#00B38A;">取消</button>
	            			</td>
	            		</tr>
	            	</table>
	            </div>
	        </div>
	    </div>
	</div>
	</form>
</body>
</html>
