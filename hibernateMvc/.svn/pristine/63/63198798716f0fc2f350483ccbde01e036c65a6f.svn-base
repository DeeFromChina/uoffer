<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	var dataType;
	function init() {
		var url = "firm/inputFirmResumeAddPage.do";//firmresumeaddPage1.do";
		var formId = "firmForm";
		var data = ajaxSumbit(url, formId);
		if(isResetLogin()) {
			alert("登陆超时!");
			top.location.href='login.jsp';
		}
		else{
			if(data.firmList != undefined){
				var t = "<table width='100%'>";
				for(var i in data.firmList){
					t = t + addfirm(data.firmList[i]);
				}
				t = t + "</table>";
				document.getElementById("firmsId").innerHTML=t;
			}
			if(data.type != 'edit' && data.firmList != undefined){
				document.getElementById("firmteam").click();
			}else{
				dataType = 'edit';
			}
			addLi(data.firmAreaList,"Area");
			addLi(data.firmCreateYearList,"CreateYear");
			addLi(data.firmsizeList,"Size");
			addLi(data.firmTeamSizeList,"TeamSize");
			addLi(data.firmStageList,"Stage");
			addphoto(data.logo,data.huanjing);
			showFirmWelfare(data.firmWelfare);
			document.getElementById('userName').innerText = data.userName;
			$("#firmForm").populateForm(data);
		}
	}
	function showFirmWelfare(str) {
		if (typeof(str) != "undefined") {
			var strs = str.split(',');
			var strsName = "股票期权,绩效奖金,弹性工作,年底双薪,带薪年假,定期体检,年终分红,员工分享,午餐补贴,专项奖金";
			for (var i in strs) {
				newaddtag(strs[i],strsName.split(',')[strs[i] - 1]);
			}
		}
	}
	function newaddtag(id,name){
		var span1 = document.createElement("span");
		var tag1 = document.createElement("button");
		var tag2 = document.createElement("button");
		tag1.style="float:left;opacity:0.9;background:#00B38A;color:#FFF;padding:10px;";
		tag2.style="float:left;opacity:0.9;padding:10px 3px;";
		tag1.setAttribute("class", "close tagIds");
		tag2.setAttribute("class", "close");
		tag1.id=id;
		tag1.innerHTML="<font size='1'>"+name+"<a href='#' onclick='removebutton(this)' style='color:#FFF;'>&nbsp;&nbsp;&times;</a>"
						+ "</font></button>"
		tag2.innerHTML="<font size='1'>;</font>";
		span1.appendChild(tag1);
		span1.appendChild(tag2);
		document.getElementById("addtagsspan").appendChild(span1);
	}
	
	function addphoto(logo,items){
		if(logo == undefined){
			//return;
		}
		else {
			document.getElementById("img1").src=logo;
			//document.getElementById("img1Id").src=logoId;
		}
		var obj = "";
		var ids = "";
		for(var i in items){
			obj = obj + "<td style='padding: 0px 10px;'>"
							+"<div style='width:100px;height:100px;background:url(\""+items[i].photo+"\") 0% 0% / 100% no-repeat;' class='dels' id='"+items[i].id+"'>"
								+"<img src='../img/cha.png' class='closeLayer' onclick='delHuanjing(this)'/>"
							+"</div>"
						+"</td>";
			if(ids != ""){
				ids = ids + ",";
			}
			ids = ids + items[i].id;
		}
		document.getElementById("photoIds").value = ids;
		document.getElementById("firmHuanjing").innerHTML = obj;
	}
	function addfirm(firm){
		var returnfirm = "<tr style='border:1px #999999 solid;'>"
						+ "<td style='width:60px;padding:10px 0px;'>"
						+ "<div class='circleB' style='margin:0px auto;' id='"+firm.id+"' name='"+firm.name+"' onclick='selectfirm(this)'></div></td>"
						+ "<td class='textC'>"+firm.name+"</td></tr>";
		return returnfirm;
	}
	function selectfirm(selectedfirm){
		$(".circleA").each(function () {
			this.setAttribute("class", "circleB");
        });
		selectedfirm.setAttribute("class", "circleA");
		var url = "firm/firmMember.do";
		var data = ajaxSumbitNoform(url, selectedfirm.id);
		if(data == 'success'){
			top.location.href='finduser.jsp';
		}
		document.getElementById('selectfirmId').value=selectedfirm.name;
	}
	function writefirm(){
		document.getElementById('firmAllName').value=document.getElementById('selectfirmId').value;
	}
	function addLi(items,liId){
		var inn = "";
		for(var i in items){
			inn = inn + "<li role='presentation'>"
				+"<a role='menuitem' onclick='selectDownValue(" + items[i].id +",\"" + items[i].value +"\",\""+liId+"\")'><font color='#000'>" + items[i].value
				+"</font></a></li>";
		}
		document.getElementById(liId).innerHTML=inn;
		var ti1 = "firm" + liId;
		var ti2 = "firm" + liId + "Value";
	}
	function selectDownValue(ke, val, targetInput){
		var ti1 = "firm" + targetInput;
		var ti2 = "firm" + targetInput + "Value";
		document.getElementById(ti1).value=ke;
		document.getElementById(ti2).value=val;
	}
	function goSumbit(ret) {
		var ids = "";
		$(".dels").each(function(){
			if(ids != ''){
				ids = ids + ",";
			}
			ids = ids + this.id; 
		});
		document.getElementById("photoIds").value = ids;
		var tagId = "";
		$(".tagIds").each(function () {
			tagId = tagId + this.id + ",";
        });
		if (tagId.length > 0) {
			tagId = tagId.substring(0, tagId.length - 1);
		}
		document.getElementById("firmWelfare").value=tagId;
		var url = "firm/saveFirmResumeAddPage.do";//savefirmresumeadd1.do";
		var formId = "firmForm";
		var data = ajaxSumbit(url, formId);
		if(data == 'success4'){
			doUpload();
			top.location.href='finduser.jsp';
		}
		else if (data =='success2') {
			doUpload();
			top.location.href='examine_firm_dai.jsp';
		}
		else if (data =='success3') {
			doUpload();
			top.location.href='examine_firm_fail.jsp';
		}
		else if (data =='success1') {
			doUpload();
			top.location.href='examine_firm.jsp';
		}
		else{
			alert("保存错误！");
		}
		if(ret == '2'){
			top.location.href='firm_view.jsp';
		}
	}
	function doUpload() { 
		var url = "firm/firmphoto.do";
		var files = [];
		files[0] = 'fileLogo';
		if(document.getElementsByName("fileEnvironment") != undefined){
			for(var i = 0; i < document.getElementsByName("fileEnvironment").length; i++){
				files[i+1] = document.getElementsByName("fileEnvironment")[i].id;
			}
		}
		var data = fileUpload(url, files);
		return data;
	}
	function changeColor1(der){
		der.style.background="#999999";
	}
	function changeColor2(der){
		der.style.background="#000";
	}
	function removebutton(obj){
		var childNode=obj.parentNode.parentNode;
		childNode.parentNode.parentNode.removeChild(childNode.parentNode);
	}
	function addtag(tags){
		if(document.getElementById("addtagsspan").getElementsByTagName("span").length >= 4){
			alert("不能超过4个");
			return;
		}
		var span1 = document.createElement("span");
		var tag1 = document.createElement("button");
		var tag2 = document.createElement("button");
		tag1.style="float:left;opacity:0.9;background:#00B38A;color:#FFF;padding:10px;";
		tag2.style="float:left;opacity:0.9;padding:10px 3px;";
		tag1.setAttribute("class", "close tagIds");
		tag2.setAttribute("class", "close");
		tag1.id=tags.id;
		tag1.innerHTML="<font size='1'>"+tags.name+"<a href='#' onclick='removebutton(this)' style='color:#FFF;'>&nbsp;&nbsp;&times;</a>"
						+ "</font></button>"
		tag2.innerHTML="<font size='1'>;</font>";
		span1.appendChild(tag1);
		span1.appendChild(tag2);
		document.getElementById("addtagsspan").appendChild(span1);
	}
	function addimg(){
		return document.getElementById("fileLogo").click();
	}
	function review(inputFile,imgtag){
		var docObj=document.getElementById("fileLogo");
		var imgObjPreview=document.getElementById("img1");
		//files属性：返回一个 Files 集合，由指定文件夹中包含的所有 File 对象组成，包括设置了隐藏和系统文件属性的文件。
		if(docObj.files &&docObj.files[0]){
			//火狐下，直接设img属性
			imgObjPreview.style.display = 'block';
			imgObjPreview.style.width = '100px';
			imgObjPreview.style.height = '100px'; 
			//imgObjPreview.src = docObj.files[0].getAsDataURL();
			//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
			imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
			}else{
				//IE下，使用滤镜
				docObj.select();
				var imgSrc = document.selection.createRange().text;
				var localImagId = document.getElementById("logo");
				//必须设置初始大小
				localImagId.style.width = "100px";
				localImagId.style.height = "100px";
				//图片异常的捕捉，防止用户修改后缀来伪造图片    
				try{
					localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
					localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
				}
				catch(e)
				{
					alert("您上传的图片格式不正确，请重新选择!");
					return false;
				}
				imgObjPreview.style.display = 'none';
				document.selection.empty();
			}
		return true;
	}
	var huanjing = 0;
	function delHuanjing(obj){
		var childNode = obj.parentNode;
		obj.parentNode.parentNode.removeChild(childNode);
		var filesId = "fileEnvironment" + huanjing;
		var delchild = document.getElementById(filesId);
		delchild.parentNode.removeChild(delchild);
	}
	function addHuanjing(){
		//document.getElementById("firmHuanjing").removeChild(document.getElementById("jia"));
		var files = document.createElement("input");
		huanjing = huanjing +1;
		var filesId = "fileEnvironment" + huanjing;
		files.id = filesId;
		files.name = "fileEnvironment";
		files.type = "file";
		files.style="display:none;";
		files.onchange = function dofun(){
		    var obj = document.getElementById("firmHuanjing");
		    var td1 = document.createElement("td");
		    var div1 = document.createElement("div");
		    var img1 = document.createElement("img");
		    div1.style = "width:100px;height:100px;background-size:100px 100px;";
		    div1.id = this.id + "_" + huanjing;
		    td1.style = "padding:0px 10px;"
		    if(this.files &&this.files[0]){
			    div1.style.background = "url(" + window.URL.createObjectURL(this.files[0]) + ")";
			    div1.style.backgroundSize="100%";
			    div1.style.backgroundRepeat="no-repeat";
		    }else{
		    	//IE下，使用滤镜
				var imgSrc = document.selection.createRange().text;
				var localImagId = document.getElementById(div1.id);
				//必须设置初始大小
				localImagId.style.width = "100px";
				localImagId.style.height = "100px";
				//图片异常的捕捉，防止用户修改后缀来伪造图片    
				try{
					localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
					localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
				}
				catch(e)
				{
					alert("您上传的图片格式不正确，请重新选择!");
					return false;
				}
				imgObjPreview.style.display = 'none';
				document.selection.empty();
		    }
		    img1.src = "../img/cha.png";
		    img1.setAttribute("class", "closeLayer");
		    img1.onclick = function delHuanjing(img1){
		    	var childNode = this.parentNode.parentNode;
		    	childNode.parentNode.removeChild(childNode);
				var filesId = "fileEnvironment" + huanjing;
				var delchild = document.getElementById(filesId);
				delchild.parentNode.removeChild(delchild);
		    };
		    //img1.addEventListener("click", "delHuanjing(img1)"); 
		    div1.appendChild(img1);
		    td1.appendChild(div1);
		    obj.appendChild(td1);
		   }
		document.getElementById("environment").appendChild(files);
		document.getElementById(filesId).click();
		//goAddLogo();
	}
	function goAddLogo(){
		var td1 = document.createElement("td");
		td1.id = "jia";
		td1.innerHTML = "<div style='width:100px;height:100px;background-size:100px 100px;background:url(../img/add.png);' onclick='addHuanjing()'>"
			+"</div>";
	    document.getElementById("firmHuanjing").appendChild(td1);
	}
	function booleanInfot(url){
		if(dataType == 'edit'){
			top.location.href=url;
		}else{
			alert("请先补充公司信息才能有此功能！");
		}
	}
	function checkValue(){
		if(!checkInput('fileLogo',"公司头像","30",false)) return false;
		if(!checkInput('firmAllName',"公司全称","30",false)) return false;
		if(!checkInput('firmSimpleName',"公司简称","30",false)) return false;
		if(!checkInput('firmWebLink',"公司官网","30",true)) return false;
		if(!checkInput('firmCity',"所在城市","30",false)) return false;
		if(!checkInput('firmAddress',"公司地址","30",false)) return false;
		if(!checkInput('firmArea',"所在领域","30",false)) return false;
		if(!checkInput('firmCreateYear',"成立时间","30",false)) return false;
		if(!checkInput('firmSize',"公司规模","30",false)) return false;
		if(!checkInput('firmTeamSize',"技术团队规模","30",false)) return false;
		if(!checkInput('firmStage',"融资阶段","30",false)) return false;
		if(!checkInput('firmOneDescript',"一句话介绍","30",false)) return false;
		if(!checkInput('firmSeo',"公司技术","255",true)) return false;
		if(!checkInput('firmDescript',"公司介绍","255",true)) return false;
		if(!checkInput('produceDescript',"产品介绍","255",true)) return false;
		return true;
	}
