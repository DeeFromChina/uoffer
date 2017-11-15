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
//上一步
function goBack(){
	$(window.parent.document.getElementById("page3")).click();
}
function goSubmit(){
	var url = "userData.do?action=userQuestion";
	var formId = "dataForm";
	data = ajaxSumbit(url,formId);
}
