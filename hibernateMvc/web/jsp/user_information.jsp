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
	.dropdown-submenu {  
	    position: relative;  
	}  
	.dropdown-submenu > .dropdown-menu {  
	    top: 0;  
	    left: 100%;  
	    margin-top: -6px;  
	    margin-left: -1px;  
	    -webkit-border-radius: 0 6px 6px 6px;  
	    -moz-border-radius: 0 6px 6px;  
	    border-radius: 0 6px 6px 6px;  
	}  
	.dropdown-submenu:hover > .dropdown-menu {  
	    display: block;  
	}  
	.dropdown-submenu > a:after {  
	    display: block;  
	    content: " ";  
	    float: right;  
	    width: 0;  
	    height: 0;  
	    border-color: transparent;  
	    border-style: solid;  
	    border-width: 5px 0 5px 5px;  
	    border-left-color: #ccc;  
	    margin-top: 5px;  
	    margin-right: -10px;  
	}  
	.dropdown-submenu:hover > a:after {  
	    border-left-color: #fff;  
	}  
	.dropdown-submenu.pull-left {  
	    float: none;  
	}  
	.dropdown-submenu.pull-left > .dropdown-menu {  
	    left: -100%;  
	    margin-left: 10px;  
	    -webkit-border-radius: 6px 0 6px 6px;  
	    -moz-border-radius: 6px 0 6px 6px;  
	    border-radius: 6px 0 6px 6px;  
	}
</style>
<script language="javascript">
	function init(){
		var url = "login/userinformation1.do?pageId="+1;
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		document.getElementById("allNum").innerText=data.allNum;
		addLi(data.city,"city");
		addJobLi(data.job,"job");
		addLi(data.status,"status");
		addList(data.users);
		addpageNum(data.pageNum,"u1");
		//document.getElementById("botom").=window
	}
	function jobnote(items,id,liId){
		var note = "";
		var nowNum = 0;
		for(var j in items){
			if(items[j].parentId==id){
				note = note + "<li><a role='menuitem' onclick='selectDownValue(" + items[j].id +",\"" + items[j].value +"\",\""+liId+"\")'>"+items[j].value+"</a></li>";
				nowNum++;
			}
		}
		var nowNote = "";
		if (nowNum > 8) {
			nowNote += "<ul class='dropdown-menu' style='height:290px;overflow-y:auto;'>";
		}
		else {
			nowNote += "<ul class='dropdown-menu' >";
		}
		nowNote += note;
		nowNote += "</ul>";
		return nowNote;
	}
	//下拉列表
	function addJobLi(items,liId){
		var inn = "";
		for(var i in items){
			if(items[i].id == -1){
				inn = inn + "<li role='presentation'>"
				+"<a role='menuitem' onclick='selectDownValue(" + items[i].id +",\"" + items[i].value +"\",\""+liId+"\")'><font color='#000'>" + items[i].value
				+"</font></a>"
				+"</li>";
			}
			else if(items[i].parentId == 0){
				inn = inn + "<li role='presentation' class='dropdown-submenu'>"
				+"<a role='menuitem' onclick='selectDownValue(" + items[i].id +",\"" + items[i].value +"\",\""+liId+"\")'><font color='#000'>" + items[i].value
				+"</font></a>"
				//+"<ul class='dropdown-menu' style='height:250px;overflow-y:auto;'>"
					+ jobnote(items, items[i].id, liId)
			    //+"</ul>"
				+"</li>";
			}
		}
		document.getElementById(liId).innerHTML=inn;
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
		goSearch();
	}
	
	function goSearch() {
		/* var pageId = document.getElementById('pageId').value;
		var firmcity = document.getElementById('firmcity').value;
		var firmcityValue = document.getElementById('firmcityValue').value;
		var firmjob = document.getElementById('firmjob').value;
		var firmjobValue = document.getElementById('firmjobValue').value;
		var firmstatus = document.getElementById('firmstatus').value; */
		
		var url = "login/userinformation1.do?";//pageId=" + pageId + "&firmcityValue=" + firmcityValue + "&firmjob=" + firmjob +"&firmstatus=" + firmstatus;
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		addList(data.users);
		document.getElementById("allNum").innerText=data.allNum;
		addpageNum(data.pageNum,"u1");
	}
	//增加列表
	function addList(items){
		$("#userTable tbody").html("");
		for(var i in items){
			var tr1 = document.createElement("tr");
			document.getElementById("tbody").appendChild(tr1);
			ttt = "<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].address+"</font>"
							+"</td>"       
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].job+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].name+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].xueli+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].works+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].nowmoney+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].planmoney+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].planPlace+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].creatTime+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].offerUserPhone+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font style='font-size:14px;' color='#4F4F4F'>"+items[i].status+"</font>"
							+"</td>";
							if (items[i].status == '未确认') {
								ttt = ttt + "<td/>";
							}
							else {
								
					ttt = ttt +"<td class='textC'>"
								+"<button type='button' style='height:31px;width:71px;background-color:#3CBAFF;color:#FFF;' onclick='goView(\""+items[i].id+"\")' class='btn dropdown-toggle' data-toggle='dropdown'>"
								+"<font style='font-size:14px;' color='#FFF'>查看</font>"
								+"</button>"
							+"</td>";
							}
							
							tr1.innerHTML = ttt;
			//document.getElementById("userTable").appendChild(tr1);
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
		goSearch();
	}
	function goView(id){
		var url = "login/sessionPutUser.do";
		var data = ajaxSumbitNoform(url, id);
		top.location.href='user_all_information.jsp';
		/* var url = "firm/findUserInformation.do?offerCandidateId="+id;
		var formId = "findusersumForm";
		var data = ajaxSumbit(url, formId);
		if(data == 'success'){
			top.location.href='user_all_information.jsp';
		} */
	}
