<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
	td{
		border:1px #CCCCCC solid;
		height:47px;
		min-width:100px;
	}
</style>
<script language="javascript">
	function init(){
		var url = "login/firmquestionnaire1.do";
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		addList(data.questionnaire);
		addpageNum(data.pageNum,"u1");
	}
	//增加列表
	function addList(items){
		var j = 0;
		$("#userTable tbody").html("");
		for(var i in items){
			var tr1 = document.createElement("tr");
			tr1.id = "t" + j;
			document.getElementById("tbody").appendChild(tr1);
			document.getElementById("t" + j).innerHTML = "<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].name == undefined ? "" : items[i].name)+"</font>"
							+"</td>"       
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].newTime == undefined ? "" : items[i].newTime)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].job == undefined ? "" : items[i].job)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].phone == undefined ? "" : items[i].phone)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].zhaopin == undefined ? "" : items[i].zhaopin)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].workplace == undefined ? "" : items[i].workplace)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].jingyan == undefined ? "" : items[i].jingyan)+"</font>"
							+"</td>";
			j = j + 1;
		}
	}
	function addpageNum(items,pageId){
		var inn = "";
		for(var i = 1; i <= items; i++){
			inn = inn + "<li>"
				+"<a href='#' onclick='getpage("+i+")'>"+i+"</a>"
				+"</li>";
		}
		document.getElementById(pageId).innerHTML=inn;
	}
	function getpage(obj){
		document.getElementById('pageId').value = obj;
		var url = "login/firmquestionnaire1.do";
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		addList(data.questionnaire);
		addpageNum(data.pageNum,"u1");
		//window.iframe1.location.href="firm_questionnaire.jsp";
	}
</script>
<body bgcolor="#FFF" onload="init()">
	<form id="finduserForm">
		<input type="hidden" name="pageId" id="pageId" value="1"/>
	</form>
	<div style="width:100%;height:60px;"></div>
	<div style="width:100%;height:98%;padding:0px 14%;margin-top:47px;">
		<table width="100%" style="border:1px #CCCCCC solid;" id="userTable">
			<thead>
				<tr>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>姓名</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>最新登录</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>职位</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>电话</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>招聘职位</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>工作地点</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>经验要求</font>
					</td>
				</tr>
			</thead>
			<tbody id="tbody">
				<!-- <tr>
					<td class="textC">
						<font size="1">姓名</font>
					</td>
					<td class="textC">
						<font size="1">2016.11.11</font>
					</td>
					<td class="textC">
						<font size="1">产品总监</font>
					</td>
					<td class="textC">
						<font size="1">1233523452345</font>
					</td>
					<td class="textC">
						<font size="1">java java2 java3 java4 java5</font>
					</td>
					<td class="textC">
						<font size="1">工作地点:广州越秀长坂按时速</font>
					</td>
					<td class="textC">
						<font size="1">19823年-啊健搜地方哈</font>
					</td>
				</tr> -->
			</tbody>
		</table>
		<div style="width:100%;height:59px;"></div>
		<div style="width:100%;padding:0px 0%;margin-top:27px;">
			<ul class="pagination" id="u1" style="margin-top:10px;">
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			</ul>
		</div>
	</div>
	<table style="width:100%;height:81px;background:#32373C;" id="botom">
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