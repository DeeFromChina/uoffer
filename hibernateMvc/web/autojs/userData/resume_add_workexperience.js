function init() {
	parent.document.getElementById("iframe3").height=document.body.scrollHeight;
	parent.document.getElementById("myTabContent").style.height=document.body.scrollHeight;
	parent.dataFormVcenter();
	parent.countFrameHeight();
}
//下一步
function goNext(){
	var url = "userData.do?action=userExperience";
	var formId = "dataForm";
	var data = ajaxSumbit(url,formId);
	$(window.parent.document.getElementById("page4")).click();
}
//上一步
function goBack(){
	$(window.parent.document.getElementById("page2")).click();
}

function addDiv(){
	var str = '';
	var baseImg = pages["imgPath"];
	for(var i in items){
		str += '<div class="detail">'
				+ '<table>'
					+ '<tr>'
						+ '<td class="w30">'
							+ '<img src="'+baseImg+'firm.png" class="wh-18"/>'
						+ '</td>'
						+ '<td>'
							+ '<font class="font-14">'+items[i].title+'</font>'
						+ '</td>'
						+ '<td class="textR w140">'
							+'<font class="font-14">'+items[i].time+'</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td rowspan="3"></td>'
						+ '<td colspan="2">'+items[i].name+'</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td colspan="2">'
							+ '<font class="font-14">'
								+ items[i].description
							+ '</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td colspan="2">'
							+ '<font class="font-14">'+items[i].description2+'</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td></td>'
						+ '<td colspan="2">'
							+ '<div class="editBtn floatR">'
								+ '<img src="'+baseImg+'bianji.png" class="hand"/>'
								+ '<a><font class="testbtn hand">编辑</font></a>'
							+ '</div>'
							+ '<div class="editBtn floatR">'
								+ '<img src="'+baseImg+'lajitong.png" class="hand"/>'
								+ '<a><font class="testbtn hand">删除</font></a>'
							+ '</div>'
						+ '</td>'
					+ '</tr>'
				+ '</table>'
			+ '</div>';
	}
}
function addForm(type){
	var url = "userData/resume_add_workexperience_add.jsp";
	var title = "new";
	var width = "600";
	var height = "400";
	var data = "?type="+type;
	openWindow(url+data,title,width,height,"true",window.parent.document);
	$(window.parent.document.getElementById('dataForm')).append('<div id="dataFormDisDiv" class="modal-backdrop fade in"></div>');
}
function addmsgDivEdus(items){
	var div1 = "";
	var j = 0;
	for(var i in items){
		div1 = div1 + "<div style='width:100%' onmouseover='appacerdivEdus(this)' id='edus_"+i+"' style='min-height:75px;'>"
						+"<table width='100%' style='border-collapse: separate; border-spacing: 10px;' id=''>"
							+"<tr height='30px'/>"
							+"<tr>"
							+"<td width='34px' rowspan='3' valign='top'><img src='../img/firm.png' width='18px' height='18px'/></td>"
								+"<td width='55%'>"
									+"<font color='#4F4F4F' style='font-size:14px;' >"+items[i].schoolName+"</font>"
								+"</td>"
								+"<td class='textR' valign='top' style='padding-top:5px;padding-right:20px;'>"
									+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].studstart +"~"+items[i].studend+"</font>"
								+"</td>"
							+"</tr>"
							+"<tr>"
								+"<td>"
									+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].xueli +"</font>"
								+"</td>"
								+"<td/>"
							+"</tr>"
							+"<tr>"
								+"<td>"
									+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].zhuanye +"</font>"
								+"</td>"
								+"<td/>"
							+"</tr>"
						+"</table>"
					+"</div>"
					+"<div style='width:100%;z-index:9999;display:none;' onmouseout='displaydiv(this)' id='eEdus_" + i + "'>"
						+"<table width='100%' style='height:100%;'>"
							+"<tr>"
								+"<td width='90%'/>"
								+"<td width='100px'>"
									+"<img src='../img/lajitong.png' id='delEdus_"+items[i].thisId+"' onclick='delEdu(this)'/>"
									/* +"<button type='button' class='btn btn-primary' data-toggle='button' id='delEdus_"+items[i].thisId+"' onclick='delEdu(this)'"
									+"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>"
									+"删除"
									+"</button>" */
								+"</td>"
								+"<td width='100px'>"
									+"<img src='../img/bianji.png' id='editEdus_"+items[i].thisId+"' onclick='editEdu(this)'/>"
									/* +"<button type='button' class='btn btn-primary' data-toggle='button' id='editEdus_"+items[i].thisId+"' onclick='editEdu(this)'"
									+"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>"
									+"编辑"
									+"</button>" */
								+"</td>"
								+"<td width='3%'/>"
							+"</tr>"
						+"</table>"
					+"</div>";
	}
	document.getElementById("msgDivEdus").innerHTML=div1;
}
function addmsgDivWorks(items){
	var div1 = "";
	var j = 0;
	for(var i in items){
		div1 = div1 + "<div style='width:100%' onmouseover='appacerdivWorks(this)' id='works_"+i+"' style='min-height:75px;'>"
						+"<table width='100%' style='border-collapse: separate; border-spacing: 10px;'>"
							+"<tr height='30px'/>"
							+"<tr>"
								+"<td width='34px' rowspan='3' valign='top'><img src='../img/firm.png' width='18px' height='18px'/></td>"
								+"<td width='55%'>"
									+"<font color='#4F4F4F' style='font-size:14px;' >"+items[i].firmName+"</font>"
								+"</td>"
								+"<td class='textR' valign='top' style='padding-top:5px;padding-right:20px;'>"
									+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].jobstart+"~"+items[i].jobend+"</font>"
								+"</td>"
							+"</tr>"
							+"<tr>"
								+"<td>"
									+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].jobName+"</font>"
								+"</td>"
								+"<td/>"
							+"</tr>"
							+"<tr>"
								+"<td>"
									+"<font color='#9A9A9A' style='font-size:14px;' >"+items[i].workcontent+"</font>"
								+"</td>"
								+"<td/>"
							+"</tr>"
						+"</table>"
					+"</div>"
					+"<div style='width:100%;z-index:9999;display:none;' onmouseout='displaydiv(this)' id='eWorks_"+i+"'>"
						+"<table width='100%' style='height:100%;'>"
							+"<tr>"
								+"<td width='90%'/>"
								+"<td width='100px'>"
									+"<img src='../img/lajitong.png' id='delWorks_"+items[i].thisId+"' onclick='delWork(this)'/>"
									/* +"<button type='button' class='btn btn-primary' data-toggle='button' id='delWorks_"+items[i].thisId+"' onclick='delWork(this)'"
									+"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>"
									+"删除"
									+"</button>" */
								+"</td>"
								+"<td width='100px'>"
									+"<img src='../img/bianji.png' id='editWorks_"+items[i].thisId+"' onclick='editWork(this)'/>"
									/* +"<button type='button' class='btn btn-primary' data-toggle='button' id='editWorks_"+items[i].thisId+"' onclick='editWork(this)'"
									+"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>"
									+"编辑"
									+"</button>" */
								+"</td>"
								+"<td width='3%'/>"
							+"</tr>"
						+"</table>"
					+"</div>";
	}
	document.getElementById("msgDivWorks").innerHTML=div1;
}






