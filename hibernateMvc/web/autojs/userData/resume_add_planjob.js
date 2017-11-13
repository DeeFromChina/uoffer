function init() {
	parent.document.getElementById("iframe1").height=document.body.scrollHeight;
	parent.document.getElementById("myTabContent").style.height=document.body.scrollHeight;
	parent.dataFormVcenter();
	parent.countFrameHeight();
}
//下一步
function goNext(){
	$(window.parent.document.getElementById("page3")).click();
}
//上一步
function goBack(){
	$(window.parent.document.getElementById("page1")).click();
}





var dataName = "";
	//修改
	function editId(items, type){
		$(".hover").each(function () {
			var va = this.getElementsByTagName("input")[0].value;
			if(va == type){
				for(var i in items){
					if(this.id == items[i]){
						this.setAttribute("class","icheckbox_square-green checked");
					}
				}
			}
		});
	}
	function addWorkplace(items){
		var li = "";
		for(var i in items){
			li = li + "<li role='presentation'>"
						+"<a role='menuitem' tabindex='-1' id='"+items[i].id+"' onclick='workplaceId(this)'><font color='#000'>"+items[i].value+"</font></a>"
					+ "</li>"
		}
		document.getElementById("workplaceUl").innerHTML = li;
	}
	function workplaceId(obj){
		document.getElementById("workplaceId").value = obj.id;
		document.getElementById("workplace").value = obj.innerText;
	}
	//添加城市
	function addCity(items){
		var citys = "<table width='100%'>";
		var j = 1;
		for(var i in items){
			if(j == 1){
				citys = citys + "<tr>";
			}
			citys = citys + "<td width='29px' class='textL' style='padding-top:20px;padding-bottom:24px;'>"
							+"<div class='icheckbox_square-green hover' onclick='cityId(this)' id='"+items[i].id+"'>"
								+"<input type='hidden' value='city'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL' style='padding-top:20px;padding-bottom:24px;'><font style='font-size:14px;' color='#4F4F4F'>"+items[i].value+"</font></td>";
			if(j == 5){
				citys = citys + "</tr>";
				j = 1;
			}else{
				j = j+1;
			}
		}
		citys = citys + "</table>";
		document.getElementById('city').innerHTML=citys;
	}
	function cityId(obj){
		if(obj.getAttribute('class') == "icheckbox_square-green checked"){
			obj.setAttribute("class","icheckbox_square-green hover");
		}
		else if(obj.getAttribute('class') == "icheckbox_square-green hover"){
			obj.setAttribute("class","icheckbox_square-green checked");
		}
	}
	//添加公司
	function addFirm(items){
		var firms = "<table width='100%'>";
		firms = firms + "<td width='29px' class='textL' style='padding-top:20px;padding-bottom:24px;'>"
							+"<div class='icheckbox_square-green hover' onclick='firmId(this)' id='"+items[0].id+"'>"
							+"<input type='hidden' value='firm'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL' style='padding-top:20px;padding-bottom:24px;'><font style='font-size:14px;' color='#4F4F4F'>"+items[0].value+"</font></td>";
		firms = firms + "<td width='29px' class='textL' style='padding-top:20px;padding-bottom:24px;'>"
							+"<div class='icheckbox_square-green hover' onclick='firmId(this)' id='"+items[0].id+"'>"
							+"<input type='hidden' value='firm'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL' colspan='4' style='padding-top:20px;padding-bottom:24px;'><font style='font-size:14px;' color='#4F4F4F' >"+items[1].value+"</font></td>";
		var j = 1;
		var num = 1;
		for(var i in items){
			if(num < 3){
				num++;
				continue;
			}
			if(j == 1){
				firms = firms + "<tr>";
			}
			var a = "";
			if(items[i].value.length < 3){
				a = "style='padding-right:13px;'";
			}
			firms = firms + "<td width='29px' class='textL' style='padding-top:20px;padding-bottom:24px;'>"
							+"<div class='icheckbox_square-green hover' onclick='firmId(this)' id='"+items[i].id+"'>"
							+"<input type='hidden' value='firm'/>"
								+"<input tabindex='2' type='checkbox' style='opacity:0;'>"
							+"</div>"
						+"</td>"
						+"<td class='textL' style='padding-top:20px;padding-bottom:24px;'><font style='font-size:14px;' color='#4F4F4F' "+a+" >"+items[i].value+"</font></td>";
			if(j == 4){
				firms = firms + "</tr>";
				j = 1;
			}else{
				j = j+1;
			}
		}
		firms = firms + "</table>";
		document.getElementById('firm').innerHTML=firms;
	}
	function firmId(obj){
		if(obj.getAttribute('class') == "icheckbox_square-green checked"){
			obj.setAttribute("class","icheckbox_square-green hover");
		}
		else if(obj.getAttribute('class') == "icheckbox_square-green hover"){
			obj.setAttribute("class","icheckbox_square-green checked");
		}
	}
	//保存
	function goSumbit(){
		var cityId = "";
		var firmId = "";
		$(".checked").each(function () {
			var id = this.getElementsByTagName("input")[0].value;
			if(id=="firm"){
				if(firmId != ""){
					firmId = firmId + ",";
				}
				firmId = firmId + this.id;
			}
			if(id=="city"){
				if(cityId != ""){
					cityId = cityId + ",";
				}
				cityId = cityId + this.id;
			}
        });
		document.getElementById("cityIds").value = cityId;
		document.getElementById("firmIds").value = firmId;
		if(!checkValue()){
			return;
		}
		var url = "user/saveresumeAddPlanjob1.do";
		var formId = "resumeAddPlanjobForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			top.location.href='resume_add_workexperience.jsp';
		}else{
			alert("保存出错！");
		}
	}
	function booleanInfot(url){
		if(dataName == '1'){
			top.location.href=url;
		}else{
			alert("请先填写好您的简历信息！");
		}
	}
	function checkValue(){
		if(!checkInput('firmIds',"您对哪个阶段的公司感兴趣","30",false)) return false;
		if(!checkInput('cityIds',"您期望在哪个城市工作","30",false)) return false;
		if(!checkInput('workplace',"工作地点","30",false)) return false;
		return true;
	}