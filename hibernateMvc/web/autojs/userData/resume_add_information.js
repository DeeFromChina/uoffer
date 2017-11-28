function init() {
	getTran('1');
	subWorkTime();
	var workTimeData = jQuery.parseJSON(workTime);
	setList("workTime1","请选择您的工作年限",workTimeData,0,"","w340");
	setList("workTime2","请选择您的工作年限",workTimeData,0,"","w340");
	setSrc('zhihu','zhihu.png');
	setSrc('github','github.png');
	setSrc('blog','blog.png');
	setSrc('personlink','personlink.png');
	
	var url = "baseData.do?action=getJob";
	var data = ajaxSumbit(url);
	selectChkLimit1(data,"jobMeum","1",true);
	checkedLister("jobMeum",2,"selectWorkTime()");
	
	parent.document.getElementById("iframe1").height=document.body.scrollHeight;
	parent.document.getElementById("myTabContent").style.height=document.body.scrollHeight;
	parent.dataFormVcenter();
	parent.countFrameHeight();
	
	$("tr[hide^='title']").attr("class","hidden");
	$("tr[hide^='otherskill']").attr("class","hidden");
	
	setForm();
}
function setForm(){
	var userResumeId = "BBNWoZK3kTsExUV00Ywo1G5jlUKKs=";
	var url = "userData.do?action=queryUserInformation&userResumeId="+userResumeId;
	var data = ajaxSumbit(url);
	$("#dataForm").populateForm(data);
	
	setValue("workTime",data.workTime,'select');
	setValue("jobMeum",data.goJobId1,'checkbox');
	setValue("jobMeum",data.goJobId2,'checkbox');
	selectWorkTime();
	if(!isNull(data.workTime1)){
		setValue("workTime1",data.workTime1,'select');
	}
	if(!isNull(data.workTime2)){
		setValue("workTime2",data.workTime2,'select');
	}
	if(!isNull(data.otherSkill)){
		setValue("skillMeum","other",'checkbox');
		selectOtherSkill();
	}
	
	url = "userData.do?action=queryUserResumeSkills&userResumeId="+userResumeId;
	var data2 = ajaxSumbit(url);
	var skill = "";
	for(var i in data2){
		if(skill != ""){
			skill += ",";
		}
		skill += data2.skillId;
		setValue("skillMeum",data2.skillId,'checkbox');
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
	setList("workTime","请选择您的工作年限",data,0,"","w340");
}
function selectWorkTime(){
	var data = jQuery.parseJSON(workTime);
	checkedValue("jobMeum");
	$("tr[hide^='title']").attr("class","hidden");
	if(window.top.map["ids"].indexOf(",") > -1){
		var values = window.top.map["values"].split(",");
		for(var i in values){
			$("tr[hide^='title']").each(function(){
				$(this).removeAttr("class");
			});
			$('#title'+(parseInt(i)+1)).html(values[i]);
		}
	}else{
		if(window.top.map["ids"] != ""){
			$("tr[hide='title1']").each(function(){
				$(this).removeAttr("class");
			});
			$('#title1').html(window.top.map["values"]);
		}
	}
	$('#gojobId').val(window.top.map["ids"]);
	
	var url = "baseData.do?action=getSkill&ids="+window.top.map["ids"];
	data = ajaxSumbit(url);
	
	$('.hiddenCheckBox').unbind();//因为要清除数据，得先把绑定事件去除，不然会造成事件冲突，可以注释试一下效果
	$("#skillMeum").html("");
	selectChkLimit1(data,"skillMeum","false",true);
	checkedLister("skillMeum",5,"selectOtherSkill()");
	
	$("#otherSkill").val("");
	$("tr[hide^='otherskill']").attr("class","hidden");
}

function selectOtherSkill(){
	checkedValue("skillMeum");
	console.log()
	if(window.top.map["values"].indexOf("其他") > -1){
		$("tr[hide^='otherskill']").removeAttr("class");
	}else{
		$("#otherSkill").val("");
		$("tr[hide^='otherskill']").attr("class","hidden");
	}
	$('#skill').val(window.top.map["ids"]);
}
//下一步
function goNext(){
	var url = "userData.do?action=saveUserInformation";
	var formId = "dataForm";
	var data = ajaxSumbit(url,formId);
	top.map["userResumeId"] = data;
	$(window.parent.document.getElementById("page2")).click();
}
