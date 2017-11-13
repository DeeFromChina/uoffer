function init(){
	setMap();
	var type = map["type"];
	if(type == 'work'){
		$("#name").html("公司名称 :");
		$("#time").html("工作时间 :");
		$("#job").html("担任职位:");
		$("#jobDescription").html("工作描述:");
		$("#jobBelong").html("所属行业:");
		$("#level").html("公司性质:");
		$("#descript1").html("公司规模:");
		$("#descript2").html("公司描述:");
	}
	if(type == 'edu'){
		$("#name").html("学校名称 :");
		$("#time").html("学习时间 :");
		$("#job").html("专业 :");
		$("#jobDescription").html("专业描述:");
		$("#jobBelong").html("所属行业:");
		$("#level").html("学历:");
		$("#descript1").html("掌握技能:");
		$("#descript2").html("曾获奖项:");
	}
	$(".form_datetime").datetimepicker({
	    format: "yyyy-mm-dd",
	    autoclose:true,
	    startView: 'month',
	    minView:'month',
	    maxView:'decade',
	    language:'zh-CN'
	});
}