var validateCode;
function init() {
	dataFormVcenter();
	countFrameHeight();
	parent.changeHeaderTitle();
	getTran('1');
	validateCode = createValidateCode("vCode");
	setSrc('remeber','gou.png');
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
	appearForm();
}
/**显示表单*/
function appearForm(){
	if(getid("type").value == '1'){
		$("#form2").addClass("hidden");
		$("#form1").removeClass("hidden");
	}else{
		$("#form1").addClass("hidden");
		$("#form2").removeClass("hidden");
	}
}
/**倒数*/
var myVar;
var second = 60;
function Reciprocal(){
	var phone = $("input[name='offer_user_phone']").val();
	if(isNaN(phone) || phone.length < 11){
		alert("手机号码格式不正确！")
		return;
	}
//	getmsg();
	var msgtime = $("#msgtime");
	myTimer(msgtime);
	myVar = setInterval(function(){
		myTimer(msgtime);
	},1000);
	second = 60;
}
function myTimer(msgtime){
	if(second == 60){
		msgtime.removeClass("rightBtn");
		msgtime.addClass("reciprocalBtn");
		msgtime.attr("disabled", "true");
	}
	msgtime.html(second+"秒");
	second = second-1;
	if(second < 0){
		clearInterval(myVar);
		msgtime.addClass("rightBtn");
		msgtime.removeClass("reciprocalBtn");
		msgtime.removeAttr("disabled");
		msgtime.html("获取");
		return;
	}
}
function selectJob(){
	var url = "public/job_checkbox.jsp";
	var title = "选择您的求职方向";
	var width = "600";
	var height = "400";
	var type = "1";
	var data = "?type="+type+"&targetId=goJobId&targetValue=goJobName&isMultiselect=false";
	openWindow(url+data,title,width,height);
}
function selectCity(){
	var url = "public/city_select.jsp";
	var title = "选择您的城市";
	var width = "600";
	var height = "400";
	var data = "?type=3&target=city&targetId=cityId&targetValue=cityName";
	openWindow(url+data,title,width,height);
}
function goSubmit(){
	var isPass = true;
//	isPass = checkValidateCode("inputCode");
	if(!isPass) return;
	var form = "";
	var param = "";
	if($('#type').val() == '1'){
		form = "form1";
		param = "&type=1";
	}else{
		form = "form2";
		param = "&type=2";
	}
//	isPass = checkValue(form);
	if(!isPass) return;
	var url = "login.do?action=register"+param;
	var data = ajaxSumbit(url,form);
}

function checkValue(formId){
	var form = $("#"+formId).serializeObject();
	if(formId == "form1"){
		if(!isEmail(form.email,"邮箱",false)) return false;
		if(!checkInput(form.goJobId,"求职方向",11,false)) return false;
		if(!checkInput(form.cityId,"所在城市",11,false)) return false;
		if(!checkInput(form.password,"密码",30,false)) return false;
	}
	if(formId == "form2"){
		if(!checkInput(form.companyName,"公司",80,false)) return false;
		if(!checkInput(form.userName,"姓名",30,false)) return false;
		if(!checkInput(form.jobId,"目前职位",11,false)) return false;
		if(!isEmail(form.email,"邮箱",false)) return false;
		if(!checkNum(form.phone,"手机",11,false)) return false;
		if(!checkInput(form.password,"密码",30,false)) return false;
	}
	if(form.password != form.password_c){
		alert("两次输入密码不一致，请重新输入!");
		return false;
	}
	return true;
}
