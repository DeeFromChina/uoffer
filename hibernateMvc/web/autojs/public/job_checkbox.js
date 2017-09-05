function init(){
	setMap();
	var url = "login.do?action=register";
	var data = ajaxSumbit(url);
	var type = map["type"];
	if(map["isMultiselect"] == "false"){
		selectCheckBox(data,"jobMeum",type,true,false);
	}
	if(map["isMultiselect"] == "true"){
		selectCheckBox(data,"jobMeum",type,true,true);
	}
}
function submit(){
	checkedValue();
	mainFrameSetValue(map["targetId"],map["ids"]);
	mainFrameSetValue(map["targetValue"],map["values"]);
	closeWin();
}