</script>
<body bgcolor="#FFF" onload="init()">
<form id="finduserForm">
	<div style="width:100%;height:60px;"></div>
	<div style="width:100%;padding:20px 14%;">
		<table width="100%">
			<tr height="20px"/>
			<tr>
				<td width="180px">
					<div class="input-group" style="width: 100%;">
						<div class="dropdown">
							<input type="hidden" id="firmcity" name="firmcity"/>
							<input type="text" name="firmcityValue" id="firmcityValue" class="form-control" placeholder="城市" style="width: 120px;height:41px;" readonly>
						    <button type="button" style="height:41px;width:41px;background-color:#3CBAFF;color:#FFF;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90%;max-height:117px;overflow-y:auto;" id="city">
						        
						    </ul>
						</div>
					</div>
				</td>
				<td width="180px">
					<div class="input-group" style="width: 100%;">
						<div class="dropdown">
							<input type="hidden" id="firmjob" name="firmjob"/>
							<input type="text" name="firmjobValue" id="firmjobValue" class="form-control" placeholder="职位" style="width: 120px;height:41px;" readonly>
						    <button type="button" style="height:41px;width:41px;background-color:#3CBAFF;color:#FFF;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90%;" id="job"><!-- max-height:100px;overflow-y:auto; -->
						        
						    </ul>
						</div>
					</div>
				</td>
				<td width="180px">
					<div class="input-group" style="width: 100%;">
						<div class="dropdown">
							<input type="hidden" id="firmstatus" name="firmstatus"/>
							<input type="text" name="firmstatusValue" id="firmstatusValue" class="form-control" placeholder="状态" style="width: 120px;height:41px;" readonly>
						    <button type="button" style="height:41px;width:41px;background-color:#3CBAFF;color:#FFF;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90%;max-height:117px;overflow-y:auto;" id="status">
						        
						    </ul>
						</div>
					</div>
				</td>
				<td>
					<input type="text" name="offerUserName" id="offerUserName" class="form-control" placeholder="搜索姓名" style="max-width: 364px;min-width:120px;height:41px;" onchange="goSearch()">
				</td>
				<td/>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:82%;padding:20px 14%;">
		<font style="font-size:14px;">
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
					<font style="font-size:14px;" color="#4F4F4F">职位</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">姓名</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">学历</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">工作经验</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">目前年薪</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">期望年薪</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">期望地点</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">申请时间</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">电话</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">状态</font>
				</td>
				<td class="textC" style="background:#E2E2E2;">
					<font style="font-size:14px;" color="#4F4F4F">操作</font>
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
				<td class="textC">
					<button type="button" style="height:41px !important;background-color:#3CBAFF;color:#FFF;" onclick="goView('1')" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
				        	查看
				    </button>
				</td>
			</tr> -->
		</table>
		<div style="padding:59px 0%;">
			<input type="hidden" name="pageId" id="pageId" value="1"/>
			<ul class="pagination" id="u1" style="margin-top:10px;">
			    <!-- <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li> -->
			</ul>
		</div>
	</div>
	</form>
	<table style="bottom:0px;width:100%;height:81px;background:#32373C;" id="botom">
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