var data;
function init(){
	setMap();
	var url = "baseData.do?action=getCity";
	data = ajaxSumbit(url);
	var countryData = treeToSelect(data);
	var type = map["type"];
	if(type == undefined || type < 1) {return;}
	setList("country","请选择您的国家",countryData,0,"subProvince(this)");
	$("#country").find("div[class='dropdown input-class']").addClass("marginAuto");
	if(type == 1) return;
	setList("province","请选择您的省份","",0,"");
	$("#province").find("div[class='dropdown input-class']").addClass("marginAuto");
	if(type == 2) return;
	setList("city","请选择您的城市","",0,"");
	$("#city").find("div[class='dropdown input-class']").addClass("marginAuto");
	if(type == 3) return;
	setList("area","请选择您的区域","",0,"");
	$("#area").find("div[class='dropdown input-class']").addClass("marginAuto");
}
function subProvince(obj){
	var id = obj.id;
	var provinceData = treeToSelect(data,id);
	if(map["type"] == 1) return;
	setList("province","请选择您的省份",provinceData,0,"subCity(this)");
	$("#province").find("div[class='dropdown input-class']").addClass("marginAuto");
}
function subCity(obj){
	var id = obj.id;
	var cityData = treeToSelect(data,id);
	if(map["type"] == 2) return;
	setList("city","请选择您的城市",cityData,0,"subArea(this)");
	$("#city").find("div[class='dropdown input-class']").addClass("marginAuto");
}
function subArea(obj){
	var id = obj.id;
	var areaData = treeToSelect(data,id);
	if(map["type"] == 3) return;
	setList("area","请选择您的区域",areaData,0,"");
	$("#area").find("div[class='dropdown input-class']").addClass("marginAuto");
}
function submit(){
	var form = $("#dataForm").serializeObject();
	if(map["target"] == "city"){
		mainFrameSetValue(map["targetId"],form.city);
		mainFrameSetValue(map["targetValue"],form.cityValue);
	}
	closeWin();
}