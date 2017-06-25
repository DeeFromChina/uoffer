<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
</style>
<script language="javascript">
	function init(){
		var url = "login/firmtuijian1.do";
		var formId = "finduserForm";
		var data = ajaxSumbit(url, formId);
		document.getElementById("allNum").innerText=data.allNum;
		addLi(data.status,"status");
		addLi(data.job,"job");
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
	}
	function test(){
		parent.document.getElementById("main1").height=0;
		parent.document.getElementById("main1").height=document.body.scrollHeight;
	}
	//添加城市
	function addCity(items){
		var citys = "<tr>"
						+"<td width='5%'/><td width='20%'/>"
						+"<td width='5%'/><td width='20%'/>"
						+"<td width='5%'/><td width='20%'/>"
						+"<td width='5%'/><td width='20%'/>"
					+"</tr>";
		var j = 1;
		for(var i in items){
			if(j == 1){
				citys = citys + "<tr>";
			}
			citys = citys + "<td class='textR' style='padding-top:10px;padding-bottom:10px;'>"
							+"<div class='icheckbox_square-green hover' onclick='cityId(this)' id='"+items[i].id+"'>"
								+"<input type='hidden' value='city'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL'><font size='2'>"+items[i].value+"</font></td>";
			if(j == 4){
				citys = citys + "</tr>";
				j = 1;
			}else{
				j = j+1;
			}
		}
		citys = citys + "";
		document.getElementById('city').innerHTML=citys;
	}
	function cityId(obj){
		if(obj.getAttribute('class') == "icheckbox_square-green checked"){
			obj.setAttribute("class","icheckbox_square-green hover");
		}
		else if(obj.getAttribute('class') == "icheckbox_square-green hover"){
			obj.setAttribute("class","icheckbox_square-green checked");
		}
	}
	function selected(obj){
		$(".circleA").each(function () {
			if(obj.id.indexOf('j') > -1 && this.id.indexOf('j') > -1){
				this.setAttribute("class","circleB");
			}
			if(obj.id.indexOf('i') > -1 && this.id.indexOf('i') > -1){
				this.setAttribute("class","circleB");
			}
		});
		obj.setAttribute("class","circleA");
		if(obj.id.indexOf('j') > -1){
			document.getElementById("jobstatus").value=obj.id;
		}
		if(obj.id.indexOf('i') > -1){
			document.getElementById("intime").value=obj.id;
		}
	}
	//职位
	function jobId(job){
		var jobNum = 1;
		if(job.getAttribute('class') == "icheckbox_square-green checked"){
			delworkyears(job);
			job.setAttribute("class","icheckbox_square-green hover");
		}
		else if(job.getAttribute('class') == "icheckbox_square-green hover"){
			$(".checked").each(function () {
				jobNum = jobNum + 1;
	        });
			if(jobNum > 2){
				alert("最多选择两项");
				return;
			}
			addworkyears(job);
			job.setAttribute("class","icheckbox_square-green checked");
		}
	}
	//职位年限
	function addworkyears(obj){
		var jobId;
		var jobName;
		var jobtitle;
		if(document.getElementById("job1").getElementsByTagName("td")[0] == undefined){
			jobId = "job1";
			jobName = "jobyear1";
			jobtitle = "job1_title";
		}else if(document.getElementById("job2").getElementsByTagName("td")[0] == undefined){
			jobId = "job2";
			jobName = "jobyear2";
			jobtitle = "job2_title";
		}
		document.getElementById(jobtitle).innerHTML = "<td colspan='2'>您在"+obj.getElementsByTagName("input")[0].value+"岗位上有多长时间的工作经验</td>";
		document.getElementById(jobId).innerHTML = ""
		 +"<td class='textL'>"
		 	+"<div class='input-group' style='margin-left:-10px !important;width: 90% !important'>"
				+"<div class='dropdown'>"
			 		+"<input type='text' name='"+jobName+"' id='"+jobName+"' class='form-control' style='width: 80% !important'>"
			 		+"<button type='button' style='height:34px !important;background-color:#E6E6E6;' class='btn dropdown-toggle' id='dropdownMenu1' data-toggle='dropdown'>"
			 			+"<span class='caret'></span>"
			 		+"</button>"
				 	+"<ul class='dropdown-menu' role='menu' aria-labelledby='dropdownMenu1' style='width: 90% !important'>"
				 		+"<li role='presentation'>"
				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('1年','"+jobName+"')\"><font color='#000'>1年</font></a>"
				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('一至三年','"+jobName+"')\"><font color='#000'>一至三年</font></a>"
				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('三至五年','"+jobName+"')\"><font color='#000'>三至五年</font></a>"
				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('五年以上','"+jobName+"')\"><font color='#000'>五年以上</font></a>"
				 		+"</li>"
				 	+"</ul>"
		 		+"</div>"
		 	+"</div>"
		 +"</td>"
		 ;
	}
	function editworkyears(jobId, jobN, a){
		var jobId;
		var jobName;
		var jobtitle;
		if(a == 1){
			jobId = "job1";
			jobName = "jobyear1";
			jobtitle = "job1_title";
		}
		if(a == 2){
			jobId = "job2";
			jobName = "jobyear2";
			jobtitle = "job2_title";
		}
		document.getElementById(jobtitle).innerHTML = "<td colspan='2'>您在"+jobN+"岗位上有多长时间的工作经验</td>";
		document.getElementById(jobId).innerHTML = ""
		 +"<td class='textL'>"
		 	+"<div class='input-group' style='margin-left:-10px !important;width: 90% !important'>"
				+"<div class='dropdown'>"
			 		+"<input type='text' name='"+jobName+"' id='"+jobName+"' class='form-control' style='width: 80% !important'>"
			 		+"<button type='button' style='height:34px !important;background-color:#E6E6E6;' class='btn dropdown-toggle' id='dropdownMenu1' data-toggle='dropdown'>"
			 			+"<span class='caret'></span>"
			 		+"</button>"
				 	+"<ul class='dropdown-menu' role='menu' aria-labelledby='dropdownMenu1' style='width: 90% !important'>"
				 		+"<li role='presentation'>"
				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('1年','"+jobName+"')\"><font color='#000'>1年</font></a>"
				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('一至三年','"+jobName+"')\"><font color='#000'>一至三年</font></a>"
				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('三至五年','"+jobName+"')\"><font color='#000'>三至五年</font></a>"
				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('五年以上','"+jobName+"')\"><font color='#000'>五年以上</font></a>"
				 		+"</li>"
				 	+"</ul>"
		 		+"</div>"
		 	+"</div>"
		 +"</td>"
		 ;
	}
	function delworkyears(job){
		var title="您在"+job.getElementsByTagName("input")[0].value+"岗位上有多长时间的工作经验";
		if(document.getElementById("job1_title").innerText == title){
			document.getElementById("job1_title").innerHTML = "";
			document.getElementById("job1").innerHTML = "";
		}else if(document.getElementById("job2_title").innerText == title){
			document.getElementById("job2_title").innerHTML = "";
			document.getElementById("job2").innerHTML = "";
		}
	}
	function workTime(jobval,jobName){
		document.getElementById(jobName).value=jobval;
	}
