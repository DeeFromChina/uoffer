function leftHidden(){
	var className = $('#leftMeum').attr('class');
	if(className == 'leftHidden'){
		$('#leftMeum').attr('class','leftMeum');
	}else{
		$('#leftMeum').attr('class','leftHidden');
	}
}
function openContent(objt){
	var obj = $(objt).find('img')[0];
	if(obj.style.webkitTransform != "rotate(0deg)"){
		obj.style.webkitTransform = "rotate(0deg)";
	}else {
		obj.style.webkitTransform = "rotate(-90deg)";
	}
}
function init(){
	addLeftMeum();
}
function appendLeftMeum(obj,level){
	var len = obj.length;
	if(obj.length == undefined){
		len = 1;
	}
	var str = "";
	for(var i = 0; i < len; i++){
		//第一层
		if(meumLevel - level == 1){
			var substr = "";
			if(obj[i].content != undefined){
				//最后一层
				if(level != 1){
					substr = appendLeftMeum(obj[i].content,level-1);
				}
			}
			var subClass = ' dropdown-submenu';
			if(substr == ""){
				subClass = "";
			}
			str += '<div class="leftContentDiv">'
					+'<ul class="leftContentLevel" role="menu" aria-labelledby="dropdownMenu1">'
							+'<li class="panel-body'+subClass+'">'
								+'<a href="#">'+obj[i].title+'</a>'
								+substr
							+'</li>'
						+'</ul>'
					+'</div>';
		}else{
			if(level > 1){
				if(len == 1){
					var substr = appendLeftMeum(obj.content,level-1);
					str = '<ul class="dropdown-menu">'
							+'<li class="dropdown-submenu">'
								+'<a href="#">'+obj.title+'</a>'
								+substr
							+'</li>'
						+'</ul>';
				}else{
					var substr = appendLeftMeum(obj[i].content,level-1);
					str = '<ul class="dropdown-menu">'
								+'<li class="dropdown-submenu">'
									+'<a href="#">'+obj[i].title+'</a>'
									+substr
								+'</li>'
							+'</ul>';
				}
			}else{
				str += '<ul class="dropdown-menu">'
							+'<li>'
								+'<a href="#">'+obj[i].title+'</a>'
							+'</li>'
						+'</ul>';
			}
		}
	}
	return str;
}
var meumLevel = 0;
function addLeftMeum(){
	var data = '[{"title":"中餐","content":[{"title":"中餐","content":{"title":"cct1","content":[{"title":"ccct1","content":""}]}},{"title":"ct2"}],"count":"4","level":"4"}';
	data += ',{"title":"西餐","content":[{"title":"西餐","content":{"title":"cct1","content":[{"title":"ccct1","content":""}]}},{"title":"ct2"}],"count":"2","level":"4"}]';
	var obj = eval('(' + data + ')');
	var str = "";
	var len = obj.length;
	if(len == undefined){
		len = 1;
	}
	if(obj.length != undefined){
		for(var i = 0; i < len; i++){
			var substr = "";
			meumLevel = obj[i].level;
			if(meumLevel > 1){
				substr = appendLeftMeum(obj[i].content,meumLevel-1);
			}
			str += '<div class="panel panel-default wi100 leftMeumTitleDiv">'
					+'<div class="panel-heading hand leftMeumTitle" data-toggle="collapse" data-parent="#accordion" onclick="openContent(this)" href="#openMeum'+i+'">'
						+'<h4 class="panel-title">'
								+obj[i].title
							+'<span class="badge pull-right bgColorFF0033">'+obj[i].count+'</span>'
							+'<img src="../../img/chuxian.png" class="leftImg pull-right"/>'
						+'</h4>'
					+'</div>';
			if(substr != ""){
				str += '<div id="openMeum'+i+'" class="panel-collapse collapse">'
							+substr
						+'</div>'
			}
			str += '</div>';
		}
	}else{
		var timestamp = Date.parse(new Date());
		var substr = "";
		meumLevel = obj.level;
		if(meumLevel > 1){
			substr = appendLeftMeum(obj.content,meumLevel-1);
		}
		str += '<div class="panel panel-default wi100 leftContent">'
				+'<div class="panel-heading hand leftMeumTitle" data-toggle="collapse" data-parent="#accordion" onclick="openContent(this)" href="#openMeum'+timestamp+'">'
					+'<h4 class="panel-title">'
							+obj.title
						+'<img src="../../img/chuxian.png" class="leftImg"/>'
						+'<span class="badge pull-right bgColorFF0033">'+obj.count+'</span>'
					+'</h4>'
				+'</div>';
		if(substr != ""){
			str += '<div id="openMeum'+timestamp+'" class="panel-collapse collapse">'
						+substr
					+'</div>'
		}
		str += '</div>';
	}
	$("#leftMeum").append(str);
}