var dataName;
	var worksNum;
	var edusNum;
	//头部
	function saveDataWork(ispass) {
		if (ispass) {
			if(!checkValueWork()) return;
			if(checkToNow('work')) return;
			var url = "user/saveresumeAddWorkexperience1.do";
			var formId = "resumeAddWorkexperienceForm1";
			var data = ajaxSumbit(url, formId);
			if(data == 'error'){
				alert('保存错误！');
			}
			else {
				document.getElementById("reset1").click();
				document.getElementById("offerUserWorksId").value = "";
				addmsgDivWorks(data.otherWorks);
				worksNum = data.otherWorks.length;
			}
		}
		else {
			document.getElementById("offerUserWorksId").value = "";
			document.getElementById("reset1").click();
			var url = "user/getAllWorks.do";
			var formId = "resumeAddWorkexperienceForm1";
			var data = ajaxSumbit(url, formId);
			if(data == 'error'){
				alert('数据访问出错!');
			}
			else {
				addmsgDivWorks(data.otherWorks);
				worksNum = data.otherWorks.length;
			}
		}
		document.getElementById("xiaoshi1").style.display="none";
		document.getElementById("addworkbutton").style.display="";
	}
	function saveDataEdu(ispass) {
		if (ispass) {
			if(!checkValueEdu()) return;
			if(checkToNow('edu')) return;
			var url = "user/saveresumeAddWorkexperience2.do";
			var formId = "resumeAddWorkexperienceForm2";
			var data = ajaxSumbit(url, formId);
			if(data == 'error'){
				alert('保存错误！');
			}
			else {
				document.getElementById("reset2").click();
				document.getElementById("offerUserEducationId").value = "";
				addmsgDivEdus(data.otherEducate);
				edusNum = data.otherEducate.length;
			}
		}
		else {
			document.getElementById("offerUserEducationId").value = "";
			document.getElementById("reset2").click();
			var url = "user/getAllEdus.do";
			var formId = "resumeAddWorkexperienceForm2";
			var data = ajaxSumbit(url, formId);
			if(data == 'error'){
				alert('数据访问出错!');
			}
			else {
				addmsgDivEdus(data.otherEducate);
				edusNum = data.otherEducate.length;
			}
		}
		document.getElementById("xiaoshi2").style.display="none";
		document.getElementById("addedusbutton").style.display="";
	}
	function resetOne(ispass){
		if(ispass){
			if(confirm("要保存数据吗？")){
				var url = "user/saveresumeAddWorkexperience1.do";
				var formId = "resumeAddWorkexperienceForm1";
				var data = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("offerUserWorksId").value = "";
		document.getElementById("reset1").click();
	}
	function resetTwo(ispass){
		if(ispass){
			if(confirm("要保存数据吗？")){
				var url = "user/saveresumeAddWorkexperience2.do";
				var formId = "resumeAddWorkexperienceForm2";
				var data = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("offerUserEducationId").value = "";
		document.getElementById("reset2").click();
	}
	function goSumbit(){
		if (checkValueWorkKuang() || checkValueEduKuang()) {
			var data1;
			var data2;
			if (checkValueWorkKuang()) {
				if(!checkValueWork()) return;
				if(checkToNow('work')) return;
				var url = "user/saveWork.do";
				var formId = "resumeAddWorkexperienceForm1";
				data1 = ajaxSumbit(url, formId);
			}
			if (checkValueEduKuang()) {
				if(!checkValueEdu()) return;
				if(checkToNow('edu')) return;
				var url = "user/saveEdu.do";
				var formId = "resumeAddWorkexperienceForm2";
				data2 = ajaxSumbit(url, formId);
			}
			if (data1 == 'success' && data2 == 'success'){
				top.location.href='resume_add_questionnaire.jsp';
			}
			else {
				if (data1 == undefined || data2 == undefined) {
					if (data1 == undefined && edusNum == 0) {
						alert('工作经历至少要有一例！');
						return;
					}
					if (data2 == undefined && worksNum == 0) {
						alert('教育经历至少要有一例！');
						return;
					}
					top.location.href='resume_add_questionnaire.jsp';
				}
				else {
					alert("保存错误!");
					return;
				}
			}
		}
		else {
			if (worksNum > 0 && edusNum > 0) {
				top.location.href='resume_add_questionnaire.jsp';
			}
			else {
				alert('教育经历和工作经历都至少要有一例！');
				return;
			}
		}
	}
	function booleanInfot(url){
		if(dataName == '1'){
			top.location.href=url;
		}else{
			alert("请先填写好您的简历信息！");
		}
	}
	function checkValueWork(){
		if(!checkInput('firmName',"公司名称","30",false)) return false;
		if(!checkInput('jobName',"职位名称","30",false)) return false;
		if(!checkInput('jobstart',"开始","30",false)) return false;
		return true;
	}
	function checkValueEdu(){
		if(!checkInput('schoolName',"学校名称","30",false)) return false;
		if(!checkInput('xueli',"学历","30",false)) return false;
		if(!checkInput('studstart',"开始","30",false)) return false;
		return true;
	}
	
	function appacerdivEdus(obj){
		obj.style.height=obj.offsetHeight;
		var id = "eEdus_"+obj.id.split('_')[1];
		document.getElementById(id).style.display="";
		if(document.getElementById(id).style.heigh != undefined){
			return;
		}
		document.getElementById(id).style.height=obj.offsetHeight-30;
		document.getElementById(id).style.marginTop=0-obj.offsetHeight+30 +"px";
	}
	function appacerdivWorks(obj){
		obj.style.height=obj.offsetHeight;
		var id = "eWorks_"+obj.id.split('_')[1];
		document.getElementById(id).style.display="";
		if(document.getElementById(id).style.heigh != undefined){
			return;
		}
		document.getElementById(id).style.height=obj.offsetHeight-30;
		document.getElementById(id).style.marginTop=0-obj.offsetHeight+30 +"px";
	}
	function displaydiv(obj){
		obj.style.display="none";
	}
	function delWork(obj) {
		if(confirm("真的要删除吗？")) {
			document.getElementById('offerUserWorksId').value = obj.id.split('_')[1];
			var url = "user/delWork.do";
			var formId = "resumeAddWorkexperienceForm1";
			var data2 = ajaxSumbit(url, formId);
			document.getElementById('offerUserWorksId').value = "";
			if(data2 == 'success'){
				init();
			}
			else {
				alert("操作失败！");
			}
		}
	}
	function delEdu(obj) {
		if(confirm("真的要删除吗？")) {
			document.getElementById('offerUserEducationId').value = obj.id.split('_')[1];
			var url = "user/delEducation.do";
			var formId = "resumeAddWorkexperienceForm2";
			var data2 = ajaxSumbit(url, formId);
			document.getElementById('offerUserEducationId').value = "";
			if(data2 == 'success'){
				init();
			}
			else {
				alert("操作失败！");
			}
		}
	}
	/* function checkDate(str, start, end, name) {//放在ajaxSubmit.js里面
		var flag = false;
		var date = new Date;
		var year = date.getFullYear(); 
		var month = date.getMonth()+1;
		if (str == 'check') {
			if (start.split('-')[0] > year) {
				alert(name + "开始年份大于结束年份！");
				flag = true;
			}
			else if (start.split('-')[0] == year) {
				if (start.split('-')[1] > month) {
					alert(name + "开始月份大于结束月份！");
					flag = true;
				}
			}
		}
		else {
			if (start.split('-')[0] > end.split('-')[0]) {
				alert(name + "开始年份大于结束年份！");
				flag = true;
			}
			else if (start.split('-')[0] == end.split('-')[0]) {
				if (start.split('-')[1] > end.split('-')[1]) {
					alert(name + "开始月份大于结束月份！");
					flag = true;
				}
			}
		}
		return flag;
	}
	function checkToNow(str) {
		if (str == 'work') {
			var jobstart = document.getElementById("jobstart").value;
			var jobend = document.getElementById("jobend").value;
			if (document.getElementById("toNowWork").checked == true) {
				document.getElementById("toNow1").value = "true";
				return checkDate("check", jobstart, "", "工作");
			}
			else {
				document.getElementById("toNow1").value = "false";
				return checkDate("noCheck", jobstart, jobend, "工作");
			}
		}
		else {
			var studstart = document.getElementById("studstart").value;
			var studend = document.getElementById("studend").value;
			if (document.getElementById("toNowEdu").checked == true) {
				document.getElementById("toNow2").value = "true";
				return checkDate("check", studstart, "", "教育");
			}
			else {
				document.getElementById("toNow2").value = "false";
				return checkDate("noCheck", studstart, studend, "教育");
			}
		}
	} */
	function editWork(obj) {
		if (checkValueWorkKuang()) {
			if(confirm("是否先保存下面的数据？")) {
				if(!checkValueWork()) return;
				if(checkToNow('work')) return;
				var url = "user/saveresumeAddWorkexperience1.do";
				var formId = "resumeAddWorkexperienceForm1";
				var data = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("reset1").click();
		document.getElementById("offerUserWorksId").value = obj.id.split('_')[1];
		var url = "user/getNowWork.do";
		var formId = "resumeAddWorkexperienceForm1";
		var data = ajaxSumbit(url, formId);
		var toNow = data.toNow;
		if (toNow == 'true') {
			document.getElementById("toNowWork").checked = true;
			document.getElementById("jobend").setAttribute("disabled", true);
		}
		else {
			document.getElementById("toNowWork").checked = false;
			document.getElementById("jobend").removeAttribute("disabled");
		}
		addmsgDivWorks(data.otherWorks);
		document.getElementById("xiaoshi1").style.display="block";
		$("#resumeAddWorkexperienceForm1").populateForm(data);
	}
	function editEdu(obj) {
		if (checkValueEduKuang()) {
			if(confirm("是否先保存下面的数据？")) {
				if(!checkValueEdu()) return;
				if(checkToNow('edu')) return;
				var url = "user/saveresumeAddWorkexperience2.do";
				var formId = "resumeAddWorkexperienceForm2";
				var data2 = ajaxSumbit(url, formId);
			}
		}
		document.getElementById("reset2").click();
		document.getElementById("offerUserEducationId").value = obj.id.split('_')[1];
		var url = "user/getNowEducation.do";
		var formId = "resumeAddWorkexperienceForm2";
		var data = ajaxSumbit(url, formId);
		var toNow = data.toNow;
		if (toNow == 'true') {
			document.getElementById("toNowEdu").checked = true;
			document.getElementById("studend").setAttribute("disabled", true);
		}
		else {
			document.getElementById("toNowEdu").checked = false;
			document.getElementById("studend").removeAttribute("disabled");
		}
		addmsgDivEdus(data.otherEducate);
		document.getElementById("xiaoshi2").style.display="block";
		$("#resumeAddWorkexperienceForm2").populateForm(data);
	}
	function checkValueWorkKuang() {
		var flag = false;
		var strings = "firmName,jobName,jobstart,jobend,workcontent";
		for (var i in strings.split(',')) {
			if (document.getElementById(strings.split(',')[i]).value != "") {
				flag = true;
				break;
			}
		}
		return flag;
	}
	function goAddWorks() {
		document.getElementById("xiaoshi1").style.display="block";
		document.getElementById("addworkbutton").style.display="none";
		//if (!checkValueWorkKuang()) return;
		/* if (confirm("是否先保存下面的数据？")) {
			if(!checkValueWork()) return;
			if(checkToNow('work')) return;
			var url = "user/saveresumeAddWorkexperience1.do";
			var formId = "resumeAddWorkexperienceForm1";
			var data2 = ajaxSumbit(url, formId);
		} */
		document.getElementById("reset1").click();
		document.getElementById("offerUserWorksId").value = "";
		var url = "user/getNewWork.do";
		var formId = "resumeAddWorkexperienceForm1";
		var data = ajaxSumbit(url, formId);
		addmsgDivWorks(data.otherWorks);
	}
	function checkValueEduKuang() {
		var flag = false;
		var strings = "schoolName,xueli,studstart,studend,zhuanye";
		for (var i in strings.split(',')) {
			if (document.getElementById(strings.split(',')[i]).value != "") {
				flag = true;
				break;
			}
		}
		return flag;
	}
	function goAddEdus() {
		document.getElementById("xiaoshi2").style.display="block";
		//if (!checkValueEduKuang()) return;
		/* if (confirm("是否先保存下面的数据？")) {
			if(!checkValueEdu()) return;
			if(checkToNow('edu')) return;
			var url = "user/saveresumeAddWorkexperience2.do";
			var formId = "resumeAddWorkexperienceForm2";
			var data2 = ajaxSumbit(url, formId);
		} */
		document.getElementById("reset2").click();
		document.getElementById("offerUserEducationId").value = "";
		var url = "user/getNewEducation.do";
		var formId = "resumeAddWorkexperienceForm2";
		var data = ajaxSumbit(url, formId);
		addmsgDivEdus(data.otherEducate);
		document.getElementById("addedusbutton").style.display="none";
	}
	function goCheck(ret,red){
		if(document.getElementById(red).checked){
			document.getElementById(ret).value="";
			document.getElementById(ret).setAttribute("disabled", true);
		}else{
			document.getElementById(ret).removeAttribute("disabled");
		}
	}