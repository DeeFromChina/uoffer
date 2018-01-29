$(document).ready(function(){ 
	var lists = $(document.body).find("list");
	for(var i = 0; i < lists.length; i++){
		var listId = $(lists[i]).attr("id");
		var list_div = document.createElement("div");//list的div
		$(list_div).attr("id",listId);
		
		//list标签结构
		var list_head = $(lists[i]).find("list-head")[0];//标题
		var list_head_size = $(lists[i]).find("list-head-size")[0];//标题宽度
		var list_value =  $(lists[i]).find("list-value")[0];//内容key
		var list_value_class =  $(lists[i]).find("list-value-class")[0];//行样式
		var is_share_class =  $(lists[i]).find("is-share-class")[0];//是否公用样式
		
		var titles = $(list_head).text().split(",");
		var titles_size = $(list_head_size).text().split(",");
		values = $(list_value).text().split(",");
		var values_class;
		if(list_value_class != undefined){
			if(is_share_class != undefined && is_share_class == 'true'){
				values_class = $(list_value_class).text();
			}else{
				values_class = $(list_value_class).text().split(",");
			}
		}
		
		var row_divs = new Array();//列div数组
		var sumsize = 0;
		for(var t = 0; t < titles.length; t++){
			var div = document.createElement("div");//列div
			sumsize += parseFloat(titles_size[t]);
			$(div).css("width",titles_size[t]);
			$(div).addClass("row-css");
			$(div).attr("id",listId+"_"+"row"+t);
			
			var cow_div = document.createElement("div");//单元格div
			$(cow_div).addClass("list-head");
			$(cow_div).text(titles[t]);
			$(div).append(cow_div);
			var vclass = "";
			if(values_class != undefined){
				if(values_class.length > 1){
					vclass = values_class[t];
				}else{
					vclass = values_class[0];
				}
			}
			div = insertList({
				target: div,
				key: values[t],
				data: eval('(' + datas + ')'),
				valueclass: vclass,
				listId: listId
			});
			
			row_divs[t] = div;
		}
		for(var i = 0; i < row_divs.length; i++){
			if(i > 0){
				$(row_divs[i]).css("margin-left","-3px");
			}
			$(list_div).append(row_divs[i]);
			var rerow = document.createElement("div");//拉伸条
			$(rerow).attr("name",listId+"_"+"row"+i);
			rerow.onmousedown = function(ev){
				var name = $(this).attr("name");
				mousemove(ev,name);
				return false;
			}
			$(rerow).addClass("row-resize");
			$(list_div).append(rerow);
		}
		$("list[id='"+listId+"']").replaceWith(list_div);
		$(list_div).height($("#"+listId+"_"+"row0").height()+1);
		$(list_div).css("width",sumsize+17);
	}
});

var beforeX = 0;
var afterX = 0;
var values;

function mousemove(ev,name){
	var oEvent = ev || event;
	var pos = getPos(oEvent);
	beforeX = pos.x;
	
	document.onmousemove = function(ev) {
		var oEvent = ev || event;
		var pos = getPos(oEvent);

		if (afterX != pos.x) {
			afterX = pos.x;
			var num = afterX - beforeX;
			var wid = $("#"+name).width();
			var listId = name.substring(0,name.indexOf("_row"));
			var bodyWidth = $("#"+listId).width();
			bodyWidth = bodyWidth - wid;
			var resizeWidth = wid + num;
			bodyWidth = bodyWidth + resizeWidth;
			$("#"+name).width(resizeWidth);
			$("#"+listId).width(bodyWidth);
			beforeX = afterX;
		}
	}
	
	document.onmouseup = function(ev) {
		document.onmousemove = null; // 将move清除
		document.onmouseup = null;
	}
}

function getPos(ev) {
	var scrollTop = document.documentElement.scrollTop
			|| document.body.scrollTop;
	var scrollLeft = document.documentElement.scrollLeft
			|| document.body.scrollLeft;

	return {
		x : ev.clientX + scrollLeft,
		y : ev.clientY + scrollTop
	};
}

var datas = '[{"value1":"value1","value2":"value2","value3":"value3"},{"value1":"value1_1","value2":"value2_1","value3":"value3_1"}]';

function insertList(options){
	if(options.data == undefined){
		return options.target;
	}
	var listId = options.listId;
	for(var i = 0; i < options.data.length; i++){
		var cow_div = document.createElement("div");//单元格div
		if(i%2 != 0){
			$(cow_div).addClass("cow-css0");
		}else{
			$(cow_div).addClass("cow-css1");
		}
		if(options.valueclass != undefined){
			$(cow_div).addClass(options.valueclass);
		}
		$(cow_div).text(eval("options.data[i]."+options.key));
		$(cow_div).attr("name",listId+"_cow"+i);
		cow_div.onmousemove = function(ev){
			var name = $(this).attr("name");
			$("div[name='"+name+"']").addClass("cow-moved");
		}
		cow_div.onmouseout = function(ev){
			var name = $(this).attr("name");
			$("div[name='"+name+"']").removeClass("cow-moved");
		}
		$(cow_div).click(function(){
			var name = $(this).attr("name");
			$("div[name^='"+name.substring(0,name.indexOf("_cow")+4)+"']").removeClass("cow-selected");
			$("div[name='"+name+"']").addClass("cow-selected");
		});
		$(options.target).append(cow_div);
	}
	return options.target;
}

/*window.onload = function() {
	var div1 = document.getElementById("div1");
	var div3 = document.getElementById("div3");
	var div4 = document.getElementById("div4");
	var div4X = 0;
	var afterdiv4X = 0;

	// 封装一个函数用于获取鼠标坐标
	

	div4.onmousedown = function(ev) {
		var oEvent = ev || event;
		var pos = getPos(oEvent);
		div4X = pos.x;

		document.onmousemove = function(ev) {
			var oEvent = ev || event;
			var pos = getPos(oEvent);

			if (afterdiv4X != pos.x) {
				afterdiv4X = pos.x;

				var num = afterdiv4X - div4X;
				var wid = parseInt(div3.style.width.replace("px", ""));
				var div3width = wid + num;

				div3.style.width = div3width + "px";
				div1.style.width = div3width + 5 + "px";
				div4X = afterdiv4X;
			}
		}

		document.onmouseup = function(ev) {
			document.onmousemove = null; // 将move清除
			document.onmouseup = null;
		}

		return false; // 火狐的bug，要阻止默认事件
	}
}*/