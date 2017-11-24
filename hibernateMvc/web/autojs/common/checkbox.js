//2层式checkbox
function selectCheckBox(obj,formId,type,haveCheckBox,isMultiselect){
	var str = "";
	if(obj == undefined){
		return;
	}
	var targetObj;
	if(obj[0] != undefined){
		for(var i = 0; i < obj.length; i++){
			targetObj = searchCheckBoxType(obj[i],type);
			if(targetObj != undefined){
				break;
			}
		}
	}else{
		targetObj = searchCheckBoxType(obj,type);
	}
	if(targetObj != undefined){
		str += appendCheckBoxTitle(targetObj,formId,haveCheckBox);
	}
	$("#"+formId).append(str);
	$('.hiddenCheckBox').click(function(){
		var ischecked = false;
		if($(this).parent().hasClass("checked")){
			$(this).parent().removeClass("checked");
		}else{
			$(this).parent().addClass("checked");
			ischecked = true;
		}
		if(!isMultiselect){
			$('.hiddenCheckBox').each(function(){
				if($(this).parent().hasClass("checked")){
					$(this).parent().removeClass("checked");
				}
			});
			if(ischecked){
				$(this).parent().addClass("checked");
			} 
		}
	});
}
//找到某id下的checkbox(type = id)
function searchCheckBoxType(obj,type){
	if(obj.value == type){
		return obj;
	}
	if(obj.content != undefined){
		var o = obj.content;
		if(o[0] != undefined){
			var targetObj;
			for(var i = 0; i < o.length; i++){
				targetObj = searchCheckBoxType(o[i],type);
				if(targetObj != undefined){
					break;
				}
			}
			return targetObj;
		}else{
			return searchCheckBoxType(o,type);
		}
	}
}

//某层以下单层checkbox(type="false",将所有数据列出来，单层(不管子项))
function selectChkLimit1(obj,formId,type,isMultiselect){
	var str = "";
	if(obj == undefined){
		return;
	}
	var targetObj;
	var obj0 = obj[0];
	if(type == "false"){
		if(obj0 != undefined){
			for(var i in obj){
				str += appendCheckBoxContent(obj[i],formId);
			}
		}else{
			str += appendCheckBoxContent(obj,formId);
		}
		obj0 = undefined;
	}
	if(obj0 != undefined){
		for(var i = 0; i < obj.length; i++){
			targetObj = searchCheckBoxType(obj[i],type);
			if(targetObj != undefined){
				break;
			}
		}
	}else{
		if(type != "false"){
			targetObj = searchCheckBoxType(obj,type);
		}
	}
	if(targetObj != undefined){
		var o = targetObj.content;
		if(o[0] != undefined){
			for(var i = 0; i < o.length; i++){
				str += appendCheckBoxContent(o[i],formId);
			}
		}else{
			str += appendCheckBoxContent(o,formId);
		}
	}
	$("#"+formId).append(str);
	$('.hiddenCheckBox').click(function(){
		var ischecked = false;
		if($(this).parent().hasClass("checked")){
			$(this).parent().removeClass("checked");
		}else{
			$(this).parent().addClass("checked");
			ischecked = true;
		}
		if(!isMultiselect){
			$('.hiddenCheckBox').each(function(){
				if($(this).parent().hasClass("checked")){
					$(this).parent().removeClass("checked");
				}
			});
			if(ischecked){
				$(this).parent().addClass("checked");
			} 
		}
	});
}

//function addCheckBox(obj,formId,haveCheckBox,isMultiselect){
////	var data = '[{"title":"中餐","content":[{"title":"t1","content":"","type":"title"}],"type":"title"}';
////	data += ',{"title":"西餐","type":"title","content":[{"title":"t2"}]}]';
////	var obj = eval('(' + data + ')');
//	var str = "";
//	if(obj == undefined){
//		return;
//	}
//	if(obj[0] != undefined){
//		for(var i = 0; i < obj.length; i++){
//			str += appendCheckBoxTitle(obj[i],formId,haveCheckBox);
//		}
//	}else{
//		str += appendCheckBoxTitle(obj,formId,haveCheckBox);
//	}
//	$("#"+formId).append(str);
//	$('.hiddenCheckBox').click(function(){
//		var ischecked = false;
//		if($(this).parent().hasClass("checked")){
//			$(this).parent().removeClass("checked");
//		}else{
//			$(this).parent().addClass("checked");
//			ischecked = true;
//		}
//		if(!isMultiselect){
//			$('.hiddenCheckBox').each(function(){
//				if($(this).parent().hasClass("checked")){
//					$(this).parent().removeClass("checked");
//				}
//			});
//			if(ischecked){
//				$(this).parent().addClass("checked");
//			} 
//		}
//	});
//}


