var companyNature = "["
				+"{\"id\":\"1\",\"value\":\"创业公司\"},"
				+"{\"id\":\"2\",\"value\":\"上市企业\"},"
				+"{\"id\":\"3\",\"value\":\"国营企业\"},"
				+"{\"id\":\"4\",\"value\":\"外资企业\"},"
				+"{\"id\":\"5\",\"value\":\"政府机构\"}"
				+"]";
var companyScale = "["
				+"{\"id\":\"1\",\"value\":\"少于50人\"},"
				+"{\"id\":\"2\",\"value\":\"50-100人\"},"
				+"{\"id\":\"3\",\"value\":\"100-500人\"},"
				+"{\"id\":\"4\",\"value\":\"500-1000人\"},"
				+"{\"id\":\"5\",\"value\":\"1000人以上\"}"
				+"]";
function init() {
	var url = "baseData.do?action=getCity";
	var data = ajaxSumbit(url);
	selectChkLimit1(data,"cityMeum","1",true);
	checkedLister("cityMeum",2,"selectCity()");
	
	setList("companyNature","请选择公司性质",jQuery.parseJSON(companyNature),0,"","w340");
	setList("companyScale","请选择公司规模",jQuery.parseJSON(companyScale),0,"","w340");
	
	parent.document.getElementById("iframe1").height=document.body.scrollHeight;
	parent.document.getElementById("myTabContent").style.height=document.body.scrollHeight;
	parent.dataFormVcenter();
	parent.countFrameHeight();
}
function setValue(){
	if(top.map["userResumeId"] != undefined){
		$("#userResumeId").val(top.map["userResumeId"]);
	}
}
function selectCity(){
	checkedValue("cityMeum");
	$('#goJobCity').val(map["ids"]);
}
//下一步
function goNext(){
	setValue();
	var url = "userData.do?action=userPlanjob";
	var formId = "dataForm";
	var data = ajaxSumbit(url,formId);
	$(window.parent.document.getElementById("page3")).click();
}
//上一步
function goBack(){
	$(window.parent.document.getElementById("page1")).click();
}
