var userResumeId = loadValue("userResumeId");
function init() {
	setValue();
	search();
	
	parent.document.getElementById("iframe3").height=document.body.scrollHeight;
	if(document.body.scrollHeight > $(parent.document.getElementById("myTabContent")).height()){
		$(parent.document.getElementById("myTabContent")).height(document.body.scrollHeight);
	}
	parent.dataFormVcenter();
	parent.countFrameHeight();
}
function setValue(){
	if(userResumeId != undefined){
		$("#userResumeId").val(userResumeId);
	}
}
function search(){
	var userResumeId = $("#userResumeId").val();
	var url = "userData.do?action=userExperienceList&type=work&userResumeId="+userResumeId;
	ajaxSumbit(url, "", 1);
	
	url = "userData.do?action=userExperienceList&type=edu&userResumeId="+userResumeId;
	ajaxSumbit(url, "", 2);
}
function addDiv(items,type){
	if(items == undefined){
		return;
	}
	var str = '';
	var baseImg = pages["imgPath"];
	var jobDescription = "";
	if(type == 'work'){
		jobDescription = "工作描述:";
	}
	if(type == 'edu'){
		jobDescription = "专业描述:";
	}
	for(var i in items){
		var user
		var level = "";
		if(type == 'work'){
			level = getWord(companyNature,returnString(items[i].level));
		}
		if(type == 'edu'){
			level = getWord(education,returnString(items[i].level));
		}
		var startTime = getLocalTime(items[i].startTime,"yyyy/MM/dd");
		var endTime = getLocalTime(items[i].endTime,"yyyy/MM/dd");
		str += '<div class="detail">'
				+ '<table>'
					+ '<tr>'
						+ '<td class="w30">'
							+ '<img src="'+baseImg+'firm.png" class="wh-18"/>'
						+ '</td>'
						+ '<td>'
							+ '<font class="font-14">'+items[i].name+'</font>'
						+ '</td>'
						+ '<td class="textR w140">'
							+'<font class="font-14">'+startTime+'~'+endTime+'</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td rowspan="6"></td>'
						+ '<td colspan="2">'+returnString(items[i].jobName)+'</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td colspan="2" class="font-14">'+jobDescription+'</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td colspan="2">'
							+ '<font class="font-14">'
								+ returnString(items[i].jobDescription)
							+ '</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td colspan="2" class="color9A9A9A">'
							+returnString(items[i].jobBelong)
							+"|"
							+level
						+'</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td colspan="2">'
							+ '<font class="font-14">'
								+ returnString(items[i].descript1)
							+ '</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td colspan="2">'
							+ '<font class="font-14">'+returnString(items[i].descript2)+'</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td></td>'
						+ '<td colspan="2">'
							+ '<div class="editBtn floatR" onclick="editForm(\''+items[i].id+'\',\''+type+'\')">'
								+ '<img src="'+baseImg+'bianji.png" class="hand"/>'
								+ '<a><font class="testbtn hand">编辑</font></a>'
							+ '</div>'
							+ '<div class="editBtn floatR" onclick="delForm(\''+items[i].id+'\')">'
								+ '<img src="'+baseImg+'lajitong.png" class="hand"/>'
								+ '<a><font class="testbtn hand">删除</font></a>'
							+ '</div>'
						+ '</td>'
					+ '</tr>'
				+ '</table>'
			+ '</div>';
	}
	return str;
}
function addForm(type){
	var url = "userData/resume_add_workexperience_add.jsp";
	var title = "";
	if(type == 'work'){
		title = "工作信息填写";
	}
	if(type == 'edu'){
		title = "工作信息填写";
	}
	var width = "600";
	var height = "400";
	var data = "?type="+type;
	var pageId = "userExperience";
	openWindow(pageId,url+data,title,width,height);
}
function editForm(userExperienceId,type){
	var url = "userData/resume_add_workexperience_add.jsp";
	var title = "";
	if(type == 'work'){
		title = "工作信息填写";
	}
	if(type == 'edu'){
		title = "工作信息填写";
	}
	var width = "600";
	var height = "400";
	var data = "?type="+type+"&userExperienceId="+userExperienceId;
	var pageId = "userExperience";
	openWindow(pageId,url+data,title,width,height);
}
function delForm(userExperienceId){
	var url = "userData.do?action=delUserExperience&userExperienceId="+userExperienceId;
	ajaxSumbit(url);
	init();
}
function closeListener(){
	init();
}
//下一步
function goNext(){
	var url = "userData.do?action=userExperience";
	var formId = "dataForm";
	ajaxSumbit(url,formId);
	$(window.parent.document.getElementById("page4")).click();
}
//上一步
function goBack(){
	$(window.parent.document.getElementById("page2")).click();
}
function goSuccess(data, index){
	if(index == 1){
		if(data == undefined){
			return;
		}
		var str = addDiv(data,"work");
		$("#workDiv").html("");
		$("#workDiv").append(str);
	}else if(index == 2){
		if(data == undefined){
			return;
		}
		str = addDiv(data,"edu");
		$("#eduDiv").html("");
		$("#eduDiv").append(str);
	}
}

