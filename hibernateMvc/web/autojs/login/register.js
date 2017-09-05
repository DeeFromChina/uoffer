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
function selectJob(targetId,index){
	var url = "public/job_checkbox.jsp";
	var title = "选择您的求职方向";
	var width = "600";
	var height = "400";
	var type = "1";
	if(index == '2'){
		type = "2";
	}
	var data = "?type="+type+"&targetId="+targetId+"&targetValue="+targetId+"Name&isMultiselect=false";
	openWindow(url+data,title,width,height);
}
function selectCity(){
	var url = "public/city_select.jsp";
	var title = "选择您的城市";
	var width = "600";
	var height = "400";
	var data = "?type=3&target=city&targetId=userCity&targetValue=userCityName";
	openWindow(url+data,title,width,height);
}
function goSubmit(){
	checkValidateCode("inputCode");
}
