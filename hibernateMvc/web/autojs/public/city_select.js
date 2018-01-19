var data;
function init(){
	setMap();
	var url = "baseData.do?action=getCity";
	ajaxSumbit(url, "", 1);
}
function goSuccess(dataResult, index){
	data = dataResult;
	if(index == 1){
		var countryData = treeToSelect(data);
		var type = map["type"];
		if(type == undefined || type < 1) {return;}
		setList({
			listId : "country",
			placeholder : "请选择您的国家",
			listValue : countryData,
			method : "subProvince(this)",
			widthClass : "w340"
		});
		$("#country").find("div[class^='dropdown']").addClass("marginAuto");
		if(type == 1) return;
		setList({
			listId : "province",
			placeholder : "请选择您的省份",
			widthClass : "w340"
		});
		$("#province").find("div[class^='dropdown']").addClass("marginAuto");
		if(type == 2) return;
		setList({
			listId : "city",
			placeholder : "请选择您的城市",
			widthClass : "w340"
		});
		$("#city").find("div[class^='dropdown']").addClass("marginAuto");
		if(type == 3) return;
		setList({
			listId : "area",
			placeholder : "请选择您的区域",
			widthClass : "w340"
		});
		$("#area").find("div[class^='dropdown']").addClass("marginAuto");
	}
}
function subProvince(obj){
	var id = obj.id;
	var provinceData = treeToSelect(data,id);
	if(map["type"] == 1) return;
	setList({
		listId : "province",
		placeholder : "请选择您的省份",
		listValue : provinceData,
		method : "subCity(this)",
		widthClass : "w340"
	});
	$("#province").find("div[class='dropdown input-class']").addClass("marginAuto");
}
function subCity(obj){
	var id = obj.id;
	var cityData = treeToSelect(data,id);
	if(map["type"] == 2) return;
	setList({
		listId : "city",
		placeholder : "请选择您的城市",
		listValue : cityData,
		method : "subArea(this)",
		widthClass : "w340"
	});
	$("#city").find("div[class='dropdown input-class']").addClass("marginAuto");
}
function subArea(obj){
	var id = obj.id;
	var areaData = treeToSelect(data,id);
	if(map["type"] == 3) return;
	setList({
		listId : "area",
		placeholder : "请选择您的区域",
		listValue : areaData,
		widthClass : "w340"
	});
	$("#area").find("div[class='dropdown input-class']").addClass("marginAuto");
}
function submit(){
	var form = $("#dataForm").serializeObject();
	if(map["target"] == "city"){
		saveValue("cityId",form.city);
		saveValue("cityName",form.cityValue);
	}
	closeWin("citySelect");
}