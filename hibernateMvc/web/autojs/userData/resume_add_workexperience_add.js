var userResumeId = loadValue("userResumeId");
function init(){
	setMap();
	var type = map["type"];
	if(type == 'work'){
		$("#name").html("公司名称 :");
		$("#time").html("工作时间 :");
		$("#job").html("担任职位:");
		$("#jobDescription").html("工作描述:");
		$("#jobBelongTitle").html("所属行业:");
		$("#levelName").html("公司性质:");
		$("#descript1").html("公司联系人及联系方式:");
		$("#descript2").html("公司描述:");
		setList("level","请选择公司性质",jQuery.parseJSON(companyNature),0,"","w340");
	}
	if(type == 'edu'){
		$("#name").html("学校名称 :");
		$("#time").html("学习时间 :");
		$("#job").html("专业 :");
		$("#jobDescription").html("专业描述:");
		$("#jobBelongTitle").html("所属行业:");
		$("#levelName").html("学历:");
		$("#descript1").html("掌握技能:");
		$("#descript2").html("曾获奖项:");
		setList("level","请选择学历",jQuery.parseJSON(education),0,"","w340");
	}
	$(".form_datetime").datetimepicker({
	    format: "yyyy-mm-dd",
	    autoclose:true,
	    startView: 'month',
	    minView:'month',
	    maxView:'decade',
	    language:'zh-CN'
	});
	setForm();
}
function setForm(){
	var userExperienceId = map["userExperienceId"];
	var url = "userData.do?action=queryUserExperience&userExperienceId="+userExperienceId;
	var data = ajaxSumbit(url);
	if(data == undefined){
		return;
	}
	var startTime = getLocalTime(data.startTime,"yyyy-MM-dd");
	var endTime = getLocalTime(data.endTime,"yyyy-MM-dd");
	data.startTime = startTime;
	data.endTime = endTime;
	$("#dataForm").populateForm(data);
	
	setElementValue("level",data.level,'select');
}
function selectJob(){
	var url = "public/job_checkbox.jsp";
	var title = "选择您的求职方向";
	var width = "600";
	var height = "400";
	var type = "1";
	var data = "?type="+type+"&isMultiselect=false";
	var pageId = "jobCheckbox";
	openWindow(pageId,url+data,title,width,height);
}
function history(){
	var type = map["type"];
	var url = "userData/resume_history_demo.jsp?type="+type;
	var title = "选择您的历史模板";
	var width = "600";
	var height = "400";
	var pageId = "history_demo";
	openWindow(pageId,url,title,width,height);
}
function closeListener(){
	var ids = loadValue("ids");
	var values = loadValue("values");
	if(ids != undefined && values != undefined){
		removeValue("ids");
		removeValue("values");
		$("#jobBelong").val(ids);
		$("#jobBelongName").val(values);
	}
	var demoId = loadValue("demoId");
	if(demoId != undefined){
		removeValue("demoId");
		var userExperienceId = map["userExperienceId"];
		map["userExperienceId"] = demoId;
		setForm();
		$("#userExperienceId").val(userExperienceId);
		map["userExperienceId"] = userExperienceId;
	}
}
function goSubmit(){
	var type = map["type"];
	if(userResumeId != undefined){
		type += "&userResumeId="+userResumeId;
	}
	var url = "userData.do?action=saveUserExperience&type="+type;
	var formId = "dataForm";
	var data = ajaxSumbit(url,formId);
	var targetDocument = loadValue("userExperience");
	targetDocument.getElementById("userResumeId").value = data;
	closeWin("userExperience");
}
