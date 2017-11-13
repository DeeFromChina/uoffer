var validateCode;
function init() {
	dataFormVcenter();
	countFrameHeight();
	parent.changeHeaderTitle();
	validateCode = createValidateCode("vCode");
	setSrc('remeber','gou.png');
	rememberMe();
}
function getTran(ret) {
	if (ret == '1') {
		$('#transparent1').addClass("triangle-up");
		$('#transparent2').removeClass("triangle-up");
		getid("type").value="1";
		$("#button1").addClass("checkedBtn");
		$("#button1").removeClass("checkBtn");
		$("#button2").addClass("checkBtn");
		$("#button2").removeClass("checkedBtn");
	}
	if (ret == '2') {
		$('#transparent2').addClass("triangle-up");
		$('#transparent1').removeClass("triangle-up");
		getid("type").value="2";
		$("#button2").addClass("checkedBtn");
		$("#button2").removeClass("checkBtn");
		$("#button1").addClass("checkBtn");
		$("#button1").removeClass("checkedBtn");
	}
}
function goSubmit(){
	var isPass = false;
//	isPass = checkValidateCode("inputCode");
//	if(!isPass) return;
//	isPass = checkValue();
//	if(!isPass) return;
	saveUserInfo();
	var param = "";
	if($('#type').val() == '1'){
		param = "&type=1";
	}else{
		param = "&type=2";
	}
	var url = "login.do?action=login"+param;
	var data = ajaxSumbit(url,"dataForm");
}
function rememberMe(){
	if ($.cookie("rmbUser") == "true") {
		$("#name").val($.cookie("userName"));
		$("#password").val($.cookie("passWord"));
		$("#type").val($.cookie("type"));
		getTran($("#type").val());
	}else{
		getTran('1');
	}
}
//保存用户信息 
function saveUserInfo() {
	if (getid('remeberId').value == '1') {
		var userName = $("#name").val();
		var passWord = $("#password").val();
		var type = $("#type").val();
		$.cookie("rmbUser", "true", {
			expires : 7
		}); // 存储一个带7天期限的 cookie 
		$.cookie("userName", userName, {
			expires : 7
		}); 
		$.cookie("passWord", passWord, {
			expires : 7
		}); 
		$.cookie("type", type, {
			expires : 7
		}); 
	} else {
		$.cookie("rmbUser", "false", {
			expires : -1
		});
		$.cookie("userName", '', {
			expires : -1
		});
		$.cookie("passWord", '', {
			expires : -1
		});
		$.cookie("type", '', {
			expires : -1
		}); 
	}
}
	
function changeRemeber() {
	var remeberId = getid('remeberId').value;
	if (remeberId == '1') {
		setSrc('remeber','wangji.png');
		getid('remeberId').value = '2';
	} else if (remeberId == '2') {
		setSrc('remeber','gou.png');
		getid('remeberId').value = '1';
	}
}


function validateCode() {
	if(!checkValue()){
		return;
	}
	var ispass = true;//code.verify(getid("inputCode").value);
	if (ispass) {
		var url = "login/user1.do";
		var formId = "loginForm";
		var data = ajaxSumbit(url, formId);
		if(data == 'loginError'){
    		alert("用户名或密码出错!");
    		code.update();
    		return;
    	}
		saveUserInfo();
		/* if(data == '0'){
			alert("该账号已停用,请联系客服");
		}
		if(data == '1'){
			alert("请确认你的邮箱");
		} */
		if(getid("type").value == '1'){
			if (data.status == '0') {//停用
				top.location.href='check_msg.jsp';
			}
			else if(data.status == '1') {//未提交
				top.location.href='resume_add_information.jsp';
			}
			else if(data.status == '2') {//待审批
				top.location.href='examine_user.jsp';
			}
			else if(data.status == '3') {//审批不通过
				top.location.href='examine_user_fail.jsp';
			}
			else if(data.status == '4') {//审批通过
				top.location.href='resume_edit.jsp';
			}
			else if(data.status == '5') {//下线
				top.location.href='mainresume_down.jsp';
			}
		}
		else if(getid("type").value == '2'){
			if (data.status == '0') {//停用
				top.location.href='check_msg.jsp';
			}
			else if(data.status == '1'){//未提交
				top.location.href='firm_resume_add.jsp';
			}
			else if(data.status == '2'){//待审批
				top.location.href='examine_firm.jsp';
			}
			else if(data.status == '3'){//审批不通过
				top.location.href='examine_firm_fail.jsp';
			}
			else if(data.status == '4'){//审批通过
				if (data.qytgdy == 'true') {
					top.location.href='finduser.jsp';
				}
				else {
					top.location.href='examine_firm_success.jsp';
				}
			}
		}
	} else {
		alert("验证码输入有误！");
		code.update();
	}
	return;
}

function checkValue(){
	if(!checkInput('name',"邮箱/手机号码","30",false)) return false;
	if(!checkInput('password',"密码","30",false)) return false;
	return true;
}
function enter(e){
	console.log(e);
	 var keynum;
    keynum = window.event ? e.keyCode : e.which;
    if(keynum == 13){
    	goSubmit();
    }
}