//var jspPath = "http://10.18.12.29:8080/hibernateMvc/autojsp/";
var jspPath = "http://localhost:8080/hibernateMvc/autojsp/";
var doc = document;
var map = {};

$(".dropdown .form-control").click(function(){
	if(this.parentNode.getElementsByTagName("button") == undefined){
		return;
	}
	this.parentNode.getElementsByTagName("button")[0].click();
});

function getid(id){
	return document.getElementById(id);
}
/**
 * 填充下拉框
 * listId:下拉框id
 * listValue:下拉框数据
 * index:多层
 * method:方法（this作为参数）
 * */
function setList(listId,placeholder,listValue,index,method,widthClass){
	if(widthClass == undefined){
		widthClass = "wi100";
	}
	var level = index;
	var inn = "";
	inn += "<div class=\"dropdown input-class\">";
	inn += "<div class=\""+widthClass+"\">";
	inn += "<input type=\"text\" id=\""+listId+"Value\" name=\""+listId+"Value\" class=\"form-control\" readOnly=\"readOnly\" placeholder=\""+placeholder+"\" />";
	inn += "<input type=\"hidden\" name=\""+listId+"\" />";
	inn += "</div>";
	inn += "<button type=\"button\" class=\"btn dropdown-toggle selectBtn\" data-toggle=\"dropdown\">";
	inn += "<span class=\"caret\"></span>";
	inn += "</button>";
	if(listValue != ''){
		inn += "<ul class=\"dropdown-menu selectMeum\" role=\"menu\" aria-labelledby=\"dropdownMenu\">";
		inn += addListChild(listId,listValue,index,method);
		inn += "</ul>";
	}else{
		inn += "<ul class=\"dropdown-menu selectMeum\" role=\"menu\" aria-labelledby=\"dropdownMenu\">";
		inn+="<li role='presentation'>"
				+"<a class='selectValue' role='menuitem' >"
					+placeholder
				+"</a>";
		inn+="</li>";
		inn += "</ul>";
	}
	inn += "</div>";
	console.log(listId);
	getid(listId).innerHTML = inn;
}
function addListChild(listId,listValue,index,method){
	var level = index;
	var inn = "";
	var cls = "";
	if(level > 1){
		cls = "class='dropdown-submenu'";
	}
	for(var i in listValue){
		inn+="<li role='presentation' "+cls+">"
				+"<a class='selectValue' role='menuitem' id=\'"+listValue[i].id+"\' onclick=\'selectValue(this,\""+listId+"\");"+method+"\'>"
					+listValue[i].value
				+"</a>";
		if(level > 1){
			inn+="<ul class='dropdown-menu selectMeum'>";
			inn+=setList(listId,listValue,level-1,method);
			inn+="</ul>";
		}
		inn+="</li>";
	}
	return inn;
}
/**
 * 选择下拉框
 * inputId:下拉显示框id
 * selectId:选择数据id
 * */
