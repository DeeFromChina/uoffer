function init(){
	setMap();
	var url = "baseData.do?action=getJob";
	ajaxSumbit(url, "", 1);
}
function submit(){
	checkedValue("jobMeum");
	closeWin("jobCheckbox");
}
function goSuccess(data, index){
	if(index == 1){
		var type = map["type"];
		if(map["isMultiselect"] == "false"){
			selectCheckBox(data,"jobMeum",type,true,false);
		}
		if(map["isMultiselect"] == "true"){
			selectCheckBox(data,"jobMeum",type,true,true);
		}
	}
}
