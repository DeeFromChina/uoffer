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
var workTime = "["
				+"{\"id\":\"2\",\"value\":\"3年以下\"},"
				+"{\"id\":\"3\",\"value\":\"3年\"},"
				+"{\"id\":\"4\",\"value\":\"4年\"},"
				+"{\"id\":\"5\",\"value\":\"5年\"},"
				+"{\"id\":\"6\",\"value\":\"6年\"},"
				+"{\"id\":\"7\",\"value\":\"7年\"},"
				+"{\"id\":\"8\",\"value\":\"8年\"},"
				+"{\"id\":\"9\",\"value\":\"9年\"},"
				+"{\"id\":\"10\",\"value\":\"10年\"},"
				+"{\"id\":\"11\",\"value\":\"10年以上\"}"
				+"]";
function subWorkTime(){
	var data = jQuery.parseJSON(workTime);
	setList("workTime","请选择您的工作年限",data,0,"","w340");
}
function selectWorkTime(){
	var data = jQuery.parseJSON(workTime);
	checkedValue("jobMeum");
	$("tr[hide^='title']").attr("class","hidden");
	if(map["ids"].indexOf(",") > -1){
		var values = map["values"].split(",");
		for(var i in values){
			$("tr[hide^='title']").each(function(){
				$(this).removeAttr("class");
			});
			$('#title'+(parseInt(i)+1)).html(values[i]);
		}
	}else{
		if(map["ids"] != ""){
			$("tr[hide='title1']").each(function(){
				$(this).removeAttr("class");
			});
			$('#title1').html(map["values"]);
		}
	}
	$('#gojobId').val(map["ids"]);
	
	var url = "baseData.do?action=getSkill&ids="+map["ids"];
	var data = ajaxSumbit(url);
	
	$('.hiddenCheckBox').unbind();//因为要清除数据，得先把绑定事件去除，不然会造成事件冲突，可以注释试一下效果
	$("#skillMeum").html("");
	selectChkLimit1(data,"skillMeum","false",true);
	checkedLister("skillMeum",5,"selectOtherSkill()");
	
	$("#otherskill").val("");
	$("tr[hide^='otherskill']").attr("class","hidden");
}

function selectOtherSkill(){
	checkedValue("skillMeum");
	if(map["values"].indexOf("其他") > -1){
		$("tr[hide^='otherskill']").removeAttr("class");
	}else{
		$("#otherskill").val("");
		$("tr[hide^='otherskill']").attr("class","hidden");
	}
	$('#skill').val(map["ids"]);
}
//下一步
function goNext(){
	var url = "userData.do?action=userInformation";
	var formId = "dataForm";
	var data = ajaxSumbit(url,formId);
	top.map["userResumeId"] = data;
	$(window.parent.document.getElementById("page2")).click();
}

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