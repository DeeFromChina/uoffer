function init(){
	setMap();
	var url = "login.do?action=register";
	var data = ajaxSumbit(url);
	var type = map["type"];
	selectCheckBox(data,"jobMeum",type,true,false);
}