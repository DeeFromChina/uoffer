//jQuery(function($){
//	$('.hiddenCheckBox').click(function(){
//		$(this).prev().val(this.id);
//	});
//	addCheckBox();
//});
function selectCheckBox(obj,formId,type){
	
}
function addCheckBox(obj,formId,haveCheckBox){
//	var data = '[{"title":"中餐","content":[{"title":"t1","content":"","type":"title"}],"type":"title"}';
//	data += ',{"title":"西餐","type":"title","content":[{"title":"t2"}]}]';
//	var obj = eval('(' + data + ')');
	var str = "";
	if(obj == undefined){
		return;
	}
	if(obj[0] != undefined){
		for(var i = 0; i < obj.length; i++){
			str = appendCheckBoxTitle(obj[i],formId,haveCheckBox);
		}
	}else{
		str = appendCheckBoxTitle(obj,formId,haveCheckBox);
	}
	console.log(str);
	$("#"+formId).append(str);
//	$('.hiddenCheckBox').click(function(){
//		$(this).prev().val(this.id);
//	});
}

//适合单类型的checkbox
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
	console.log(obj);
	if(haveCheckBox){
		if(!isCheck){
			str += "<div class=\"checkbox_title\" >"
						+"<a data-toggle=\"collapse\" href=\"#openMeum"+count+"\">"
							+"<div class=\"paddingBottom40\">"
								+"<div class=\"icheckbox_square-green floatL\">"
									+"<input type=\"checkbox\" name=\""+name+"\" class=\"hiddenCheckBox hand\" />"
								+"</div>"
								+"<div class=\"checkbox_cell_value\">"
									+obj.title
								+"</div>"
							+"</div>"
						+"</a>"
					+"</div>";
		}else{
			str += "<div class=\"checkbox_title\" >"
						+"<div class=\"paddingBottom40\">"
							+"<div class=\"icheckbox_square-green floatL\">"
								+"<input type=\"checkbox\" name=\""+name+"\" class=\"hiddenCheckBox hand\" />"
							+"</div>"
							+"<div class=\"checkbox_cell_value\">"
								+obj.title
							+"</div>"
						+"</div>"
					+"</div>";
		}
	}else{
		if(!isCheck){
			str += "<div class=\"checkbox_title\" >"
						+"<a data-toggle=\"collapse\" href=\"#openMeum"+count+"\">"
							+obj.title
						+"</a>"
					+"</div>";
		}else{
			str += "<div class=\"checkbox_title\" >"
						+obj.title
					+"</div>";
		}
		
	}
	if(!isCheck){
		str += "<div class=\"collapse padding10\" id=\"openMeum"+count+"\" >";
		var o = obj.content
		if(o[0] != undefined){
			for(var i = 0; i < o.length; i++){
				str += appendCheckBoxContent(o[i]);
			}
		}else{
			str += appendCheckBoxContent(o);
		}
		str += "</div>";
	}
	count++;
	return str;
}

function appendCheckBoxContent(obj){
	if(obj.title == undefined){
		return "";
	}
	var str = "";
	str += "<div class=\"checkbox_cell\">"
				+"<div class=\"icheckbox_square-green floatL\">"
					+"<input type=\"checkbox\" class=\"hiddenCheckBox hand\" />"
				+"</div>"
				+"<div class=\"checkbox_cell_value\">"
					+obj.title
				+"</div>"
			+"</div>";
	return str;
}