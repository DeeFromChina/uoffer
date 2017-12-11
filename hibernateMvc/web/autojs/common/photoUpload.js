function init(){
	setMap();
	$("#photo").attr("src",map["path"]);
}
function changeImg(){
	$("#uploadFile").click();
}
function goSubmit(){
	var url = "fileManager.do?action=fileUpload&type=userPhoto";
	var files = ['uploadFile'];
	var data = fileUpload(url, files);
	return data;
}