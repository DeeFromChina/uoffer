var data;
function init() {
	parent.document.getElementById("iframe4").height=document.body.scrollHeight;
	parent.document.getElementById("myTabContent").style.height=document.body.scrollHeight;
	parent.dataFormVcenter();
	parent.countFrameHeight();

	$(".circleChkB").click(function(){
		selected(this);
	});
	
	var url = "baseData.do?action=getCity";
	data = ajaxSumbit(url);
	var currencyData = treeToSelect(data);
	setList("currency1","请选择您的币种",currencyData,0,"","w140");
	$("#currency1").find("div[class='dropdown input-class']").addClass("marginAuto");
	setList("currency2","请选择您的币种",currencyData,0,"","w140");
	$("#currency2").find("div[class='dropdown input-class']").addClass("marginAuto");
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
		$("#jobstatus").val(obj.id);
	}
	if(obj.id.indexOf('i') > -1){
		$("#intime").val(obj.id);
	}
	$(obj).removeClass("circleChkB");
	$(obj).addClass("circleChkA");
}

var dataName;
	var phoneCode;
	//头部
	function jobId(job){
		if(job.getAttribute('class') == "icheckbox_square-green checked"){
			job.setAttribute("class","icheckbox_square-green hover");
		}
		else if(job.getAttribute('class') == "icheckbox_square-green hover"){
			job.setAttribute("class","icheckbox_square-green checked");
		}
	}
	function addli(items,liId){
		var li1 = "";
		for(var i in items){//href='#' 
			li1 = li1 + "<li role='presentation'>"
						+"<a role='menuitem' tabindex='-1' onclick='"+liId+"(this)'><font color='#4F4F4F'>"+items[i].value+"</font></a>"
						+"</li>";
		}
		document.getElementById(liId).innerHTML = li1;
	}
	function money1(obj){
		document.getElementById("nowmoneytype").value=obj.innerText;
	}
	function money2(obj){
		document.getElementById("planmoneytype").value=obj.innerText;
	}
	function moneysum(){
		var monthmoney = 0;
		var month = 0;
		if(document.getElementById("monthmoney").value != '' && document.getElementById("month").value != ''){
			monthmoney = document.getElementById("monthmoney").value
			month = document.getElementById("month").value
		}
		document.getElementById("summoney").innerText = "= "+monthmoney * month / 10000 +"万/年";
		document.getElementById("offerUserNowYearWages").value = monthmoney * month / 10000;
	}

	function goSubmit(){
		if(!checkValue()){
			return;
		}
		var url = "user/saveresumeAddQuestionnaire1.do";
		var formId = "saveresumeAddQuestionnaireForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			top.location.href='examine_user.jsp';
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
		if(!checkInput('jobstatus',"求职状态","30",false)) return false;
		if(!checkInput('intime',"入职时间","30",false)) return false;
		if(!checkInput('nowmoneytype',"税前收入","30",false)) return false;
		if(!checkNum('monthmoney',"税前收入","30",false)) return false;
		if(!checkNum('month',"税前收入","30",false)) return false;
		if(!checkInput('planmoneytype',"最低税前年薪要求","30",false)) return false;
		if(!checkInput('planmoney',"最低税前年薪要求","30",false)) return false;
		if(!checkInput('offerRequestNextJob',"下一份工作的要求","130",false)) return false;
		if(phoneCode != document.getElementById("msgCode").value) {
			alert("手机验证码错误");
			return false;
		}
		return true;
	}
	var myVar;
	var a = 60;
	function getmsg(){
		phoneCode = Math.floor(Math.random()*9000)+1000;
		var phone = document.getElementById("phone").value;
		if(phone.length < 11 || isNaN(phone)){
			alert("手机号码格式不正确！")
			return;
		}
		var url = "register/getmsg1.do?code="+phoneCode;
		if(phone == ""){
			alert("请输入手机号码!")
			return;
		}
		ajaxSumbitNoform(url,phone);
		myVar=setInterval(function(){myTimer()},1000);
		a = 60;
	}
	function myTimer(){
		if(a != 0){
			a = a-1;
			document.getElementById("msgtime").setAttribute("disabled", true);
		}else{
			clearInterval(myVar);
			document.getElementById("msgtime").style.background="#00B38A";
			document.getElementById("msgtime").style.color="#FFF";
			document.getElementById("msgtime").style.border="1px #00B38A solid";
			document.getElementById("msgtime").innerHTML="<font style='font-size:14px;'>获取</font>";
			document.getElementById("msgtime").removeAttribute("disabled"); 
			return;
		}
		document.getElementById("msgtime").style.background="#FFF";
		document.getElementById("msgtime").style.color="#9A9A9A";
		document.getElementById("msgtime").style.border="1px #9A9A9A solid";
		document.getElementById("msgtime").innerHTML="<font style='font-size:14px;'>"+a+"秒</font>";
	}