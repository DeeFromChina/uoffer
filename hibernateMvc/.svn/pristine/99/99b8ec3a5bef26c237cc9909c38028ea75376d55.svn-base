<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
	#userTable td{
		border:1px #CCCCCC solid;
		height:47px;
		min-width:80px;
	}
</style>
<script language="javascript">
	function init(){
		var url = "login/houTaiFirmInformation1.do?pageId=" + 1;
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		document.getElementById("allNum").innerText=data.allNum;
		//addLi(data.city,"city");
		//addLi(data.job,"job");
		addLi(data.status,"status");
		addList(data.firmList);
		addpageNum(data.pageNum,"u1");
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
		//goSearch();
	}
	
	function validateCode() {
		var url = "login/houTaiFirmInformation1.do";
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		addList(data.firmList);
		document.getElementById("allNum").innerText=data.allNum;
		addpageNum(data.pageNum,"u1");
	}
	
	function goSearch() {
		var pageId = document.getElementById('pageId').value;
		var firmcity = document.getElementById('firmcity').value;
		alert(firmcity);
		var firmcityValue = document.getElementById('firmcityValue').value;
		alert(firmcityValue);
		var firmjob = document.getElementById('firmjob').value;
		alert(firmjob);
		var firmjobValue = document.getElementById('firmjobValue').value;
		alert(firmjobValue);
		var firmName = document.getElementById('firmName').value;
		alert(firmName);
		
		var url = "login/houTaiFirmInformation1.do";//?pageId=" + pageId + "&firmcityValue=" + firmcityValue + "&firmstatus=" + firmstatus;
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		addList(data.firmList);
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
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].address+"</font>"
							+"</td>"       
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].lingyu+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].name+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].guimo+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].rongzi+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].shenqingren+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].zhiwei+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].shenqingtime+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].status+"</font>"
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
	function getpage(str) {
		document.getElementById('pageId').value = str;
		validateCode();
	}
</script>
<body bgcolor="#FFF" onload="init()">
	<form id="finduserForm">
		<input type="hidden" name="pageId" id="pageId" value="1"/>
	<div style="width:100%;padding:20px 14%;">
		<table width="100%" style="min-width:220px;">
			<tr height="20px"/>
			<tr>
				<td width="190px">
					<div class="input-group" style="display:inline;width: 100%;">
						<div class="dropdown" style="">
							<input type="hidden" name="firmcity" id="firmcity"/>
							<input type="text" name="firmcityValue" id="firmcityValue" class="form-control" placeholder="城市" style="font-size:14px;width: 120px !important" readonly>
						    <button type="button" style="width:41px;height:41px !important;background-color:#3CBAFF;color:#FFF;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 161px;max-height:100px;overflow-y:auto;" id="city">
						        
						    </ul>
						</div>
					</div>
				</td>
				<td width="190px">
					<div class="input-group" style="display:inline;width: 100%;">
						<div class="dropdown" style="">
							<input type="hidden" name="firmstatus" id="firmstatus"/>
							<input type="text" name="firmstatusValue" id="firmstatusValue" class="form-control" placeholder="状态" style="font-size:14px;width: 120px !important" readonly>
						    <button type="button" style="width:41px;height:41px !important;background-color:#3CBAFF;color:#FFF;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 161px;max-height:100px;overflow-y:auto;" id="status">
						        
						    </ul>
						</div>
					</div>
				</td>
				<!-- <td>
					<div class="input-group" style="width: 100%;">
						<div class="dropdown" style="">
							<input type="hidden" name="firmjob" id="firmjob"/>
							<input type="text" name="firmjobValue" id="firmjobValue" class="form-control" placeholder="职位" style="margin-left:-20px;width: 164px !important" readonly>
						    <button type="button" style="height:34px !important;background-color:#3CBAFF;color:#FFF;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important" id="job">
						        
						    </ul>
						</div>
					</div>
				</td> -->
				<td width="390px">
		            <input type="text" class="form-control" style="width:361px;" placeholder="搜索" id="firmName" name="firmName">
				</td>
				<td class="textL">
					<button type="button" class="btn btn-primary" onclick="validateCode()" data-toggle="button"
					style="background-color: #3CBAFF; border-color: #3CBAFF;font-size:14px; color:#FFF; width: 150px;">
					搜索</button>
				</td>
			</tr>
		</table>
	</div>
	</form>
	<div style="width:100%;height:94%;padding:20px 14%;">
		<font style="font-size:14px;" color="#4F4F4F">
			共
			<font color="#3CBAFF" style="font-size:20px;" id="allNum">140</font>
			个匹配项，显示
			<font color="#3CBAFF" style="font-size:20px;">1-20</font>
		</font>
		<br/>
		<br/>
		<table width="100%" style="border:1px #CCCCCC solid;" id="userTable">
			<thead>
				<tr>
					<td class="textC" style="background:#E2E2E2;">
						<font style="font-size:14px;" color="#4F4F4F">地区</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style="font-size:14px;" color="#4F4F4F">领域</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style="font-size:14px;" color="#4F4F4F">公司简称</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style="font-size:14px;" color="#4F4F4F">公司规模</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style="font-size:14px;" color="#4F4F4F">融资阶段</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style="font-size:14px;" color="#4F4F4F">招聘负责人</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style="font-size:14px;" color="#4F4F4F">招聘需求</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style="font-size:14px;" color="#4F4F4F">推荐时间</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style="font-size:14px;" color="#4F4F4F">流程状态</font>
					</td>
				</tr>
			</thead>
			<tbody id="tbody">
				
			</tbody>
			<!-- <tr>
				<td class="textC">
					<font size="1">广州</font>
				</td>
				<td class="textC">
					<font size="1">b2b电商</font>
				</td>
				<td class="textC">
					<font size="1">姓名</font>
				</td>
				<td class="textC">
					<font size="1">50-100</font>
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
					<font size="1">java java2</font>
				</td>
				<td class="textC">
					<font size="1">19823年-啊健搜地方哈</font>
				</td>
			</tr> -->
		</table>
		<div style="padding:58px 0px;">
			<ul class="pagination" id="u1" style="margin-top:10px;">
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			</ul>
		</div>
	</div>
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