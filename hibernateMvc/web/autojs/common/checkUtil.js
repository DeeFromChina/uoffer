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
}

function isEmpty(id,isEmpty){
	if(!isEmpty){
		if($('#'+id).val() == ''){
			alert("请输入"+name);
			return false;
		}
	}
	return true;
}

function checkInput(id,name,len,isEmpty){
	if(!isEmpty(id,isEmpty)) return false;
	if($('#'+id).val().length > len){
		alert(name+"长度过长");
		return false;
	}
	return true;
}

function isEmail(id,name,len,isEmpty){
	if(!isEmpty(id,isEmpty)) return false;
	
	if($('#'+id).val() == '') {
		reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
		if(!reg.test($('#'+id).val())){
			alert("输入电子邮件格式不正确!");
			return false;
		}
	}  
	return true;
}

function checkpsw(id,name,slen,blen,isEmpty){
	if(!isEmpty(id,isEmpty)) return false;
	if($('#'+id).val().length > slen || $('#'+id).val().length < blen){
		alert(name+"长度要在"+slen+"~"+blen+"之间");
		return false;
	}
	return true;
}

function checkNum(id,name,len,isEmpty){
	if(!isEmpty(id,isEmpty)) return false;
	if($('#'+id).val() != ''){
		if(isNaN($('#'+id).val())){
			alert(name+"不是数字形式！");
			return false;
		}
	}
	if($('#'+id).val().length > len){
		alert(name+"长度过长");
		return false;
	}
	return true;
}