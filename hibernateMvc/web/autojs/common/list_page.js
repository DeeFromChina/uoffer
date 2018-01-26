$(document).ready(function(){ 
	var lists = $(document.body).find("list");
	for(var i = 0; i < lists.length; i++){
		var list_div = document.createElement("div");//list的div
		var list_head = $(lists[i]).find("list-head")[0];
		var list_head_size = $(lists[i]).find("list-head-size")[0];
		var titles = $(list_head).text().spilt(",");
		var titles_size = $(list_head_size).text().spilt(",");
		var row_divs = new Array();//列div数组
		for(var t = 0; t < titles.size(); t++){
			var div = document.createElement("div");//列div
			$(div).css("width",titles_size[t]);
			var cow_div = document.createElement("div");//单元格div
			$(cow_div).addClass("list-head");
			$(div).append(cow_div);
			row_divs[t] = div;
		}
		for(var i = 0; i < row_divs.size(); i++){
			$(document.body).append(row_divs[i]);
			$(document.body).append(row_divs[i]);
		}
	}
});

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