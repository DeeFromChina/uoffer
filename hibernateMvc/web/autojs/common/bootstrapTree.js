function openContent(obj){
	var span = $(obj).find("span")[0];
	if(span.style.webkitTransform != "rotate(90deg)"){
		span.style.webkitTransform = "rotate(90deg)";
	}else {
		span.style.webkitTransform = "rotate(0deg)";
	}
}
function addOpenTree(obj,timestamp){
	var len = obj.length;
	var str = "";
	
	if(obj.length == undefined){
		len = 1;
	}
	if(timestamp > -1){
		str += '<div id="openTree'+timestamp+'" class="panel-collapse collapse">';
	}
	for(var i = 0; i < len; i++){
		var o;
		if(len != 1){
			o = obj[i];
		}else{
			o = obj;
		}
		if(timestamp > -1){
			str += '<ul class="ul-noPoint">';
		}else{
			str += '<ul class="ul-noStyle">';
		}
		var substr = appendBootstrap(o,true);
		if(substr == undefined){
			substr = "";
		}
		str += substr;
		str += '</ul>';
	}
	if(timestamp > -1){
		str += '</div>';
	}
	return str;
}
var num = 0;
function appendBootstrap(obj,flag){
	var vi = "";
	if(obj.visibility != undefined){
		vi = obj.visibility;
	}
	if(obj[0] != undefined){
		if(obj[0].visibility != undefined){
			vi = obj[0].visibility;
		}
	}
	if(vi != '1'){
		return;
	}
	var len = obj.length;
	var str = "";
	
	if(obj.length == undefined){
		len = 1;
	}
	
	for(var i = 0; i < len; i++){
		var o;
		var timestamp = num++;
		if(obj.length != undefined){
			o = obj[i];
		}else{
			o = obj;
		}
		var v = o.value;
		if(v == undefined){
			v = "";
		}
		if(o.click == '1'){
			v = "getValue("+v+")";
		}else{
			v = "";
		}
		if(o.content != undefined){
			if(flag != undefined){
				str += '<li>';
			}
			str += '<div class="hand" onclick="openContent(this);'+v+'" data-toggle="collapse" href="#openTree'+timestamp+'">'
						+'<span class="glyphicon glyphicon-play treeIcon"></span>'
						+'<font>'+o.title+'</font>'
					+'</div>';
			str += addOpenTree(o.content,timestamp);
			if(flag != undefined){
				str += '</li>'
			}
		}else{
			if(o.title == undefined){
				break;
			}
			str = '<div class="hand" onclick="'+v+'" data-toggle="collapse" href="#openTree'+timestamp+'">'
						+'<font>'+o.title+'</font>'
					+'</div>';
		}
	}
	return str;
}
function addBootstrap(obj){
//	var data = '[{"title":"中餐","content":{"title":"ct1","visibility":"1","click":"0"},"value":"1","visibility":"1","click":"1"}';
//	data += ',{"title":"西餐","content":{"title":"ct1","content":[{"title":"cct1","visibility":"1","click":"1"},{"title":"cct2","visibility":"1"}],"visibility":"0","click":"1"},"value":"","visibility":"1","click":"1"}]';
//	
//	var obj = eval('(' + data + ')');
	var str = "";
	str = addOpenTree(obj,-1);
	$("#bootstrapTree").append(str);
}
function getValue(v){
	alert(v);
}
function init(){
	var url = "login.do?action=register";
	var data = ajaxSumbit(url);
	addBootstrap(data);
}