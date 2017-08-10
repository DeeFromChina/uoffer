//初始化页面时验证是否记住了密码 
//$(document).ready(function() {
//	if ($.cookie("rmbUser") == "true") {
//		$("#rmbUser").attr("checked", true);
//		$("#name").val($.cookie("userName"));
//		$("#password").val($.cookie("passWord"));
//	}
//});

//保存用户信息 
function saveUserInfo() {
	if (getid('remeberId').value == '1') {
		var userName = $("#name").val();
		var passWord = $("#password").val();
		$.cookie("rmbUser", "true", {
			expires : 7
		}); // 存储一个带7天期限的 cookie 
		$.cookie("userName", userName, {
			expires : 7
		}); // 存储一个带7天期限的 cookie 
		$.cookie("passWord", passWord, {
			expires : 7
		}); // 存储一个带7天期限的 cookie 
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
	}
}
	
	
function changeColor3(der){
	if(der.style.Color=="#00B38A"){
		der.style.background="#00B38A";
		der.style.Color="#FFF";
	}
}
function changeColor4(){
	if(getid("type").value=="1"){
		getid("button1").style.background="#00B38A";
		getid("button1").innerHTML="<font style='font-size:14px;' color='#FFF'>我是候选人</font>";
		getid("button2").style.background="#FFF";
		getid("button2").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是HR/BOSS</font>";
	}
	if(getid("type").value=="2"){
		getid("button2").style.background="#00B38A";
		getid("button2").innerHTML="<font style='font-size:14px;' color='#FFF'>我是HR/BOSS</font>";
		getid("button1").style.background="#FFF";
		getid("button1").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是候选人</font>";
	}
}
var code;
function getTran(ret) {
	var trans1 = getid('transparent1');
	var trans2 = getid('transparent2');
	if (ret == '1') {
		trans1.setAttribute("class", "triangle-up");
		trans2.setAttribute("class", "");
		getid("type").value="1";
		getid("button1").style.background="#00B38A";
		getid("button1").innerHTML="<font style='font-size:14px;' color='#FFF'>我是候选人</font>";
		getid("button2").style.background="#FFF";
		getid("button2").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是HR/BOSS</font>";
	}
	if (ret == '2') {
		trans2.setAttribute("class", "triangle-up");
		trans1.setAttribute("class", "");
		getid("type").value="2";
		getid("button2").style.background="#00B38A";
		getid("button2").innerHTML="<font style='font-size:14px;' color='#FFF'>我是HR/BOSS</font>";
		getid("button1").style.background="#FFF";
		getid("button1").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是候选人</font>";
	}
}
function changeRemeber() {
	var remeberId = getid('remeberId').value;
	if (remeberId == '1') {
		getid('remeber').src = "../img/wangji.png";
		getid('remeber').style.width = "16px";
		getid('remeber').style.height = "16px";
		getid('remeberId').value = '2';
	} else if (remeberId == '2') {
		getid('remeber').src = "../img/gou.png";
		getid('remeber').style.width = "16px";
		getid('remeber').style.height = "16px";
		getid('remeberId').value = '1';
	}
}

function init() {
	//alert("11");
	dataFormVcenter();
	countFrameHeight();
}
/**
 * dataForm垂直居中
 * 
 * */
function dataFormVcenter(){
	console.log("1");
	var formHeight = $('#dataForm').height();
	var windowHeight = $(window).height();
	if(parent.$("#headTitle") != undefined){
		windowHeight = windowHeight - parent.$("#headTitle").height() + 10;
	}
	var bottomHeight = 0;
	var bottomDiv = $("#bottomDiv");
	if(bottomDiv != undefined){
		bottomHeight = bottomDiv.offsetHeight;
	}
	if(windowHeight < formHeight){
		windowHeight = formHeight + bottomHeight;
	}
	console.log(windowHeight);
	doc.body.height = windowHeight;
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
function test123(){
	top.location.href='check_email1.jsp';
}
function test123123(){
	var url = "action=login&b=3,2";
	//var url = "login/user1.do";
	alert(url);
	var formId = "loginForm";
	var data = ajaxSumbit(url, formId);
}

