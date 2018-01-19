var data;
function init() {
	setMap();
	var url = "baseData.do?action=getCity";
	ajaxSumbit(url, "", 1);
	
	dataFormVcenter(false);
	countFrameHeight();
	parent.changeHeaderTitle();
}
function goSuccess(data, index){
	if(index == 1){
		var countryData = treeToSelect(data);
		var type = map["type"];
//		if(type == undefined || type < 1) {return;}
		setList({
			listId : "country",
			placeholder : "请选择您的国家",
			listValue : countryData,
			method : "subProvince(this)",
			inputClass : "w181",
			widthClass : "w140"
		});
		$("#country").find("div[class='dropdown input-class']").addClass("marginAuto");
		if(type == 1) return;
		setList({
			listId : "province",
			placeholder : "请选择您的省份",
			inputClass : "w181",
			widthClass : "w140"
		});
		$("#province").find("div[class='dropdown input-class']").addClass("marginAuto");
		if(type == 2) return;
		setList({
			listId : "city",
			placeholder : "请选择您的城市",
			inputClass : "w181",
			widthClass : "w140"
		});
		$("#city").find("div[class='dropdown input-class']").addClass("marginAuto");
		if(type == 3) return;
		setList({
			listId : "area",
			placeholder : "请选择您的区域",
			inputClass : "w181",
			widthClass : "w140"
		});
		$("#area").find("div[class='dropdown input-class']").addClass("marginAuto");
	}
}
function closeListener(){
	
}