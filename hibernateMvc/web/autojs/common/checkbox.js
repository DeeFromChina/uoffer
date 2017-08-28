//jQuery(function($){
//	$('.hiddenCheckBox').click(function(){
//		$(this).prev().val(this.id);
//	});
//	addCheckBox();
//});
function addCheckBox(obj){
//	var data = '[{"title":"中餐","content":[{"title":"t1","content":"","type":"title"}],"type":"title"}';
//	data += ',{"title":"西餐","type":"title","content":[{"title":"t2"}]}]';
//	var obj = eval('(' + data + ')');
	var str = "";
	str = appendCheckBox(obj);
	console.log(str);
	$("#leftMeum").append(str);
	$('.hiddenCheckBox').click(function(){
		$(this).prev().val(this.id);
	});
}
var paddingCount = 0;
function appendCheckBox(obj){
	var str = "";
	if(obj == undefined){
		return "";
	}
	var len = 1;
	if(obj.length != undefined){
		for(var i = 0; i < obj.length; i++){
			str += appendCheckBoxContent(obj[i]);
		}
	}else{
		str += appendCheckBoxContent(obj);
	}
	return str;
}
function appendCheckBoxContent(obj){
	if(obj.title == undefined){
		return "";
	}
	var str = "";
	if(obj.type == 'title'){
		str += "<div class=\"checkbox_title\" style=\"padding-left:"+paddingCount+"px;\">"
					+obj.title
				+"</div>";
		paddingCount += 10;
	}else{
		str += "<div class=\"wi100\">"
					+"<div class=\"checkbox_cell\">"
						+"<div class=\"icheckbox_square-green floatL\">"
							+"<input type=\"hidden\"/>"
							+"<input type=\"checkbox\" id=\""+obj.value+"\" class=\"hiddenCheckBox hand\" />"
						+"</div>"
						+"<div class=\"checkbox_cell_value\">"
							+obj.title
						+"</div>"
					+"</div>"
				+"</div>";
	}
	str += appendCheckBox(obj.content);
	paddingCount = 0;
	return str;
}