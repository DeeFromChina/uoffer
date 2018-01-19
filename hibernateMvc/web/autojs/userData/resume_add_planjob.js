var userResumeId = loadValue("userResumeId");
function init() {
	var url = "baseData.do?action=getCity";
	ajaxSumbit(url, "", 1);
	setList({
		listId : "companyNature",
		placeholder : "请选择公司性质",
		listValue : jQuery.parseJSON(companyNature),
		widthClass : "w340"
	});
	setList({
		listId : "companyScale",
		placeholder : "请选择公司规模",
		listValue : jQuery.parseJSON(companyScale),
		widthClass : "w340"
	});
	
	setForm();
	
	parent.document.getElementById("iframe2").height=document.body.scrollHeight;
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
function setForm(){
	$("#userResumeId").val(userResumeId);
	var data = loadValue("userResume");
	$("#dataForm").populateForm(data);
	setElementValue("cityMeum",data.goJobCity,'checkbox');
	setElementValue("companyScale",data.companyScale,'select');
	setElementValue("companyNature",data.companyNature,'select');
}
function selectCity(){
	checkedValue("cityMeum");
	var ids = loadValue("ids");
	removeValue("ids");
	$('#goJobCity').val(ids);
}
//下一步
function goNext(){
	setValue();
	var url = "userData.do?action=userPlanjob";
	var formId = "dataForm";
	ajaxSumbit(url,formId,2);
	$(window.parent.document.getElementById("page3")).click();
}
//上一步
function goBack(){
	$(window.parent.document.getElementById("page1")).click();
}
function goSuccess(data, index){
	if(index == 1){
		selectChkLimit1(data,"cityMeum","1",true);
		checkedLister("cityMeum",2,"selectCity()");
	}else if(index == 2){
		saveValue("userResumeId",data);
	}
}