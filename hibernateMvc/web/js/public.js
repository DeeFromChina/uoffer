var doc = document;
function getid(id){
	return doc.getElementById(id);
}
/**
 * listId:下拉框id
 * listValue:下拉框数据
 * index:多层
 * method:方法（this作为参数）
 * */
function setList(listId,listValue,index,method){
	var level = index;
	for(var i in listValue){
		inn+="<li role='presentation' class='dropdown-submenu'>"
				+"<a role='menuitem' id='"+listValue[i].id+"' name='"+listValue[i].type+"' onclick='"+method+"'>"
					+"<font class=''>"
						+listValue[i].value
					+"</font>"
				+"</a>";
		if(level > 1){
			inn+="<ul class='dropdown-menu' style='height:250px;overflow-y:auto;'>";
			inn+=setList(listId,listValue,level-1,method);
			inn+="</ul>";
		}
		inn+="</li>";
	}
	getid(listId).innerHTML = inn;
}
/**
 * inputId:下拉显示框id
 * selectId:选择数据id
 * */
function selectValue(inputId,selectId){
	var input = getid(inputId);
	var select = getid(selectId);
	input.value = select.innerText;
}