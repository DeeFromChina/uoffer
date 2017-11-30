function init() {
	var url = "baseData.do?action=getCity";
	var data = ajaxSumbit(url);
	selectChkLimit1(data,"cityMeum","1",true);
	checkedLister("cityMeum",2,"selectCity()");
	
	setList("companyNature","请选择公司性质",jQuery.parseJSON(companyNature),0,"","w340");
	setList("companyScale","请选择公司规模",jQuery.parseJSON(companyScale),0,"","w340");
	
	setForm();
	
	parent.document.getElementById("iframe2").height=document.body.scrollHeight;
	parent.document.getElementById("myTabContent").style.height=document.body.scrollHeight;
	parent.dataFormVcenter();
	parent.countFrameHeight();
}
function setValue(){
	if(top.map["userResumeId"] != undefined){
		$("#userResumeId").val(top.map["userResumeId"]);
	}
}
function setForm(){
	var userResumeId = window.top.map["userResumeId"];
	$("#userResumeId").val(userResumeId);
	var url = "userData.do?action=queryUserInformation&userResumeId="+userResumeId;
	var data = ajaxSumbit(url);
	if(data == undefined){
		return;
	}
	$("#dataForm").populateForm(data);
	
	setElementValue("cityMeum",data.goJobCity,'checkbox');
	setElementValue("companyScale",data.companyScale,'select');
	setElementValue("companyNature",data.companyNature,'select');
}
function selectCity(){
	checkedValue("cityMeum");
	$('#goJobCity').val(window.top.map["ids"]);
}
//下一步
function goNext(){
	setValue();
	var url = "userData.do?action=userPlanjob";
	var formId = "dataForm";
	var data = ajaxSumbit(url,formId);
	top.map["userResumeId"] = data;
	$(window.parent.document.getElementById("page3")).click();
}
//上一步
function goBack(){
	$(window.parent.document.getElementById("page1")).click();
}
