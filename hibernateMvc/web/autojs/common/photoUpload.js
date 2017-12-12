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
	var url = "fileManager.do?action=fileUpload"+"&tableName="+tableName+"&tableId="+tableId+"&type="+type;
	var files = ['uploadFile'];
	var data = fileUpload(url, files);
	return data;
}