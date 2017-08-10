function changBottomDiv(){
	var windowWidth = $(window).width();
	var divAs = $("div.bottomDiv").find("div").find("a");
	var sumWidth = 400;
	if(windowWidth < sumWidth){
		divAs.each(function(){
			this.setAttribute("class","bottomUrl2");
		});
	}
	else{
		divAs.each(function(){
			this.setAttribute("class","bottomUrl");
		});
	}
}