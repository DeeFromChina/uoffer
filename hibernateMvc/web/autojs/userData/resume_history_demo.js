var demoId = "";
function init(){
	setMap();
	var type = map["type"];
	var url = "userData.do?action=queryUserExperienceDemo&type="+type;
	ajaxSumbit(url, "", 1);
	$('#list').height($(document.body).height() - 77);
}
function setDemo(items){
	var str = "";
	for(var i in items){
		str += '<tr class="demolist">'
					+ '<td class="lineH41"><div class="circleChkB demoChk" id="'+items[i].id+'"></div></td>'
					+ '<td class="lineH41 textC">'+items[i].dname+'</td>'
			+ '</tr>';
	}
	$("#demo").append(str);
	$(".circleChkB").click(function(){
		selected(this);
	});
}
function selected(obj){
	$(".circleChkA").each(function () {
		$(this).removeClass("circleChkA");
		$(this).addClass("circleChkB");
	});
	demoId = obj.id;
	$(obj).removeClass("circleChkB");
	$(obj).addClass("circleChkA");
}
function goSubmit(){
	saveValue("demoId", demoId);
	closeWin("history_demo");
}
function goSuccess(data, index){
	if(index == 1){
		if(data == undefined){
			return;
		}
		setDemo(data);
	}
}
