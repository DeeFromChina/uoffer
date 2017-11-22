function init() {
	parent.document.getElementById("iframe3").height=document.body.scrollHeight;
	parent.document.getElementById("myTabContent").style.height=document.body.scrollHeight;
	parent.dataFormVcenter();
	parent.countFrameHeight();
}
//下一步
function goNext(){
	var url = "userData.do?action=userExperience";
	var formId = "dataForm";
	var data = ajaxSumbit(url,formId);
	$(window.parent.document.getElementById("page4")).click();
}
//上一步
function goBack(){
	$(window.parent.document.getElementById("page2")).click();
}

function addDiv(){
	var str = '';
	var baseImg = pages["imgPath"];
	for(var i in items){
		str += '<div class="detail">'
				+ '<table>'
					+ '<tr>'
						+ '<td class="w30">'
							+ '<img src="'+baseImg+'firm.png" class="wh-18"/>'
						+ '</td>'
						+ '<td>'
							+ '<font class="font-14">'+items[i].title+'</font>'
						+ '</td>'
						+ '<td class="textR w140">'
							+'<font class="font-14">'+items[i].time+'</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td rowspan="3"></td>'
						+ '<td colspan="2">'+items[i].name+'</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td colspan="2">'
							+ '<font class="font-14">'
								+ items[i].description
							+ '</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td colspan="2">'
							+ '<font class="font-14">'+items[i].description2+'</font>'
						+ '</td>'
					+ '</tr>'
					+ '<tr>'
						+ '<td></td>'
						+ '<td colspan="2">'
							+ '<div class="editBtn floatR">'
								+ '<img src="'+baseImg+'bianji.png" class="hand"/>'
								+ '<a><font class="testbtn hand">编辑</font></a>'
							+ '</div>'
							+ '<div class="editBtn floatR">'
								+ '<img src="'+baseImg+'lajitong.png" class="hand"/>'
								+ '<a><font class="testbtn hand">删除</font></a>'
							+ '</div>'
						+ '</td>'
					+ '</tr>'
				+ '</table>'
			+ '</div>';
	}
}
function addForm(type){
	var url = "userData/resume_add_workexperience_add.jsp";
	var title = "new";
	var width = "600";
	var height = "400";
	var data = "?type="+type;
	openWindow(url+data,title,width,height,document);
}
function closeListener(){
	console.log($("#userResumeId").val());
}


