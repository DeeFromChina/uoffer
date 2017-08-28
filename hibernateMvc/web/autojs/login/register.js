function init() {
	dataFormVcenter();
	countFrameHeight();
	parent.changeHeaderTitle();
	getTran('1');
	createValidateCode("vCode");
	setSrc('remeber','gou.png');
	var url = "login.do?action=register";
	var data = ajaxSumbit(url);
	addBootstrap(data);
	console.log(data[0].title);
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
		$("#form1").addClass("hidden");
		$("#form2").removeClass("hidden");
	}else{
		$("#form2").addClass("hidden");
		$("#form1").removeClass("hidden");
	}
}
/**倒数*/
var myVar;
var second = 60;
function Reciprocal(){
//	var phone = document.getElementById("offer_user_phone").value;
//	if(phone.length < 11 || isNaN(phone)){
//		alert("手机号码格式不正确！")
//		return;
//	}
//	getmsg();
	var msgtime = $("#msgtime");
	myVar = setInterval(function(){
		myTimer(msgtime)
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
function openJob(){
	var url = "";
	openWindow(url,title,width,height)
}









    var phoneCode = ""; 
	//头部
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function changeColor3(der){
		if(der.style.Color=="#00B38A"){
			der.style.background="#00B38A";
			der.style.Color="#FFF";
		}
	}
	function changeColor4(){
		if(document.getElementById("type").value=="1"){
			document.getElementById("button1").style.background="#00B38A";
			document.getElementById("button1").innerHTML="<font style='font-size:14px;' color='#FFF'>我是候选人</font>";
			document.getElementById("button2").style.background="#FFF";
			document.getElementById("button2").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是HR/BOSS</font>";
		}
		if(document.getElementById("type").value=="2"){
			document.getElementById("button2").style.background="#00B38A";
			document.getElementById("button2").innerHTML="<font style='font-size:14px;' color='#FFF'>我是HR/BOSS</font>";
			document.getElementById("button1").style.background="#FFF";
			document.getElementById("button1").innerHTML="<font style='font-size:14px;' color='#00B38A'>我是候选人</font>";
		}
	}
	
	//选择用户/企业
	var code2;
	//目前职位
	function addJob(items){
		var inn = "";
		for(var i in items){
			inn = inn + "<li role='presentation'>"
				+"<a role='menuitem' onclick='jobValue(" + items[i].id +",\"" + items[i].value +"\")'><font color='#000'>" + items[i].value
				+"</font></a></li>";
		}
		document.getElementById("nowjob").innerHTML=inn;
	}
	function jobValue(ke, val){
		document.getElementById("nowjobkey").value=ke;
		document.getElementById("nowjobvalue").value=val;
	}
	//求职方向
	function addJobF(items){
		var inn = "";
		for(var i in items){
			inn = inn + "<li role='presentation'>"
				+"<a role='menuitem' onclick='jobFValue(" + items[i].id +",\"" + items[i].value +"\")'><font color='#000'>" + items[i].value
				+"</font></a></li>";
		}
		document.getElementById("jobF").innerHTML=inn;
	}
	function jobFValue(ke, val){
		document.getElementById("jobFkey").value=ke;
		document.getElementById("jobFvalue").value=val;
	}
	//所在城市
	function addCity(items){
		var inn = "";
		for(var i in items){
			inn = inn + "<li role='presentation'>"
				+"<a role='menuitem' onclick='cityValue(" + items[i].id +",\"" + items[i].value +"\")'><font color='#000'>" + items[i].value
				+"</font></a></li>";
		}
		document.getElementById("city").innerHTML=inn;
	}
	function cityValue(ke, val){
		document.getElementById("citykey").value=ke;
		document.getElementById("cityvalue").value=val;
	}
	function clearTable(){
		$(".form-control").each(function () {
			this.value = "";
        });
	}
	function getmsg(){
		phoneCode = Math.floor(Math.random()*9000)+1000;
		var phone = document.getElementById("offer_user_phone").value;
		var url = "register/getmsg1.do?code="+phoneCode;
		if(phone == ""){
			alert("请输入手机号码!")
			return;
		}
		ajaxSumbitNoform(url,phone);
	}
	//同意
	var isremeber = true;
	function changeRemeber() {
		var remeberId = document.getElementById('remeberId').value;
		if (remeberId == '1') {
			document.getElementById('remeber').src = "../img/wangji.png";
			document.getElementById('remeber').style.width = "17px";
			document.getElementById('remeber').style.height = "17px";
			document.getElementById('remeberId').value = '2';
			isremeber = false;
		} else if (remeberId == '2') {
			document.getElementById('remeber').src = "../img/gou.png";
			document.getElementById('remeber').style.width = "17px";
			document.getElementById('remeber').style.height = "17px";
			document.getElementById('remeberId').value = '1';
			isremeber = true;
		}
	}
	function validateCode() {
		if(!checkValue()){
			return;
		}
		if(!isremeber){
			alert("请同意协议!");
			return;
		}
		var ispassword = false;
		if(document.getElementById("type").value=="1"){
			if(document.getElementById("offer_user_password").value === document.getElementById("offer_user_password_c").value){
				ispassword = true;
			}
		}
		if(document.getElementById("type").value=="2"){
			if(document.getElementById("password").value === document.getElementById("password_c").value){
				ispassword = true;
			}
		}
		if(!ispassword){
			alert("密码不一致！");
			return;
		}
		var ispass = false;
		ispass = true;//code2.verify(document.getElementById("inputCode2").value);
		if (ispass) {
			var url = "register/register1.do";
			var formId = "registerForm";
			var data = ajaxSumbit(url, formId);
			$("#registerForm").populateForm(data);
			if(data != 'success'){
				/* if(data == 'undefined') {
					return;
				} */
				if(data == 'error') {
					alert('已经存在该账号！');
				}
				return;
			}
			//alert("注册成功，请先查看邮箱！");
			top.location.href='user_check_msg.jsp';
		}else{
			alert("验证码输入有误！");
			code2.update();
		}
		return;
	}
	function checkValue(){
		if(document.getElementById("type").value=="1"){
			if(!isEmail('email',"邮箱","30",false)) return false;
			if(!checkInput('jobFkey',"求职方向","30",false)) return false;
			if(!checkInput('citykey',"所在城市","30",false)) return false;
			if(!checkpsw('offer_user_password',"密码","4","16",false)) return false;
		}
		if(document.getElementById("type").value=="2"){
			if(!checkInput('offer_user_company',"公司","30",false)) return false;
			if(!checkInput('offer_user_name',"目前职位","30",false)) return false;
			if(!checkInput('nowjobkey',"职位","30",false)) return false;
			if(!isEmail('offer_user_email',"邮箱","30",false)) return false;
			if(!checkInput('offer_user_phone',"手机","11",false)) return false;
			if(!checkpsw('password',"密码","4","16",false)) return false;
			if(phoneCode != document.getElementById("msgCode").value) {
				alert("手机验证码错误");
				return false;
			}
		}
		return true;
	}