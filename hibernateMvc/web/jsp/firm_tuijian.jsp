<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
	#searchBanner td{
		min-width:220px;
	}
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
    var tuijianstatus = new Array("等待候选人回复", "与候选人沟通", "待面试安排", "待反馈结果", "面试通过", "面试不通过", "候选人拒绝邀请");
	function init(){
		var url = "firm/usertuijian.do";
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
 		document.getElementById("allNum").innerText=data.allNum;
 		addLi(data.status,"status");
 		addJobLi(data.job,"job");
		addList(data.frims);
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
		init();
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
			else if(items[i].parentId==0){
				inn = inn + "<li role='presentation' class='dropdown-submenu'>"
				+"<a role='menuitem' onclick='selectDownValue(" + items[i].id +",\"" + items[i].value +"\",\""+liId+"\")'><font color='#000'>" + items[i].value
				+"</font></a>"
				+jobnote(items,items[i].id,liId)
				+"</li>";
			}
		}
		document.getElementById(liId).innerHTML=inn;
	}
	
	//增加列表
	function addList(items){
		var j = 0;
		$("#userTable tbody").html("");
		for(var i in items){
			var tr1 = document.createElement("tr");
			var nowmoney = items[i].nowmoney==undefined?"":items[i].nowmoney;
			//var stutas = items[i].status==undefined?"":items[i].status;
			tr1.id = "t" + j;
			document.getElementById("tbody").appendChild(tr1);
			var stutasName = "";
			//if (stutas != '') stutasName = ;//tuijianstatus[stutas];
			var status1 = items[i].status1==undefined?"":items[i].status1;
			var status2 = items[i].status2==undefined?"":items[i].status2;
			/* if (status1 != "" && status2 != "") {
				stutasName = status2 + "," + status1;
			}
			else  */
			if (status1 != "") {
				stutasName = status1;
			}
			else if (status2 != "") {
				stutasName = status2;
			}
			document.getElementById("t" + j).innerHTML = "";
			var nowJob = "";
			job1 = items[i].job1;
			job2 = items[i].job2;
			if (job2 == undefined) {
				nowJob = job1;
			}
			else {
				nowJob = job1 + "," + job2;
			}
			document.getElementById("t" + j).innerHTML = "<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].address==undefined ? "" : items[i].address)+"</font>"
							+"</td>"       
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+nowJob+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].name==undefined ? "" : items[i].name)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].xueli==undefined?"":items[i].xueli)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].jingyan==undefined ? "" : items[i].jingyan)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+nowmoney+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].planmoney==undefined ? "" : items[i].planmoney)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].planCityName==undefined ? "" : items[i].planCityName)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+(items[i].tuijianTime==undefined ? "" : items[i].tuijianTime)+"</font>"
							+"</td>"
							+"<td class='textC'>"
								+"<font color='#4F4F4F' style='font-size:14px;'>"+stutasName+"</font>"
							+"</td>"
							+"<td class='textC'>"//width:46px;
								+"<button type='button' style='height:41px !important;background-color:#3CBAFF;color:#FFF;' onclick='goView(\""+items[i].candidate_id+"\")' class='btn dropdown-toggle' data-toggle='dropdown'>"
								+"查看"
								+"</button>"
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
	function getpage(pageId) {
		document.getElementById('pageId').value = pageId;
		init();
	}
	
	function goView(id){
// 		window.location.href='user_information2.jsp';
		var url = "login/sessionPutUser.do";
		var data = ajaxSumbitNoform(url, id);
		top.location.href='user_information2.jsp';
	}
</script>
<body bgcolor="#FFF" onload="init()">
	<form id="finduserForm" style="height:98%;">
	<div style="width:100%;height:60px;"></div>
	<div style="width:100%;padding:0px 200px;margin-top:48px;">
		<table width="100%" id="searchBanner">
			<tr height="20px"/>
			<tr>
				<td width="220px">
					<div class="input-group" style="width: 100%;">
						<div class="dropdown" style="">
							<input type="hidden" id="firmstatus" name="firmstatus"/>
							<input type="text" name="firmstatusValue" id="firmstatusValue" class="form-control" placeholder="流程状态" style="width: 164px !important" readonly>
						    <button type="button" style="width:41px;height:41px !important;background-color:#3CBAFF;color:#FFF;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important" id="status">
						        
						    </ul>
						</div>
					</div>
				</td>
				<td width="220px">
					<div class="input-group" style="width: 100%;margin-left:20px;">
						<div class="dropdown" style="">
							<input type="hidden" id="firmjob" name="firmjob"/>
							<input type="text" name="firmjobValue" id="firmjobValue" class="form-control" placeholder="职位" style="margin-left:-20px;width: 164px !important" readonly>
						    <button type="button" style="width:41px;height:41px !important;background-color:#3CBAFF;color:#FFF;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important" id="job">
						        
						    </ul>
						</div>
					</div>
				</td>
				<td width="220px">
		            <input type="text" id="offerUserName" name="offerUserName" class="form-control" style="width:90%" placeholder="姓名" onchange="init()">
				</td>
				<td/>
				<!-- <td class="textR">
					<button type="button" class="btn btn-primary" onclick="validateCode()" data-toggle="button"
					style="background-color: #3CBAFF; border-color: #3CBAFF; color:#FFF; width: 150px;">
					搜索</button>
				</td> -->
			</tr>
		</table>
	</div>
	<div style="width:100%;height:47px;"></div>
	<div style="width:100%;padding:20px 200px;">
		<font style='font-size:14px;color:#4F4F4F;'>
			共
			<font color="#3CBAFF" style='font-size:20px;' id="allNum">140</font>
			个匹配项，显示
			<font color="#3CBAFF" style='font-size:20px;'>1-20</font>
		</font>
		<br/>
		<br/>
		<table width="100%" style="border:1px #CCCCCC solid;" id="userTable">
			<thead>
				<tr>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>地区</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>职位</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>姓名</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>学历</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>工作经验</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>目前年薪</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>期望年薪</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>期望地点</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>推荐时间</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>流程状态</font>
					</td>
					<td class="textC" style="background:#E2E2E2;">
						<font style='font-size:14px;color:#4F4F4F;'>操作</font>
					</td>
				</tr>
			</thead>
			<tbody id="tbody">
			</tbody>
<!-- 			<tr> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">广州</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">b2b电商</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">姓名</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">50-100</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">2016.11.11</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">产品总监</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">1233523452345</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">java java2</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">工作地点:广州越秀长坂按时速</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<font size="1">19823年-啊健搜地方哈</font> -->
<!-- 				</td> -->
<!-- 				<td class="textC"> -->
<!-- 					<button type="button" class="btn btn-primary" onclick="goView('1')" data-toggle="button" -->
<!-- 					style="background-color: #3CBAFF; border-color: #3CBAFF;width: 60px;"> -->
<!-- 						<font size="1" color="#FFF">查看</font> -->
<!-- 					</button> -->
<!-- 				</td> -->
<!-- 			</tr> -->
		</table>
	</div>
	<div style="width:100%;padding:0px 200px;">
		<input type="hidden" name="pageId" id="pageId" value="1"/>
		<ul class="pagination" id="u1" style="margin-top:10px;">
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		</ul>
	</div>
	</form>
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