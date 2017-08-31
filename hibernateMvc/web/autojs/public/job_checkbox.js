function init(){
	setMap();
	var url = "login.do?action=register";
	var data = ajaxSumbit(url);
//	addCheckBox(data,"jobMeum",true);
	var type = map["type"];
	selectCheckBox(data,"jobMeum",type,true,false);
}
function sumbit(){
	checkedValue();
	mainFrameSetValue("jobType",map["ids"]);
	mainFrameSetValue("jobTypeName",map["values"]);
	closeWin();
}
