function init(){
	setMap();
	var url = "baseData.do?action=getJob";
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
	checkedValue("jobMeum");
	mainFrameSetValue(map["targetId"],window.top.map["ids"]);
	mainFrameSetValue(map["targetValue"],window.top.map["values"]);
	closeWin("jobCheckbox");
}