var count = 0;
function appendCheckBoxTitle(obj,name,haveCheckBox){
	var str = "";
	var isCheck = false;
	if(obj == undefined){
		return "";
	}
	if(obj.title == undefined){
		return "";
	}
	if(obj.content == undefined){
		isCheck = true;
	}
	if(haveCheckBox){
		if(!isCheck){
			str += "<div class=\"checkbox_title\" >"
						+"<a data-toggle=\"collapse\" href=\"#openMeum"+count+"\" id=\"aopenMeum"+count+"\" onclick=\"changeText(this)\">"
							+"<div class=\"paddingBottom40\">"
								+"<div class=\"icheckbox_square-green floatL\">"
									+"<input type=\"hidden\" id=\""+obj.value+"\" value=\""+obj.title+"\" />"
									+"<input type=\"checkbox\" name=\""+name+"\" class=\"hiddenCheckBox hand\" />"
								+"</div>"
								+"<div class=\"checkbox_cell_value\">"
									+"<font class=\"ch_title\">"+obj.title+"</font>"
								+"</div>"
								+"<font class=\"floatR\">展开</font>"
							+"</div>"
						+"</a>"
					+"</div>";
		}else{
			str += "<div class=\"checkbox_title\" >"
						+"<div class=\"paddingBottom40\">"
							+"<div class=\"icheckbox_square-green floatL\">"
								+"<input type=\"hidden\" id=\""+obj.value+"\" value=\""+obj.title+"\" />"
								+"<input type=\"checkbox\" name=\""+name+"\" class=\"hiddenCheckBox hand\" />"
							+"</div>"
							+"<div class=\"checkbox_cell_value\">"
								+"<font class=\"ch_title\">"+obj.title+"</font>"
							+"</div>"
						+"</div>"
					+"</div>";
		}
	}else{
		if(!isCheck){
			str += "<div class=\"checkbox_title\" >"
						+"<a data-toggle=\"collapse\" href=\"#openMeum"+count+"\" id=\"aopenMeum"+count+"\" onclick=\"changeText(this)\">"
							+"<font class=\"ch_title\">"+obj.title+"</font>"
							+"<font class=\"floatR\">展开</font>"
						+"</a>"
					+"</div>";
		}else{
			str += "<div class=\"checkbox_title\" >"
						+"<font class=\"ch_title\">"+obj.title+"</font>"
					+"</div>";
		}
		
	}
	if(!isCheck){
		str += "<div class=\"collapse padding10 checkbox_cell_div\" id=\"openMeum"+count+"\" >";
		var o = obj.content
		if(o[0] != undefined){
			for(var i = 0; i < o.length; i++){
				str += appendCheckBoxContent(o[i],name);
			}
		}else{
			str += appendCheckBoxContent(o,name);
		}
		str += "</div>";
	}
	count++;
	return str;
}

function appendCheckBoxContent(obj,name){
	if(obj.title == undefined){
		return "";
	}
	var str = "";
	str += "<div class=\"checkbox_cell\">"
				+"<div class=\"icheckbox_square-green floatL\">"
					+"<input type=\"hidden\" id=\""+obj.value+"\" value=\""+obj.title+"\" />"
					+"<input type=\"checkbox\" name=\""+name+"\" class=\"hiddenCheckBox hand\" />"
				+"</div>"
				+"<div class=\"checkbox_cell_value\">"
					+"<font class=\"ch_title\">"+obj.title+"</font>"
				+"</div>"
			+"</div>";
	return str;
}
function changeText(obj){
	if($(obj).attr("aria-expanded") == "true"){
		$(obj).find("font[class='floatR']").html("展开");
	}else{
		$(obj).find("font[class='floatR']").html("收起");
	}
}
function checkedValue(checkDivId){
	var ids = "";
	var values = "";
	$('#'+checkDivId).find("div[class^='icheckbox_square-green']").each(function(){
		if($(this).hasClass("checked")){
			var id = $(this).find("input[type='hidden']").attr("id");
			var value = $(this).find("input[type='hidden']").attr("value");
			if(ids != ""){
				ids += ",";
				values += ",";
			}
			ids += id;
			values += value;
		}
	});
	window.top.map["ids"] = ids;
	window.top.map["values"] = values;
}
//可选择的数量
function checkedNum(formId,num){
	checkedLister(formId,num,"");
}
//选择时添加事件
function checkedMethod(formId,method){
	checkedLister(formId,0,method);
}
function checkedLister(formId,num,method){
	$('#'+formId).find("div[class='icheckbox_square-green floatL']").each(function(){
		$(this).on("click",function(){
		    var chkedCount = 0;
		    $('#'+formId).find("div[class='icheckbox_square-green floatL checked']").each(function(){
		    	chkedCount++;
		    });
		    if(num > 0){
		    	if(chkedCount > num){
		    		$(this).removeClass('checked');
		    		return;
		    	}
		    }
		    eval(method);
		});
	});
}