function selectValue(obj,targetId){
	$("input[name='"+targetId+"']").val(obj.id);
	$("#"+targetId+"Value").val(obj.innerText);
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
function go(urlnum){
	var page = pages[urlnum];
	page = jspPath + page;
	$('#mainFrame').attr("src",page);
}
/**
 * 打开新窗口
 * url:页面路径（http://localhost:8080/hibernateMvc/autojsp/+url）
 * title:窗口标题
 * width:窗口宽度
 * height:窗口高度
 * closeFlag:是否在关闭时调用closeListener()方法
 * */
function openWindow(url,title,width,height,closeFlag,win){
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
	
	if(closeFlag != undefined && closeFlag == 'true'){
		closeFlag = 'true';
		window.top.map["targetPage"] = win;
	}else{
		closeFlag = 'false';
	}
		
	var timestamp = Date.parse(new Date());
	timestamp = timestamp / 1000;
	window.top.map["pageId"] = "myPage"+timestamp;
	var pageStr = "<div class='modal fade' id='myPage"+timestamp+"' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>"
						+"<div class='modal-dialog' style='width:"+width+";height:"+height+";margin-top:"+marginTop+";'>"
							+"<div class='modal-content'>"
								+"<div class='modal-header'>"
									+"<a id='close' class='close' data-dismiss='modal' aria-hidden='true' onclick='closeWindow(\"myPage"+timestamp+"\","+closeFlag+")'>"
										+"&times;"
									+"</a>"
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
function closeWindow(objId,closeFlag,win){
	if(closeFlag){
		var dom = window.top.map["targetPage"];
		$(dom.getElementById('dataFormDisDiv')).remove();
	}
	$("#"+objId).modal('hide');
	$("#"+objId).remove();
	var pageGroup = window.top.document.getElementById("pageGroup");
	var divs = $(pageGroup).find("div");
	if(divs.length == 0){
		window.top.document.body.style.overflowY = "auto";
	}
}
function closeWin(){
	$(parent.document.getElementById("close")).click();
}
/**
 * 计算frame高度
 * */
function countFrameHeight(){
	var pdoc = parent.document;
	pdoc.getElementById("mainFrame").height = 0;
	pdoc.getElementById("mainFrame").height = document.body.height;
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
	
	var flag = true;
	if(windowHeight < bh + formHeight + headHeight){
		bodyHeight = bh + formHeight + headHeight;
		flag = false;
	}else{
		bodyHeight = windowHeight;
	}
	var marginTH = 0;
	if(flag){
		document.body.height = bodyHeight - bh - 68;
		marginTH = (document.body.height - formHeight)/2;
		$('#dataForm').css("padding-top",marginTH);
	}else{
		document.body.height = bodyHeight;//给足够的边距
		$('#dataForm').css("padding-top",headHeight+50);//dataForm远大于屏幕
		$('#dataForm').css("padding-bottom",bh);
	}
}
function setSrc(id,path){
//	path = "http://10.18.12.29:8080/hibernateMvc/img/" + path;
//	path = "http://192.168.10.163:8080/hibernateMvc/img/" + path;
	path = "http://localhost:8080/hibernateMvc/img/" + path;
	$('#'+id).attr('src',path);
}
/**
 * 判断长宽返回判定
 * targetId:要判断的容器id
 * flag:判断类型（width,height）
 * size:判断大小
 * trueS:大于判断大小时的返回值
 * falseS:小于判断大小时的返回值
 * */
function judgeSize(targetId,flag,size,trueS,falseS){
	if(flag == 'width'){
		if($('#'+targetId).width() < size){
			return falseS;
		}else{
			return trueS;
		}
	}else{
		if($('#'+targetId).height() < size){
			return falseS;
		}else{
			return trueS;
		}
	}
}
/**将url的传参放入map*/
function setMap(){
	var url = location.search;
	if (url.indexOf("?") != -1) {
		url = url.substring(1,url.length);
		var params = url.split("&");
		for(var i = 0; i < params.length; i++){
			var key = params[i].split("=")[0];
			var value = params[i].split("=")[1];
			map[key] = value;
		}
	}
}
/**
 * 向mainFrame中的页面传值(适用于弹框向父页面传值)
 * targetId:目标元素id
 * value:目标元素赋的值
 * */
function mainFrameSetValue(targetId,value){
	var mainFrame = parent.$('#mainFrame').contents();
	mainFrame.find("#"+targetId).val(value);
}

/**
 * 将tree转化成select所需的list
 * 返回list
 * data:treeData
 * treeId:tree某节点下属子节点
 * */
function treeToSelect(pdata,treeId,flag){
//	json对象赋值是指向存储地址，并不能直接赋值
//	var sdata = pdata;
	var sdata = newJson(pdata);
	if(treeId == undefined || flag != undefined){
		for(var i = 0; i < sdata.length; i++){
			sdata[i].content = "";
			sdata[i].id = sdata[i].value; 
			sdata[i].value = sdata[i].title;
		}
	}else {
		var isPass = false;
		for(var i = 0; i < sdata.length; i++){
			if(sdata[i].value == treeId){
				if(sdata[i].content != undefined){
					sdata = treeToSelect(sdata[i].content,treeId,true);
					isPass = true;
				}
			}
		}
		if(!isPass){
			var subData;
			for(var i = 0; i < sdata.length; i++){
				if(sdata[i].content != undefined){
					subData = treeToSelect(sdata[i].content,treeId);
				}
				if(subData != undefined){
					sdata = subData
					break;
				}
			}
		}
	}
	return sdata;
}
/*从一个json对象赋值到另一json对象*/
function newJson(data){
	var str = JSON.stringify(data);
	var newData = $.parseJSON(str);
	return newData;
}

/**全文检索并以高光显示*/
function searchText(textId){
	highLight(textId);
}
function highLight(textId){
	var searchText = $('#'+textId).val();
	var regExp = new RegExp(searchText, 'g');//全文检索
	clearSelection();
	$('font[class="ch_title"]').each(function () {
	 	var html = $(this).html();
	 	var newHtml = html.replace(regExp, '<span class="highlight">' + searchText + '</span>');
	 	$(this).html(newHtml);
	 	if(html.search(searchText) == -1){
	 		return;
	 	}
	 	if($(this).parent().parent().attr('class') == "checkbox_cell"){
	 		var checkbox_cell_div = $(this).parent().parent().parent();
	 		if(!checkbox_cell_div.hasClass("in")){
	 			checkbox_cell_div.addClass("in");
	 			var id = checkbox_cell_div.attr("id");
	 			$("#a"+id).addClass="collapsed";
	 			changeText($("#a"+id)[0]);
	 			$("#a"+id).attr("aria-expanded","true");
	 		}
	 	}
 	});
}
function clearSelection() {
 	$('font[class="ch_title"]').each(function () {
	 	$(this).find('.highlight').each(function () {
	 		$(this).replaceWith($(this).html());
	 	});
 	});
}
