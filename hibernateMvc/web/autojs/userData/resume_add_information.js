var ishide = true;
var skill = "";
function init() {
	getTran('1');
	subWorkTime();
	var workTimeData = jQuery.parseJSON(workTime);
	setList({
		listId : "workTime1",
		placeholder : "请选择您的工作年限",
		listValue : workTimeData,
		widthClass : "w340"
	});
	setList({
		listId : "workTime2",
		placeholder : "请选择您的工作年限",
		listValue : workTimeData,
		widthClass : "w340"
	});
	setSrc('zhihu','zhihu.png');
	setSrc('github','github.png');
	setSrc('blog','blog.png');
	setSrc('personlink','personlink.png');
	
	var url = "baseData.do?action=getJob";
	ajaxSumbit(url, "", 1);
	
	resizeFrame();
	setForm();
}
function goSuccess(data, index){
	if(index == 1){
		selectChkLimit1(data,"jobMeum","1",true);
		checkedLister("jobMeum",2,"selectWorkTime()");
	}else if(index == 2){
		setForm1(data);
	}else if(index == 3){
		setForm2(data)
	}else if(index == 4){
		saveValue("userResumeId",data);
	}
}
function resizeFrame(){
	if($("table[class^='mainDiv_table']").height() < parent.document.getElementById("iframe1").height){
		return;
	}
	parent.document.getElementById("iframe1").height=document.body.scrollHeight + 30;
	$(parent.document.getElementById("myTabContent")).height(document.body.scrollHeight + 30);
	parent.dataFormVcenter();
	parent.countFrameHeight();
	if(ishide){
		$("tr[hide^='title']").attr("class","hidden");
		$("tr[hide^='otherskill']").attr("class","hidden");
	}
}
function setForm(){
	var userResumeId = loadValue("userResumeId");
	$("#userResumeId").val(userResumeId);
	var url = "userData.do?action=queryUserInformation&userResumeId="+userResumeId;
	ajaxSumbit(url, "", 2);
	
	url = "userData.do?action=queryUserResumeSkills&userResumeId="+userResumeId;
	ajaxSumbit(url, "", 3);
}
function setForm1(data){
	if(data == undefined){
		return;
	}
	$("#dataForm").populateForm(data);
	saveValue("userResume",data);
	
	getTran(data.sex);
	setElementValue("workTime",data.workTime,'select');
	setElementValue("jobMeum",data.goJobId1,'checkbox');
	setElementValue("jobMeum",data.goJobId2,'checkbox');
	selectWorkTime();
	if(!isNull(data.workTime1)){
		setElementValue("workTime1",data.workTime1,'select');
	}
	if(!isNull(data.workTime2)){
		setElementValue("workTime2",data.workTime2,'select');
	}
	if(!isNull(data.otherSkill)){
		skill += "other";
		setElementValue("skillMeum","other",'checkbox');
		selectOtherSkill();
		$("#otherSkill").val(data.otherSkill);
	}
}
function setForm2(data){
	for(var i in data){
		if(skill != ""){
			skill += ",";
		}
		skill += data.skillId;
		setElementValue("skillMeum",data.skillId,'checkbox');
	}
	$("#skill").val(skill);
}
function getTran(ret) {
	if (ret == '1') {
		getid("sex").value="1";
		$("#btn1").addClass("checkedBtn");
		$("#btn1").removeClass("checkBtn");
		$("#btn2").addClass("checkBtn");
		$("#btn2").removeClass("checkedBtn");
	}
	if (ret == '2') {
		getid("sex").value="2";
		$("#btn2").addClass("checkedBtn");
		$("#btn2").removeClass("checkBtn");
		$("#btn1").addClass("checkBtn");
		$("#btn1").removeClass("checkedBtn");
	}
}
function subWorkTime(){
	var data = jQuery.parseJSON(workTime);
	setList({
		listId : "workTime",
		placeholder : "请选择您的工作年限",
		listValue : data,
		widthClass : "w340"
	});
}
function selectWorkTime(){
	var data = jQuery.parseJSON(workTime);
	checkedValue("jobMeum");
	$("tr[hide^='title']").attr("class","hidden");
	ishide = true;
	var ids = loadValue("ids");
	var values = loadValue("values");
	if(ids == undefined){
		return;
	}
	removeValue("ids");
	if(ids.indexOf(",") > -1){
		var vals = values.split(",");
		for(var i in vals){
			$("tr[hide^='title']").each(function(){
				$(this).removeAttr("class");
				ishide = false;
			});
			$('#title'+(parseInt(i)+1)).html(vals[i]);
		}
	}else{
		if(ids != ""){
			$("tr[hide='title1']").each(function(){
				$(this).removeAttr("class");
				ishide = false;
			});
			$('#title1').html(values);
		}
	}
	$('#gojobId').val(ids);
	
	var url = "baseData.do?action=getSkill&ids="+ids;
	data = ajaxSumbit(url);
	
	$('.hiddenCheckBox').unbind();//因为要清除数据，得先把绑定事件去除，不然会造成事件冲突，可以注释试一下效果
	$("#skillMeum").html("");
	selectChkLimit1(data,"skillMeum","false",true);
	checkedLister("skillMeum",5,"selectOtherSkill()");
	
	$("#otherSkill").val("");
	$("tr[hide^='otherskill']").attr("class","hidden");
	
	if(!ishide){
		resizeFrame();
	}
}

function selectOtherSkill(){
	checkedValue("skillMeum");
	var values = loadValue("values");
	var ids = loadValue("ids");
	if(ids == undefined){
		return;
	}
	removeValue("ids");
	removeValue("values");
	if(values.indexOf("其他") > -1){
		$("tr[hide^='otherskill']").removeAttr("class");
		ishide = false;
	}else{
		$("#otherSkill").val("");
		$("tr[hide^='otherskill']").attr("class","hidden");
		ishide = true;
	}
	$('#skill').val(ids);
	
	if(!ishide){
		resizeFrame();
	}
}
//下一步
function goNext(){
	var url = "userData.do?action=saveUserInformation";
	var formId = "dataForm";
	ajaxSumbit(url, formId, 4);
	$(window.parent.document.getElementById("page2")).click();
}
