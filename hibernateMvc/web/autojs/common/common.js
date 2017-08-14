var jspPath = "http://localhost:8080/hibernateMvc/autojsp/";
var doc = document;
function getid(id){
	return doc.getElementById(id);
}
/**
 * 填充下拉框
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
 * 选择下拉框
 * inputId:下拉显示框id
 * selectId:选择数据id
 * */
function selectValue(inputId,selectId){
	var input = getid(inputId);
	var select = getid(selectId);
	input.value = select.innerText;
}
/**
 * url:跳转地址
 * isPass:是否能跳转;
 * */
function jumpPage(url,isPass,message){
	if(isServer){
		top.location.href=url;
	}else{
		alert(message);
	}
}
/**
 * urlnum:跳转地址
 * */
function to(urlnum){
	var page = pages[urlnum];
	var timestamp = Date.parse(new Date()); 
	page = jspPath + page + "?page=" + timestamp;
	top.location.href=page;
}
/**
 * 打开新窗口
 * url:页面路径（http://localhost:8080/hibernateMvc/autojsp/+url）
 * title:窗口标题
 * width:窗口宽度
 * height:窗口高度
 * */
function openWindow(url,title,width,height){
	doc = window.top.document;
	if(url != ''){
		url = "http://localhost:8080/hibernateMvc/autojsp/" + url;
	}
	var pageGroup = doc.getElementById("pageGroup");
	var divs = $(pageGroup).find("div");
	var marginTop = (window.screen.height-height-80)/3;//80是浏览器头部高度
	
	var titleHeiight = $(doc.getElementById("headTitle")).height();
	if(doc.getElementById("headTitle").style.display != "none"){
		if(marginTop < titleHeiight){
			marginTop = titleHeiight;
		}
	}
		
	var timestamp = Date.parse(new Date());
	timestamp = timestamp / 1000;
	var pageStr = "<div class='modal fade' id='myPage"+timestamp+"' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>"
						+"<div class='modal-dialog' style='width:"+width+";height:"+height+";margin-top:"+marginTop+";'>"
							+"<div class='modal-content'>"
								+"<div class='modal-header'>"
									+"<button type='button' class='close' data-dismiss='modal' aria-hidden='true' onclick='closeWindow(\"myPage"+timestamp+"\")'>"
										+"&times;"
									+"</button>"
									+"<h4 class='modal-title' id='myModalLabel'>"
										+title
									+"</h4>"
								+"</div>"
								+"<div class='modal-body' style='overflow:auto;'>"
									+"<iframe src='"+url+"' class='wh100' scrolling='yes' frameborder='0'></iframe>"
								+"</div>"
							+"</div>"
						+"</div>"
					+"</div>";
	$(pageGroup).append(pageStr);
	var obj = doc.getElementById("myPage"+timestamp);
	if(divs.length > 0){
		$(obj).modal({backdrop: 'static', keyboard: false, backdrop: null});
		$(obj).css("padding-left","0");
	}else{
		$(obj).modal({backdrop: 'static', keyboard: false});
	}
	doc.body.style.overflowY = "hidden";
	if($(doc.body).height() - titleHeiight < height){
		$(obj).css("overflow-y","auto");
	}
}
/**
 * 关闭遮罩层
 * objId:打开窗口id
 * */
function closeWindow(objId){
	$("#"+objId).modal('hide');
	$("#"+objId).remove();
	var pageGroup = window.top.document.getElementById("pageGroup");
	var divs = $(pageGroup).find("div");
	if(divs.length == 0){
		window.top.document.body.style.overflowY = "auto";
	}
}
/**
 * 计算frame高度
 * */
function countFrameHeight(){
	var pdoc = parent.document;
	pdoc.getElementById("mainFrame").height = 0;
	pdoc.getElementById("mainFrame").height = doc.body.height;
	//pdoc.getElementById("mainFrame").style.marginTop = parent.$("#headTitle").height() - 10;//不知道为什么会多出10高度
}
/**
 * dataForm垂直居中
 * 
 * */
function dataFormVcenter(){
	var windowHeight = window.screen.availHeight;//屏幕可用工作区高度
	
	var formHeight = $('#dataForm').height();
	var bodyHeight = $(parent.document.body).height();
	var headHeight = 0;
	if(parent.$("#headTitle") != undefined){
		headHeight = $("#headTitle",parent.document).height() - 10;
	}
	var bh = 0;
	if(parent.$("#bottomDiv") != undefined){
		bh = parent.$("#bottomDiv").height();
	}
	
	if(windowHeight < bh + formHeight + headHeight){
		bodyHeight = bh + formHeight + headHeight;
	}else{
		bodyHeight = windowHeight;
	}
	doc.body.height = bodyHeight - bh - 68;
	var marginTH = (doc.body.height - formHeight)/3;
	$('#dataForm').css("margin-top",marginTH);
}