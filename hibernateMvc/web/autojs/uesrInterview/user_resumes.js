function init() {
	$("#photoReview").attr("src",window.top.document.getElementById("userImg").src);
	$("#username").append(loadValue("username"));
	$("#phone").append(loadValue("phone"));
	$("#email").append(loadValue("email"));
	
	var url = "userInterview.do?action=userResumeList";
	var data = ajaxSumbit(url);
	addUserResumeDiv(data);
	
	dataFormVcenter(false);
	countFrameHeight();
	parent.changeHeaderTitle();
}
function addUserResumeDiv(items){
	var str = "";
	for(var i in items){
		str += '<div class="user_resume_div">'
					+'<table class="mainDiv_table">'
						+'<tr>'
							+'<td colspan="2" class="col1">'+items[i].name+'</td>'
						+'</tr>'
						+'<tr>'
							+'<td class="col2"><b>'+items[i].job+' | '+items[i].money+'万/年</b></td>'
						+'</tr>'
						+'<tr>'
						+'<td class="col3">'+items[i].skillName+'</td>'
						+'</tr>'
						+'<tr>'
							+'<td class="col3">'+items[i].otherSkill+'</td>'
						+'</tr>'
					+'</table>'
				+'</div>';
	}
	$("#resumeList").append(str);
}
function userPhotoUpload(){
	var tableId = loadValue("userid");
	var path = $("#photoReview").attr('src');
	var url = "common/photoUpload.jsp?tableName=user&tableId="+tableId+"&type=userPhoto&path="+path;
	var title = "上传头像";
	var width = "500";
	var height = "400";
	var pageId = "photoUpload";
	openWindow(pageId,url,title,width,height);
}
function closeListener(){
	
}