</script>
<style>
	.img-square{
		margin-left: 30px;
		margin-top: 10px;
	}
	.closeLayer{
		z-index: 99;
		margin-left:90px;
		margin-top:-10px; 
	}
</style>
<body bgcolor="#F4F9F9" onload="init()">
	<div style="width:100%;height:55px;background: #000;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="270px" style="padding-left:150px;"><img src="../img/U-Offerlogo.png"></td>
				<td class="textL" style="padding-left:100px;">
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('finduser.jsp')">
				    	<font size="3">候选人</font>
				    </button>
				    <button type="button" style="height:55px !important;width:100px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('interview.jsp')">
				    	<font size="3">已发邀请</font>
				    </button>
			    </td>
			    <td class="textC" width="270px">
				    <div class="btn-group">
						<button type="button" style="height:55px !important;color:#FFF;background-color:#000;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" id="user"><span id="userName"></span>
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#" onclick="javascript:top.location.href='personal_settings_edit.jsp'"><font color="#000">个人设置</font></a>
					            <a role="menuitem" tabindex="-1" href="#" onclick="javascript:top.location.href='firm_resume_add.jsp'"><font color="#000">企业信息</font></a>
					        </li>
					    </ul>
				    </div>
				    <button type="button" style="height:55px !important;width:80px !important;color:#FFF;background-color:#000;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<br />
	<br />
	<br />
	<div style="background:#0dad87;width:100%">
		<center><img src="../img/firm_banner.png"/></center>
	</div>
	<br />
	<form id="firmForm" enctype="multipart/form-data">
	<table width="100%">
		<tr>
			<td width="15%" rowspan="13"/>
			<td rowspan="13" valign="top" width="200px">
				<table width="100%" style="background:#FFF">
					<tr>
						<td width="100%" class="textC" style="padding-top:10px;padding-left:10px;padding-bottom:10px;">
							<font size="3" color="#999999" style="font-weight:bold;">完善企业信息</font>
						</td>
					</tr>
					<tr>
						<td height="1px" bgcolor="#999999"></td>
					</tr>
					<tr><td class="textC" style="padding-top:10px;padding-left:10px;"><font size="2" color="#4F4F4F">基本信息</font></td></tr>
					<tr><td class="textC" style="padding-top:10px;padding-left:10px;"><font size="2" color="#4F4F4F">公司技术</font></td></tr>
					<tr><td class="textC" style="padding-top:10px;padding-left:10px;"><font size="2" color="#4F4F4F">公司介绍</font></td></tr>
					<tr><td class="textC" style="padding-top:10px;padding-left:10px;"><font size="2" color="#4F4F4F">产品介绍</font></td></tr>
					<tr><td class="textC" style="padding-top:10px;padding-left:10px;"><font size="2" color="#4F4F4F">公司福利</font></td></tr>
					<tr><td class="textC" style="padding-top:10px;padding-left:10px;"><font size="2" color="#4F4F4F">相关报道</font></td></tr>
					<tr><td class="textC" style="padding-top:10px;padding-left:10px;"><font size="2" color="#4F4F4F">相关图片</font></td></tr>
					<tr>
						<td class="textC">
							<center>
								<div style="background: #FFFFFF; width: 200px;padding-top:20px;">
									<button type="button" class="btn btn-default" style="width: 100px;background:#0dad87;color:#FFF;" onclick="goSumbit('1')">
							   			<font size="1">确认提交</font>
							   		</button>
								</div>
							</center>
						</td>
					</tr>
					<tr>
						<td class="textC">
							<center>
								<div style="background: #FFFFFF; width: 200px;padding-top:20px;">
									<button type="button" class="btn btn-default" style="width: 100px;background:#FFF;color:#0dad87;" onclick="goSumbit('2')">
							   			<font size="1">预览</font>
							   		</button>
								</div>
							</center>
						</td>
					</tr>
					<tr height="20px"/>
				</table>
			</td>
			<td width="4%" rowspan="13" style="border-right:2px #0dad87 solid;"></td>
			<td class="textL">
				<div style="background: #FFFFFF; width: 70%;padding-top:30px;padding-left:40px;">
					<table width="100%" style="border-collapse:separate;border-spacing:20px;">
						<tr>
							<th style="padding-top:10px;padding-bottom:10px;" colspan="3">
								基本信息
							</th>
						</tr>
						<tr>
							<td valign="top" style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">公司Logo*</font></td>
							<td width="100px" style="padding-top:10px;padding-bottom:10px;" class="textL" id="logo">
								<input type="file" id="fileLogo" name="fileLogo" style="display:none;" onchange="review()"/>
								<img src="../img/add.png" id="img1" onclick="addimg()" width="90px"/>
								<input type="hidden" id="img1Id"/>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">公司全称*</font></td>
							<td>
								<input type="text" name="firmAllName" id="firmAllName" class="form-control" style="width: 75% !important">
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">公司简称*</font></td>
							<td>
								<input type="text" name="firmSimpleName" id="firmSimpleName" class="form-control" style="width: 75% !important">
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">公司官网</font></td>
							<td>
								<input type="text" name="firmWebLink" id="firmWebLink" class="form-control" style="width: 75% !important">
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">所在城市*</font></td>
							<td>
								<input type="text" name="firmCity" id="firmCity" class="form-control" style="width: 75% !important">
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">公司地址*</font></td>
							<td>
								<input type="text" name="firmAddress" id="firmAddress" class="form-control" style="width: 75% !important">
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">所在领域*</font></td>
							<td>
								<div class="input-group" style="margin-left:-15px;width: 90% !important">
									<div class="dropdown" style="">
										<input type="hidden" id="firmArea" name="firmArea"/>
										<input type="text" name="firmAreaValue" id="firmAreaValue" class="form-control" style="width: 81% !important" readOnly="readOnly">
									    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important;height:100px;overflow-y:auto;" id="Area">
									    </ul>
									</div>
								</div>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">成立时间*</font></td>
							<td>
								<div class="input-group" style="margin-left:-15px;width: 90% !important">
									<div class="dropdown" style="">
										<input type="hidden" name="firmCreateYear" id="firmCreateYear"/>
										<input type="text" name="firmCreateYearValue" id="firmCreateYearValue" class="form-control" style="width: 81% !important" readOnly="readOnly">
									    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important;height:100px;overflow-y:auto;" id="CreateYear">
									    </ul>
									</div>
								</div>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">公司规模*</font></td>
							<td>
								<div class="input-group" style="margin-left:-15px;width: 90% !important">
									<div class="dropdown" style="">
										<input type="hidden" name="firmSize" id="firmSize"/>
										<input type="text" name="firmSizeValue" id="firmSizeValue" class="form-control" style="width: 81% !important" readOnly="readOnly">
									    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important;height:100px;overflow-y:auto;" id="Size">
									    </ul>
									</div>
								</div>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:110px;"><font color="#999999">技术团队规模*</font></td>
							<td>
								<div class="input-group" style="margin-left:-15px;width: 90% !important">
									<div class="dropdown" style="">
										<input type="hidden" name="firmTeamSize" id="firmTeamSize"/>
										<input type="text" name="firmTeamSizeValue" id="firmTeamSizeValue" class="form-control" style="width: 81% !important" readOnly="readOnly">
									    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important;height:100px;overflow-y:auto;" id="TeamSize">
									    </ul>
									</div>
								</div>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">融资阶段*</font></td>
							<td>
								<div class="input-group" style="margin-left:-15px;width: 90% !important">
									<div class="dropdown" style="">
										<input type="hidden" name="firmStage" id="firmStage"/>
										<input type="text" name="firmStageValue" id="firmStageValue" class="form-control" style="width: 81% !important" readOnly="readOnly">
									    <button type="button" style="height:34px !important;background-color:#E6E6E6;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 90% !important;height:100px;overflow-y:auto;" id="Stage">
									    </ul>
									</div>
								</div>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#999999">一句话介绍*</font></td>
							<td>
								<input type="text" name="firmOneDescript" id="firmOneDescript" class="form-control" style="width: 75% !important">
							</td>
							<td/>
						</tr>
						<tr height="20px"/>
					</table>
				</div>
			</td>
		</tr>
		<tr><td><div style="background: #DDDDDD; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td>
								<font size="3" style="font-weight:bold;">公司技术</font>
							</td>
						</tr>
						<tr height="10px"/>
						<tr height="30px">
							<td>
								<font size="1" color="#666666">填写开发团队正在使用的[技术名称]并以分号[;]隔开，方便候选人迅速判断是否匹配公司的技术需求。</font>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="firmSeo" id="firmSeo" class="form-control" style="width: 75% !important">
							</td>
						</tr>
					</table>
					<br />
				</div>
			</td>
		</tr>
		<tr><td><div style="background: #DDDDDD; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td>
								<font size="3" style="font-weight:bold;">公司介绍</font>
							</td>
						</tr>
						<tr height="10px"/>
						<tr height="30px">
							<td>
								<font size="1" color="#666666">详细介绍一下公司发展历程，所获荣耀</font>
							</td>
						</tr>
						<tr>
							<td>
								<textarea rows="8" name="firmDescript" id="firmDescript" style="width:99%;"></textarea>
							</td>
						</tr>
					</table>
					<br />
					<br />
				</div>
			</td>
		</tr>
		<tr><td><div style="background: #DDDDDD; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td>
								<font size="3" style="font-weight:bold;">产品介绍</font>
							</td>
						</tr>
						<tr height="10px"/>
						<tr height="30px">
							<td>
								<font size="1" color="#666666">阐述产品的理念及亮点,勾起候选人的兴趣并打动候选人加入团队。</font>
							</td>
						</tr>
						<tr>
							<td>
								<textarea rows="8" name="produceDescript" id="produceDescript" style="width:99%;"></textarea>
							</td>
						</tr>
					</table>
					<br />
					<br />
				</div>
			</td>
		</tr>
		<tr><td><div style="background: #DDDDDD; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td colspan="2">
								<font size="3" style="font-weight:bold;">公司福利</font>
							</td>
						</tr>
						<tr height="10px"/>
						<tr height="30px">
							<td width="100px">
								<font size="1" color="#666666">添加标签：</font>
							</td>
							<td>
								<input type="hidden" name="firmWelfare" id="firmWelfare"/>
								<div class="form-control" style="width: 90% !important;height:50px;">
									<span id="addtagsspan">
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<td width="100px" valign="top" style="padding-top:10px;">
								<font size="1" color="#666666">可选标签：</font>
							</td>
							<td>
								<table width="100%">
									<tr height="50px">
										<td>
											<button type="button" id="1" name="股票期权" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													股票期权
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="2" name="绩效奖金" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													绩效奖金
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="3" name="弹性工作" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													弹性工作
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="4" name="年底双薪" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													年底双薪
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="5" name="带薪年假" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													带薪年假
												</font>
											</button>
										</td>
									</tr>
									<tr height="50px">
										<td>
											<button type="button" id="6" name="定期体检" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													定期体检
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="7" name="年终分红" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													年终分红
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="8" name="员工分享" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													员工分享
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="9" name="午餐补贴" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													午餐补贴
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="10" name="专项奖金" class="btn btn-primary" onclick="addtag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#999999; border-color: #999999 !important; width: 80px;">
												<font size="1">
													专项奖金
												</font>
											</button>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<br />
					<br />
				</div>
			</td>
		</tr>
		<tr><td><div style="background: #DDDDDD; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td colspan="2">
								<font size="3" style="font-weight:bold;">新闻报道</font>
							</td>
						</tr>
						<tr height="10px"/>
						<tr height="30px">
							<td width="100px">
								<font size="1" color="#666666">媒体报道链接地址</font>
							</td>
							<td>
								<div class="col-lg-6">
									<div class="input-group" style="width: 250% !important;">
										<input type="text" id="inputCode" name="inputCode" class="form-control" style="width: 50% !important">
										<button type="button" class="btn btn-default" style="background:#00B38A;color:#FFF;">添加</button>
									</div>
								</div>
							</td>
						</tr>
					</table>
					<br />
					<br />
				</div>
			</td>
		</tr>
		<tr><td><div style="background: #DDDDDD; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td>
								<font size="3" style="font-weight:bold;">公司环境</font>
								<input type="hidden" id="photoIds" name="photoIds"/>
							</td>
							<td id="environment"/>
						</tr>
						<tr height="10px"/>
					</table>
					<table>
						<tr>
							<td>
								<table>
									<tr id="firmHuanjing">
									</tr>
								</table>
							</td>
							<td id="jia">
								<div style="width:100px;height:100px;background-size:100px 100px;background:url(../img/add.png);" onclick="addHuanjing()">
				     			</div>
				     		</td>
						</tr>
					</table>
					<br />
					<br />
				</div>
			</td>
		</tr>
	</table>
	</form>
	<br />
	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display:none;" id="firmteam"></button>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top:100px;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						你好，一下公司招聘团队可能符合你
					</h4>
				</div>
				<div class="modal-body" style="overflow-y:auto;height:300px;" id="firmsId">
	            </div>
				<div class="modal-footer">
					<input type="hidden" id="selectfirmId"/>
					<center><button type="button" class="btn btn-default" style="color:#FFF;background:#00B38A;width:50%;" data-dismiss="modal" onclick="writefirm()">提交更改</button></center>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

