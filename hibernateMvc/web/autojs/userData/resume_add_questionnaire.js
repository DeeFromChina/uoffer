var data;
function init() {
	$(".circleChkB").click(function(){
		selected(this);
	});
	
	setList("currency1","请选择您的币种",jQuery.parseJSON(currency),0,"","w140");
	setList("currency2","请选择您的币种",jQuery.parseJSON(currency),0,"","w140");
	setValue();
	setForm();
	
	parent.document.getElementById("iframe4").height=document.body.scrollHeight;
	if(document.body.scrollHeight > parent.document.getElementById("myTabContent").style.height){
		parent.document.getElementById("myTabContent").style.height=document.body.scrollHeight;
	}
	parent.dataFormVcenter();
	parent.countFrameHeight();
}
function setValue(){
	if(top.map["userResumeId"] != undefined){
		$("#userResumeId").val(top.map["userResumeId"]);
	}
}
function selected(obj){
	$(".circleChkA").each(function () {
		if(obj.id.indexOf('j') > -1 && this.id.indexOf('j') > -1){
			$(this).removeClass("circleChkA");
			$(this).addClass("circleChkB");
		}
		if(obj.id.indexOf('i') > -1 && this.id.indexOf('i') > -1){
			$(this).removeClass("circleChkA");
			$(this).addClass("circleChkB");
		}
	});
	if(obj.id.indexOf('j') > -1){
		$("#nowJobStatus").val(obj.id.substring(1,2));
	}
	if(obj.id.indexOf('i') > -1){
		$("#inTime").val(obj.id.substring(1,2));
	}
	$(obj).removeClass("circleChkB");
	$(obj).addClass("circleChkA");
}
function moneysum(num){
	var monthmoney = $("#monthMoney"+num).val();
	var month = $("#month"+num).val();
	if(monthmoney != "" && month != ""){
		if(monthmoney > 0 && monthmoney > 0){
			var summoney = (monthmoney * month / 10000).toFixed(2);
			$("#summoney"+num).html("= "+summoney+" 万/年");
		}
	}
}
function setForm(){
	var userResumeId = window.top.map["userResumeId"];
	$("#userResumeId").val(userResumeId);
//	var url = "userData.do?action=queryUserInformation&userResumeId="+userResumeId;
//	var data = ajaxSumbit(url);
//	if(data == undefined){
//		return;
//	}
	var data = window.top.map["userResume"];
	$("#dataForm").populateForm(data);
	
	setElementValue("j",data.nowJobStatus,'circle');
	setElementValue("i",data.inTime,'circle');
	setElementValue("currency1",data.currency1,'select');
	setElementValue("currency2",data.currency2,'select');
	moneysum(1);
	moneysum(2);
}
/**倒数*/
var myVar;
var second = 60;
function Reciprocal(){
	var phone = $("input[name='phone']").val();
	if(isNaN(phone) || phone.length < 11){
		alert("手机号码格式不正确！")
		return;
	}
//	getmsg();
	var msgtime = $("#msgtime");
	myTimer(msgtime);
	myVar = setInterval(function(){
		myTimer(msgtime);
	},1000);
	second = 60;
}
function myTimer(msgtime){
	if(second == 60){
		msgtime.removeClass("rightBtn");
		msgtime.addClass("reciprocalBtn");
		msgtime.attr("disabled", "true");
	}
	msgtime.html(second+"秒");
	second = second-1;
	if(second < 0){
		clearInterval(myVar);
		msgtime.addClass("rightBtn");
		msgtime.removeClass("reciprocalBtn");
		msgtime.removeAttr("disabled");
		msgtime.html("获取");
		return;
	}
}
//上一步
function goBack(){
	$(window.parent.document.getElementById("page3")).click();
}
function goSubmit(){
	var url = "userData.do?action=userQuestion";
	var formId = "dataForm";
	data = ajaxSumbit(url,formId);
}
