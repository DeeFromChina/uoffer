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
/*判断是否数字，配合onkeydown使用(noNumbers(event))*/
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