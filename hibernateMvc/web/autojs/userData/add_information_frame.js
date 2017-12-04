var param = loadValue("param");
var pageName = "";
if(param != undefined){
	removeValue("param");
	if(param.userResumeId != undefined){
		saveValue("userResumeId",param.userResumeId);
	}
}
function init() {
	dataFormVcenter();
	countFrameHeight();
	parent.changeHeaderTitle();
	
	$("#iframe2").attr("src","resume_add_planjob.jsp");
	$("#iframe3").attr("src","resume_add_workexperience.jsp");
	$("#iframe4").attr("src","resume_add_questionnaire.jsp");
	
	pageName = param.pageName;
	if(pageName != ""){
		$("#"+pageName).addClass("in active");
	}
}
function clickMe(obj){
	$(".circleA").each(function(){
		$(this).removeClass("circleA");
		$(this).addClass("circleB");
	});
	$(".color00B38A").each(function(){
		$(this).removeClass("color00B38A");
	});
	$(obj).find("div").addClass("circleA");
	$(obj).find("font").addClass("color00B38A");
}