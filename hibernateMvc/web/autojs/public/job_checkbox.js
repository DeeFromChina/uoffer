function init(){
	var url = "login.do?action=register";
	var data = ajaxSumbit(url);
	addCheckBox(data,"jobMeum",true);
}