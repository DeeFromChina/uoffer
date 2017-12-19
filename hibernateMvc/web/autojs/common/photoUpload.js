function init(){
	setMap();
	$("#photo").attr("src",map["path"]);
}
function changeImg(){
	$("#uploadFile").click();
}
function goSubmit(){
	var tableName = map["tableName"];
	var tableId = map["tableId"];
	var type = map["type"];
	var data = "";
	if(map["mapping"] != undefined){
		data = "&mappingGroup="+map["mappingGroup"]+"&mapping="+map["mapping"];
	}
	var url = "fileManager.do?action=fileUpload"+"&type="+type+data+"&tableName="+tableName+"&tableId="+tableId;
	var files = ['uploadFile'];
	fileUpload(url, files, 1);
}
function goSuccess(data, index){
	if(index == 1){
		console.log(data);
	}
}