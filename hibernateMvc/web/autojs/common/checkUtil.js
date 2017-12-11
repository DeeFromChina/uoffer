function checkValidateCode(checkInputId){
	if($("#"+checkInputId).val() == undefined || $("#"+checkInputId).val() == ""){
		alert("请输入验证码!");
		return false;
	}
	var isPass = validateCode.verify($("#"+checkInputId).val());
	if(!isPass){
		validateCode.update();
		alert("验证码错误，请重新输入!");
		return false;
	}
	return true;
}

function isEmpty(val,name,isEmpty){
	if(!isEmpty){
		if(val == ''){
			alert("请输入"+name);
			return false;
		}
	}
	return true;
}

/*用于校验对象是否为空，空就返回空字符串*/
function returnString(obj){
	return obj == undefined ? "" : obj;
}
function isNull(obj){
	if(obj != undefined && obj != null && obj != ""){
		return false;
	}
	return true;
}

function checkInput(val,name,len,isNull){
	if(!isEmpty(val,name,isNull)) return false;
	if(val.length > len){
		alert(name+"长度过长");
		return false;
	}
	return true;
}

function isEmail(val,name,isNull){
	if(!isEmpty(val,name,isNull)) return false;
	
	if(val != '') {
		var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
		if(!reg.test(val)){
			alert("输入电子邮件格式不正确!");
			return false;
		}
	}  
	return true;
}

function checkpsw(val,name,slen,blen,isNull){
	if(!isEmpty(val,name,isNull)) return false;
	if(val.length > slen || val.length < blen){
		alert(name+"长度要在"+slen+"~"+blen+"之间");
		return false;
	}
	return true;
}

function checkNum(val,name,len,isNull){
	if(!isEmpty(val,name,isNull)) return false;
	if(val != ''){
		if(isNaN(val)){
			alert(name+"不是数字形式！");
			return false;
		}
	}
	if(val.length > len){
		alert(name+"长度过长");
		return false;
	}
	return true;
}
/*判断是否数字,不允许数字以外的字符输入,配合onkeydown使用(noNumbers(event))*/
function noNumbers(e){
	var keynum;
	var keychar;
	var numcheck;
	
	 // IE
	if(window.event){
		keynum = e.keyCode
	}
	else if(e.which){ // Netscape/Firefox/Opera
		keynum = e.which
	}
	keychar = String.fromCharCode(keynum);
	numcheck = /\d/;
	return !numcheck.test(keychar);
}
function checkFile(elementId,type){
	var filepath = $('#'+elementId).val().split(".");
	var pressless = "";
	var msg = "";
	pressless = filepath[filepath.length-1];
	if(pressless == undefined){
		msg = "请上传正确格式的文件!";
	}else if(type == "photo"){
		if(pressless != 'jpg' && pressless != 'png' && pressless != 'gif'){
			msg = "请上传图片类型文件！";
		}
	}
	if(msg != ""){
		$('#'+elementId).val("");
		alert(msg);
		return false;
	}else{
		return true;
	}
}
function BrowserType(){  
    var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串  
    var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器  
    var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //判断是否IE浏览器  
    var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //判断是否IE的Edge浏览器  
    var isFF = userAgent.indexOf("Firefox") > -1; //判断是否Firefox浏览器  
    var isSafari = userAgent.indexOf("Safari") > -1 && userAgent.indexOf("Chrome") == -1; //判断是否Safari浏览器  
    var isChrome = userAgent.indexOf("Chrome") > -1 && userAgent.indexOf("Safari") > -1; //判断Chrome浏览器  

	if (isIE){  
		var reIE = new RegExp("MSIE (\\d+\\.\\d+);");  
		reIE.test(userAgent);  
		var fIEVersion = parseFloat(RegExp["$1"]);  
		if(fIEVersion == 7)  { return "IE7";}  
		else if(fIEVersion == 8)  { return "IE8";}  
		else if(fIEVersion == 9)  { return "IE9";}  
		else if(fIEVersion == 10) { return "IE10";}  
		else if(fIEVersion == 11) { return "IE11";}  
		else { return "0"}//IE版本过低  
	}//isIE end  
       
    if (isFF) {  return "FF";}  
    if (isOpera) {  return "Opera";}  
    if (isSafari) {  return "Safari";}  
    if (isChrome) { return "Chrome";}  
    if (isEdge) { return "Edge";}  
 }