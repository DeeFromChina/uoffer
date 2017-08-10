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
		obj.style.webkitTransform = "rotate(270deg)";
	}
}

function appendLeftMeum(obj,level){
	var str = "";
	for(var i = 0; i < obj.length; i++){
		if(meumLevel - level == 1){
			var substr = "";
			if(level == 1){
				substr = appendLeftMeum(obj.content,level-1);
			}
			str = '<ul class="leftContentLevel" role="menu" aria-labelledby="dropdownMenu1">'
				+'<li class="dropdown-submenu">'
				+'<a href="#">'+obj.title+'</a>'
				+substr
				+'</li>'
				+'</ul>';
		}else if(meumLevel - level == 2){
			var substr = appendLeftMeum(obj.content,level-1);
			str = '<ul class="dropdown-menu leftContentLevel2">'
				+'<li class="dropdown-submenu">'
				+'<a href="#">'+obj.title+'</a>'
				+substr
				+'</li>'
				+'</ul>';
		}
		else{
			if(level > 1){
				var substr = appendLeftMeum(obj.content,level-1);
				str = '<ul class="dropdown-menu">'
					+'<li class="dropdown-submenu">'
					+'<a href="#">'+obj.title+'</a>'
					+substr
					+'</li>'
					+'</ul>';
			}else{
				str += '<ul class="dropdown-menu">'
					+'<li>'
					+'<a href="#">'+obj.title+'</a>'
					+'</li>'
					+'</ul>';
			}
		}
	}
	
	return str;
}
var meumLevel = 0;
function addLeftMeum(){
	var data = '{"title":"test1","content":[{"title":"ct1","content":"cc1"},{"title":"ct2","content":"cc2"}],"level":"2"}';
	var obj = eval('(' + data + ')');
	meumLevel = obj.level-1;
	console.log(meumLevel);
	var substr = appendLeftMeum(obj.content,meumLevel);
	var str = '<div class="panel panel-default wi100 leftContent">'
					+'<div class="panel-heading hand" data-toggle="collapse" data-parent="#accordion" onclick="openContent(this)" href="#collapseTwo">'
						+'<h4 class="panel-title">'
							+'<a>'
								+obj.title
							+'</a>'
							+'<img src="../../img/chuxian.png" class="leftImg"/>'
						+'</h4>'
					+'</div>'
					+'<div id="collapseTwo" class="panel-collapse collapse">'
						+'<div class="panel-body">'
							+substr
						+'</div>'
					+'</div>'
				+'</div>';
	console.log(substr);
}