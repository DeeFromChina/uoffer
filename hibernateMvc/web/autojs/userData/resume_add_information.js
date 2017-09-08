	function init() {
//		var url = "user/resumeAddInformationPage1.do";
//		var formId = "userInformationForm";
//		var data = ajaxSumbit(url, formId);
//		dataName = data.dataName;
//		addCheckJob(data.nowJobList);
//		if(data.offerUserName != undefined){
//			editCheckJob(data.jobId1,data.jobId2, data.jobvalue1, data.jobvalue2);
//			setSexValue(data.offerUserSex);
//		}
//		$("#userInformationForm").populateForm(data);
		parent.document.getElementById("iframe1").height=document.body.scrollHeight;
		parent.document.getElementById("myTabContent").style.height=document.body.scrollHeight;
		parent.dataFormVcenter();
		parent.countFrameHeight();
	}
	//性别
	function setSexValue(id) {
		if(id == 1){
			document.getElementById("sex1").style="color:#FFF;background-color:#00B38A;border-color:#00B38A;width:121px;height:41px;";
			document.getElementById("sex2").style="color:#00B38A;background-color:#FFF;border-color:#00B38A;width:121px;height:41px;";
			document.getElementById("offerUserSex").value="1";
		}
		if(id == 0){
			document.getElementById("sex2").style="color:#FFF;background-color:#00B38A;border-color:#00B38A;width:121px;height:41px;";
			document.getElementById("sex1").style="color:#00B38A;background-color:#FFF;border-color:#00B38A;width:121px;height:41px;";
			document.getElementById("offerUserSex").value="0";
		}
	}
	//工作年限
	function workTimeValue(time){
		document.getElementById("offerUserWorktime").value=time;
	}
	//添加职位
	function addCheckJob(items){
		var jobs = "<table width='100%'>";
		var j = 1;
		for(var i in items){
			if(j == 1){
				jobs = jobs + "<tr>";
			}
			jobs = jobs + "<td class='textL' style='padding-top:20px;padding-bottom:24px;width:29px;'>"
							+"<div class='icheckbox_square-green hover' onclick='jobId(this)' id='"+items[i].id+"'>"
								+"<input type='hidden' value='"+items[i].value+"'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL' style='padding-top:20px;padding-bottom:24px;'><font style='font-size:14px;color:#4F4F4F;'>&nbsp;&nbsp;"+items[i].value+"</font></td>";
			if(j == 4){
				jobs = jobs + "</tr>";
				j = 1;
			}else{
				j = j+1;
			}
		}
		jobs = jobs + "</table>";
		document.getElementById('checkJob').innerHTML=jobs;
		
	}
	function editCheckJob(job1, job2, jobname1, jobname2){
		if(job1 != undefined){
			document.getElementById(job1).setAttribute("class","icheckbox_square-green checked");
			editworkyears(job1, jobname1, 1);
		}
		if(job2 != undefined){
			document.getElementById(job2).setAttribute("class","icheckbox_square-green checked");
			editworkyears(job2, jobname2, 2);
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
			 		+"<input type='text' name='"+jobName+"' id='"+jobName+"' class='form-control' style='width: 340px;' readonly>"
			 		+"<button type='button' style='width:41px;height:41px !important;background-color:#F5F8F9;border:1px #CCCCCC solid;' class='btn dropdown-toggle' id='dropdownMenu1' data-toggle='dropdown'>"
			 			+"<span class='caret'></span>"
			 		+"</button>"
				 	+"<ul class='dropdown-menu' role='menu' aria-labelledby='dropdownMenu1' style='width: 381px;height:150px;overflow-y:auto;'>"
				 		+"<li role='presentation'>"
// 				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('1年','"+jobName+"')\"><font color='#4F4F4F'>1年</font></a>"
// 				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('一至三年','"+jobName+"')\"><font color='#4F4F4F'>一至三年</font></a>"
// 				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('三至五年','"+jobName+"')\"><font color='#4F4F4F'>三至五年</font></a>"
// 				 			+"<a role='menuitem' tabindex='-1' href='#' onclick=\"workTime('五年以上','"+jobName+"')\"><font color='#4F4F4F'>五年以上</font></a>"
 				 			+"<a role='menuitem' tabindex='-1' onclick=\"workTime('3年以下','"+jobName+"')\"><font color='#4F4F4F'>3年以下</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('3年','"+jobName+"')\"><font color='#4F4F4F'>3年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('4年','"+jobName+"')\"><font color='#4F4F4F'>4年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('5年','"+jobName+"')\"><font color='#4F4F4F'>5年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('6年','"+jobName+"')\"><font color='#4F4F4F'>6年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('7年','"+jobName+"')\"><font color='#4F4F4F'>7年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('8年','"+jobName+"')\"><font color='#4F4F4F'>8年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('9年','"+jobName+"')\"><font color='#4F4F4F'>9年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('10年','"+jobName+"')\"><font color='#4F4F4F'>10年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('10年以上','"+jobName+"')\"><font color='#4F4F4F'>10年以上</font></a>"
				 		+"</li>"
				 	+"</ul>"
		 		+"</div>"
		 	+"</div>"
		 +"</td>"
		 ;
		 click();
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
			 		+"<input type='text' name='"+jobName+"' id='"+jobName+"' class='form-control' style='width: 340px;' readonly>"
			 		+"<button type='button' style='width:41px;height:41px !important;background-color:#F5F8F9;border:1px #CCCCCC solid;' class='btn dropdown-toggle' id='dropdownMenu1' data-toggle='dropdown'>"
			 			+"<span class='caret'></span>"
			 		+"</button>"
				 	+"<ul class='dropdown-menu' role='menu' aria-labelledby='dropdownMenu1' style='width: 381px;height:150px;overflow-y:auto;'>"
				 		+"<li role='presentation'>"
// 				 			+"<a role='menuitem' tabindex='-1' onclick=\"workTime('1年','"+jobName+"')\"><font color='#4F4F4F'>1年</font></a>"
// 				 			+"<a role='menuitem' tabindex='-1' onclick=\"workTime('一至三年','"+jobName+"')\"><font color='#4F4F4F'>一至三年</font></a>"
// 				 			+"<a role='menuitem' tabindex='-1' onclick=\"workTime('三至五年','"+jobName+"')\"><font color='#4F4F4F'>三至五年</font></a>"
// 				 			+"<a role='menuitem' tabindex='-1' onclick=\"workTime('五年以上','"+jobName+"')\"><font color='#4F4F4F'>五年以上</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('3年以下','"+jobName+"')\"><font color='#4F4F4F'>3年以下</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('3年','"+jobName+"')\"><font color='#4F4F4F'>3年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('4年','"+jobName+"')\"><font color='#4F4F4F'>4年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('5年','"+jobName+"')\"><font color='#4F4F4F'>5年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('6年','"+jobName+"')\"><font color='#4F4F4F'>6年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('7年','"+jobName+"')\"><font color='#4F4F4F'>7年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('8年','"+jobName+"')\"><font color='#4F4F4F'>8年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('9年','"+jobName+"')\"><font color='#4F4F4F'>9年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('10年','"+jobName+"')\"><font color='#4F4F4F'>10年</font></a>"
							+"<a role='menuitem' tabindex='-1' onclick=\"workTime('10年以上','"+jobName+"')\"><font color='#4F4F4F'>10年以上</font></a>"
				 		+"</li>"
				 	+"</ul>"
		 		+"</div>"
		 	+"</div>"
		 +"</td>"
		 ;
		 click();
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
	function replaceAll(str, str1, str2) {
		var lstr = ""
		for (var i in str.split(str1)) {
			str = str.replace(str1, str2);
		}
		for (var i in str.split(str2)) {
			if (str.split(str2)[i] != '') lstr += str.split(str2)[i] + ",";
		}
		lstr = lstr.substring(0, lstr.length - 1);
		return lstr;
	}
	//下一步
	function goSubmit(){
		var jobs = "";
		$(".checked").each(function () {
			if(jobs != ""){
				jobs = jobs + ",";
			}
			jobs = jobs + this.id
        });
		document.getElementById("jobs").value=jobs;
		if(!checkValue()) return;
		var offerUserDescription = document.getElementById('offerUserDescription').value;
		offerUserDescription = replaceAll(offerUserDescription, "，", ",");
		document.getElementById('offerUserDescription').value = offerUserDescription;
		var url = "user/saveResumeAddInformation1.do";
		var formId = "userInformationForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			top.location.href='resume_add_planjob.jsp';
		}else{
			alert("保存出错！");
		}
	}
	function booleanInfot(url){
		if(dataName == '1'){
			top.location.href=url;
		}else{
			alert("请先填写好您的简历信息！");
		}
	}
	function checkValue(){
		if(!checkInput('offerUserName',"姓名","30",false)) return false;
		if(!checkInput('offerUserSex',"性别","30",false)) return false;
		if(!checkInput('offerUserWorktime',"工作年限","30",false)) return false;
		if(!checkInput('jobs',"工作岗位","30",false)) return false;
		if(!checkInput('offerUserDescription',"工作技能","200",true)) return false;
		if(!checkInput('offerUserZhihu',"知乎ID","30",true)) return false;
		if(!checkInput('offerUserBlog',"blog地址","30",true)) return false;
		if(!checkInput('offerUserGithub',"github账号","30",true)) return false;
		if(!checkInput('offerUserPersonWeb',"个人网站","30",true)) return false;
		return true;
	}