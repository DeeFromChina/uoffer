window.onresize=function(){
	changeHeaderTitle();
	changBottomDiv();
}

function init(){
	setSrc('loginImg','U-Offerlogo.png');
	changBottomDiv();
	var pageurl = judgeSize("mainFrame","width",800,"loginPC.jsp","loginPhone.jsp")
	$('#mainFrame').attr("src",pageurl);
	//changeHeaderTitle();
}
/**
 * 改变头部标题栏
 * 
 * */
var list = new Array(3);
function changeHeaderTitle(){
	 var headTitle = getid("headTitle");//头部标题栏
	 var w = headTitle.offsetWidth;//头部标题栏（宽）
	 var divs = headTitle.getElementsByTagName("div");//头部标题栏div群
	 
	 var logoDiv;//左块
	 var headCenterDiv;//中块
	 var headRightDiv;//右块
	 var logoDivOffsetWidth = 0;//左块宽
	 var headCenterDivOffsetWidth = 0;//中块宽
	 var headRightDivOffsetWidth = 0;//右块宽
	 var logoDivWidth = 0;//左块最小宽
	 var headCenterDivWidth = 0;//中块最小宽
	 var headRightDivWidth = 0;//右块最小宽
	 //重新定义标题栏宽高
	 for(var i = 0; i < divs.length; i++){
		 if(divs[i].getAttribute("class") == "logoDiv"){
			 logoDivOffsetWidth = divs[i].offsetWidth;
			 logoDiv = divs[i];
			 logoDivWidth = logoDivWidthMethod(divs[i]) + 5;
		 }
		 if(divs[i].getAttribute("class") == "headCenterDiv"){
			 headCenterDivOffsetWidth = divs[i].offsetWidth;
			 headCenterDiv = divs[i];
			 headCenterDivWidth = headCenterDivWidthMethod(divs[i]) + 5;
		 }
		 if(divs[i].getAttribute("class") == "headRightDiv"){
			 headRightDivOffsetWidth = divs[i].offsetWidth;
			 headRightDiv = divs[i];
			 headRightDivWidth = headRightDivWidthMethod(divs[i]) + 5;
		 }
	 }
	 
	 var rightWidth = w * 0.24;
	 if(rightWidth < headRightDivWidth){
		 headRightDiv.style.minWidth = headRightDivWidth;
	 }
	 var leftWidth = w * 0.19;
	 if(leftWidth < logoDivWidth){
		 logoDiv.style.minWidth = logoDivWidth;
	 }
	 var centerWidth = w * 0.52;
	 if(centerWidth < headCenterDivWidth){
		 headCenterDiv.style.minWidth = headCenterDivWidth;
	 }
	 var sumWidth = logoDivOffsetWidth + headCenterDivOffsetWidth + headRightDivOffsetWidth + 0.05*w;
	 headTitle.style.height = 3/40*sumWidth;
	 headTitle.style.minHeight = "30px";
	 
	 //隐藏右边块，显示右下拉菜单
	 var rightDivs = headRightDiv.getElementsByTagName("div");
	 var hiddenbtn;
	 var appearbtn;
	 var isPass = true;
	 if(headRightDiv.offsetTop > 10){
		 if(w < 580 || headRightDiv.offsetHeight > headTitle.offsetHeight){
			 for(var i = 0; i < rightDivs.length; i++){
				 if(rightDivs[i].getAttribute("class") == "centerDiv hidden"){
					 isPass = false;
				 }
				 if(rightDivs[i].getAttribute("class") == "hidden centerDiv"){
					 appearbtn = rightDivs[i];
				 }else{
					 hiddenbtn = rightDivs[i];
				 }
			 }
			 if(isPass){
				 if(hiddenbtn != undefined){
					 hiddenbtn.setAttribute("class","centerDiv hidden");
				 }
				 if(appearbtn != undefined){
					 appearbtn.setAttribute("class","centerDiv");
				 }
			 }
			 //重新定义最小右侧块
			 headRightDiv.style.minWidth = headRightDivWidthMethod(headRightDiv);
			 //重新定义中间块
			 headCenterDiv.style.width = w - logoDiv.offsetWidth - headRightDiv.offsetWidth;
		 }
	 }else{
		 if(w > 579){
			 for(var i = 0; i < rightDivs.length; i++){
				 if(rightDivs[i].getAttribute("class") == "hidden centerDiv"){
					 isPass = false;
				 }
				 if(rightDivs[i].getAttribute("class") == "centerDiv hidden"){
					 appearbtn = rightDivs[i];
				 }else{
					 hiddenbtn = rightDivs[i];
				 }
			 }
			 if(isPass){
				 if(hiddenbtn != undefined){
					 hiddenbtn.setAttribute("class","hidden centerDiv");
				 }
				 if(appearbtn != undefined){
					 appearbtn.setAttribute("class","centerDiv");
				 }
			 }
			 headRightDiv.style.minWidth = headRightDivWidthMethod(headRightDiv) + 5;
			 headCenterDiv.removeAttribute("style");
		 }
	 }
	 
	 //改变中间块形态
	 var headCenterDivMeumDiv1 = headCenterDiv.getElementsByTagName("div")[0];
	 var div1Ul = headCenterDivMeumDiv1.getElementsByTagName("ul")[0];
	 
	 var headCenterDivMeumButtons = headCenterDiv.getElementsByTagName("button");
	 var nums = headCenterDivMeumButtons.length;
	 var centerBtnsWidth = 0;
	 for(var i = 0; i < nums; i++){
		 centerBtnsWidth += headCenterDivMeumButtons[i].offsetWidth;
		 if(headCenterDivMeumButtons[i].offsetWidth == 0){
			 centerBtnsWidth += 80;//按钮最小固定宽度
		 }
		 if(headCenterDivOffsetWidth > centerBtnsWidth + 10){
			 if(headCenterDivMeumButtons[i].getAttribute("style") != undefined && headCenterDivMeumButtons[i].getAttribute("style") != ''){
				 removeHeadLiMeum(i,div1Ul,headCenterDivMeumButtons[i]);
				 headCenterDivMeumButtons[i].removeAttribute("style");
				 list[i] = 'false';
			 }
		 }else{
			 headCenterDivMeumButtons[i].style.display = "none";
			 if(list[i] != 'true'){
				 addHeadLiMeum(i,div1Ul,headCenterDiv);
				 list[i] = 'true';
			 }
		 }
	 }
	 if(headCenterDiv.offsetHeight > headTitle.offsetHeight || headCenterDiv.offsetTop > 10 || w == 327){
		 centerBtnsWidth = 0;
		 for(var i = 0; i < nums; i++){
			 centerBtnsWidth += headCenterDivMeumButtons[i].offsetWidth;
			 if(headCenterDivOffsetWidth <= centerBtnsWidth + 10){
				 headCenterDivMeumButtons[i].style.display = "none";
				 if(list[i] != 'true'){
					 addHeadLiMeum(i,div1Ul,headCenterDiv);
					 list[i] = 'true';
				 }
			 }
		 }
	 }
	 var scrollWidth = 0;//滚动条宽度
	 headCenterDiv.style.width = w - logoDiv.offsetWidth - headRightDiv.offsetWidth - scrollWidth;
	 if(headRightDiv.offsetTop > 10){
		 if(headCenterDiv.style.width < headCenterDiv.style.minWidth){
//			 headCenterDiv.style.width = headCenterDiv.style.width -16;
			 headCenterDiv.style.minWidth = headCenterDiv.style.width;
		 }
	 }
}
function addHeadLiMeum(num,target,headCenterDiv){
	var str = "";
	str += target.innerHTML;
	
	var removeDivs = headCenterDiv.getElementsByTagName("div");
	var removeDiv;
	var isLi = false;
	if(num < removeDivs.length){
		removeDiv = headCenterDiv.getElementsByTagName("div")[num];
		isLi = true;
	}else{
		removeDiv = headCenterDiv.getElementsByTagName("button")[num];
	}
	var name = removeDiv.innerText;
	if(isLi){
		name = removeDiv.getElementsByTagName("button")[0].innerText;
		var removeDivLis = removeDiv.getElementsByTagName("ul");
		var level2Lis = "";
		for(var i = 0; i < removeDivLis.length; i++){
			level2Lis += removeDivLis[i].innerHTML;
		}
		str += "<li class=\"dropdown-submenu newname\">"
					+"<a onclick=\"to('3')\" class=\"headMeum\">"
						+"<font>"+name+"</font>"
					+"</a>"
					+"<ul class=\"dropdown-menu headlevel2Meum\">"
						+level2Lis
					+"</ul>"
				+"</li>";
	}else{
		str += "<li class=\"newname\">"
					+"<a onclick=\"to('2')\" class=\"headMeum\">"
						+"<font>"+name+"</font>"
					+"</a>"
				+"</li>";
	}
	target.innerHTML = str;
}
function removeHeadLiMeum(num,target,btn){
	var name = btn.innerText.trim();
	$('.newname').each(function(){
	    var targetName = this.getElementsByTagName("a")[0].getElementsByTagName("font")[0].innerText.trim();
	    if(targetName == name){
	    	this.remove();
	    }
    });
}
//计算左侧块最小宽度
function logoDivWidthMethod(logoDiv){
	var imgs = logoDiv.getElementsByTagName("img");
	var imgsWidth = 0;
	for(var i = 0; i < imgs.length; i++){
		imgsWidth += imgs[i].offsetWidth;
	}
	return imgsWidth;
}
//计算中间块最小宽度
function headCenterDivWidthMethod(headCenterDiv){
	var buttons = headCenterDiv.getElementsByTagName("button");
	var buttonsWidth = 0;
	for(var i = 0; i < buttons.length; i++){
		 buttonsWidth += buttons[i].offsetWidth;
	}
	return buttonsWidth;
}
//计算右侧块最小宽度
function headRightDivWidthMethod(headRightDiv){
	 var buttons = headRightDiv.getElementsByTagName("button");
	 var buttonsWidth = 0;
	 for(var i = 0; i < buttons.length; i++){
		 buttonsWidth += buttons[i].offsetWidth;
	 }
	 return buttonsWidth;
}