</script>
<body bgcolor="#FFF" onload="test()">
	<div style="width:100%;">
		<table width="100%">
			<tr height="49px"/>
			<tr>
				<td width="40px"/>
				<td colspan="2">
					<font style="font-size:20px;" color="#4F4F4F">技能</font>
				</td>
				<td/>
			</tr>
			<tr height="48px"/>
			<tr>
				<td/>
				<td>
					<font color="#4F4F4F" style="font-size:14px;" >你的职业方向是？</font><font color="#00B38A">*</font>
				</td>
			</tr>
			<tr height="16px"/>
			<tr>
				<td/>
				<td colspan="3">
					<div class="input-group" style="width:56%;">
						<div class="dropdown" style="width:100%;min-width:237px;">
							<input type="text" readOnly="readOnly" class="form-control" style="width:90%;min-width:200px;">
						    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 100% !important;min-width:237px;">
						    </ul>
						</div>
					</div>
				</td>
			</tr>
			<tr height="48px"/>
			<tr>
				<td/>
				<td>
					<font color="#4F4F4F" style="font-size:16px;" >工作年限</font><font color="#00B38A">*</font>
				</td>
			</tr>
			<tr height="13px"/>
			<tr>
				<td/>
				<td colspan="3">
					<div class="input-group" style="width:56%;">
						<div class="dropdown" style="width:100%;min-width:237px;">
							<input type="text" readOnly="readOnly" class="form-control" style="width:90%;min-width:200px;">
						    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						        <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 100% !important;min-width:237px;">
						    </ul>
						</div>
					</div>
				</td>
			</tr>
			<tr height="56px"/>
			<tr>
				<td/>
				<td>
					<font color="#4F4F4F" style="font-size:16px;" >您期望的工作岗位是？（最多选择两项）</font><font color="#00B38A">*</font>
					<input type="hidden" id="jobs" name="jobs"/>
				</td>
			</tr>
			<tr height="13px"/>
			<tr>
				<td/>
				<td colspan="3" id="checkJob">
				</td>
			</tr>
			<tr id="job1_title"/>
			<tr id="job1"/>
			<tr id="job2_title"/>
			<tr id="job2"/>
			<tr height="48px"/>
			<tr>
				<td/>
				<td>
					<font color="#4F4F4F" style="font-size:16px;" >您擅长哪些工作技能？（请用逗号分隔你的技能特长）</font><font color="#00B38A">*</font>
				</td>
			</tr>
			<tr height="13px"/>
			<tr>
				<td/>
				<td colspan="3">
					<input type="text" name="offerUserDescription" id="offerUserDescription" class="form-control" style="width: 56% !important">
				</td>
			</tr>
			<tr height="50px"/>
			<tr>
				<td/>
				<td colspan="3" class="textC">
					<button type="button" class="btn btn-primary" data-toggle="button"
						style="font-size:14px;border-color:#CCCCCC;color:#4F4F4F;background-color:#CCCCCC;min-width:140px;">
						取消
					</button>
					<button type="button" class="btn btn-primary" data-toggle="button"
						style="margin-left:19px;font-size:14px;color:#FFF;background-color:#00B389;min-width:140px;">
						保存
					</button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:50px;"></div>
</body>
</html>