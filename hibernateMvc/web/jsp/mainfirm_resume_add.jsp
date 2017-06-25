<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	var photoWidth = 0;
	var dataType;
	var nowInputCode = "";
	function init() {
		photoWidth=document.getElementById("fuliphoto").scrollWidth*0.22;
		photoWidth = photoWidth > 200 ? 200 : photoWidth;
		closephoto=photoWidth-20;
		tdphoto=photoWidth+20;
		/* if(isResetLogin()) {
			alert("登陆超时!");
			top.location.href='login.jsp';
		}
		else{ */
			var url = "firm/inputFirmResumeAddPage.do";
			var formId = "firmForm";
			var data = ajaxSumbit(url, formId);
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
			}
			/* else{
				dataType = 'edit';
			} */
			var status = data.status;
			if (status == '0' || status == '1' || status == '2' || status == '3') {
				dataType = '';
			}
			else if (status == '4') {
				dataType = 'edit';
			}
			addLi(data.firmCityList,"City");
			addLi(data.firmAreaList,"Area");
			addLi(data.firmCreateYearList,"CreateYear");
			addLi(data.firmsizeList,"Size");
			addLi(data.firmTeamSizeList,"TeamSize");
			addLi(data.firmStageList,"Stage");
			addphoto(data.logo,data.huanjing);
			showFirmWelfare(data.firmWelfare);
			document.getElementById('userName').innerText = data.userName;
			addInputCode(data.nowInputCode);
			$("#firmForm").populateForm(data);
			checkImg();
			document.getElementById("main").style.display="";
		/* } */
		/* if(document.getElementById("addpng") != undefined){
			document.getElementById("addpng").style.width=photoWidth+"px";
			document.getElementById("addpng").style.height=photoWidth+"px";
		} */
	}
	function addInputCode(items) {
		if (items == undefined) return;
		for(var i in items.split(';')){
			var tr1 = document.createElement("tr");
			tr1.innerHTML = "<td/>"
							+"<td style='padding-top:10px;'>"
								+"<div class='col-lg-6' style='width:100%;'>"
									+"<div class='input-group' style='width: 100% !important;'>"
										+"<input type='text' disabled='disabled' style='color:#CCCCCC;background:#FFF;width:85%;height:41px;border:none;' value='"+items.split(';')[i]+"'/>"
										+"<img src='../img/jian.png' width='41px' height='41px' style='padding:10px;' onclick='delnewtr(this)'/>"
									+"</div>"
								+"</div>"
							+"</td>"
							;
			document.getElementById("addnews").appendChild(tr1);
			document.getElementById("inputCode").value="";
		}
	}
	
	function checkImg(){
		checkImg2(document.getElementById("firmAllName").value,"1");
		checkImg2(document.getElementById("firmSeo").value,"2");
		checkImg2(document.getElementById("firmDescript").value,"3");
		checkImg2(document.getElementById("produceDescript").value,"4");
		checkImg2(document.getElementById("firmWelfare").value,"5");
		checkImg2(document.getElementById("nowInputCode").value,"6");
		checkImg2(document.getElementById("photoIds").value,"7");
	}
	function checkImg2(vals,id){
		if(vals != undefined && vals != ""){
			document.getElementById("id"+id).color="#00B38A";
			document.getElementById("idimg"+id).style.display="";
		}else{
			document.getElementById("id"+id).Color="#4F4F4F";
			document.getElementById("idimg"+id).style.display="none";
		}
	}
	function showFirmWelfare(str) {
		if (typeof(str) != "undefined") {
			var strs = str.split(',');
			var strsName = "股票期权,绩效奖金,弹性工作,年底双薪,带薪年假,定期体检,年终分红,员工分享,午餐补贴,专项奖金";
			for (var i in strs) {
				newaddtag(strs[i]);
			}
		}
	}
	function newaddtag(name){
		if(name.replace(/\s+/g,"") == "" || name.replace(/\s+/g,"") == "&nbsp"){
			return;
		}
		var span1 = document.createElement("span");
		var tag1 = document.createElement("button");
		var tag2 = document.createElement("button");
		tag1.contentEditable = "false";
		tag2.contentEditable = "false";
		span1.contentEditable = "false";
		//tag1.style="float:left;opacity:0.9;border:none;background:#00B38A;color:#FFF;height:25px;margin-top:5px;font-weight:normal;text-shadow:none;";
		//tag2.style="float:left;opacity:0.9;font-weight:normal;text-shadow:none;margin-top:10px;";
		tag1.style="margin-top:5px;float:left;opacity:0.9;border:none;background:#00B38A;color:#FFF;height:25px;font-weight:normal;text-shadow:none;";
		tag2.style="margin-top:5px;float:left;opacity:0.9;font-weight:normal;text-shadow:none;";
		tag1.setAttribute("class", "close tagIds");
		tag2.setAttribute("class", "close fen");
		tag1.id=name;//href='#' 
		tag1.innerHTML="<font style='font-size:14px;' color='#FFF'>&nbsp;"+name+"&nbsp;</font></button>"
		tag2.innerHTML="<font style='font-size:14px;'>&nbsp;;&nbsp;</font>";
		tag1.disabled="disabled";
		tag2.disabled="disabled";
		span1.appendChild(tag1);
		span1.appendChild(tag2);
		document.getElementById("addtagsdiv").appendChild(span1);
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
		var obj2 = "";
		var obj3 = "";
		var ids = "";
		var num = 1;
		for(var i in items){
			if(num < 4){
				obj = obj + "<td style='padding: 10px 10px;' width='"+tdphoto+"px'>"
								+"<div style='width:"+photoWidth+"px;height:"+photoWidth+"px;background:url(\""+items[i].photo+"\") 0% 0% / 100% no-repeat;' class='dels' id='"+items[i].id+"'>"
									+"<img src='../img/cha.png' class='closeLayer' style='margin-left:"+closephoto+"px;' onclick='delHuanjing(this)'/>"
								+"</div>"
							+"</td>";
			}
			if(num > 3 && num < 7){
				obj2 = obj2 + "<td style='padding: 10px 10px;' width='"+tdphoto+"px'>"
								+"<div style='width:"+photoWidth+"px;height:"+photoWidth+"px;background:url(\""+items[i].photo+"\") 0% 0% / 100% no-repeat;' class='dels' id='"+items[i].id+"'>"
									+"<img src='../img/cha.png' class='closeLayer' style='margin-left:"+closephoto+"px;' onclick='delHuanjing(this)'/>"
								+"</div>"
							+"</td>";
			}
			if(num > 6){
				obj3 = obj3 + "<td style='padding: 10px 10px;' width='"+tdphoto+"px'>"
								+"<div style='width:"+photoWidth+"px;height:"+photoWidth+"px;background:url(\""+items[i].photo+"\") 0% 0% / 100% no-repeat;' class='dels' id='"+items[i].id+"'>"
									+"<img src='../img/cha.png' class='closeLayer' style='margin-left:"+closephoto+"px;' onclick='delHuanjing(this)'/>"
								+"</div>"
							+"</td>";
			}
			if(ids != ""){
				ids = ids + ",";
			}
			ids = ids + items[i].id;
			num++;
		}
		document.getElementById("photoIds").value = ids;
		document.getElementById("firmHuanjing").innerHTML = obj;
		document.getElementById("firmHuanjing2").innerHTML = obj2;
		document.getElementById("firmHuanjing3").innerHTML = obj3;
		if(num < 3){
			checkaddHu(document.getElementById("firmHuanjing"));
		}
		if(num > 2 && num < 6){
			checkaddHu(document.getElementById("firmHuanjing2"));
		}
		if(num > 6){
			checkaddHu(document.getElementById("firmHuanjing3"));
		}
	}
	function addfirm(firm){
		var returnfirm = "<tr height='5px'/>"+"<tr style='border:1px #CCCCCC solid;' height='69px'>"
						+ "<td style='width:60px;padding:10px 0px;'>"
						+ "<div class='circleB' style='width:20px;height:20px;margin:0px auto;' id='"+firm.id+"' name='"+firm.name+"' onclick='selectfirm(this)'></div></td>"
						+ "<td class='textC'><font style='font-size:16px;' color='#4F4F4F'>"+firm.name+"</font></td></tr>";
		return returnfirm;
	}
	function selectfirm(selectedfirm){
		$(".circleA").each(function () {
			this.setAttribute("class", "circleB");
        });
		selectedfirm.setAttribute("class", "circleA");
		document.getElementById('selectfirmId').value=selectedfirm.name;
	}
	function writefirm(){
		var id;
		$(".circleA").each(function () {
			id = this.id;
        });
		var url = "firm/firmMember.do";
		var data = ajaxSumbitNoform(url, id);
		if(data == 'success'){
			top.location.href='finduser.jsp';
		}
		//document.getElementById('firmAllName').value=document.getElementById('selectfirmId').value;
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
	function replaceAll(str, str1, str2) {
		var lstr = "";
		for (var i in str.split(str1)) {
			str = str.replace(str1, str2);
		}
		for (var i in str.split(str2)) {
			if (str.split(str2)[i] != '') lstr += str.split(str2)[i] + ";";
		}
		lstr = lstr.substring(0, lstr.length - 1);
		return lstr;
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

		document.getElementById('ret').value = ret;
		document.getElementById("firmWelfare").value=tagId;
		document.getElementById("inputCode").value=document.getElementById("nowInputCode").value;
		var firmSeo = document.getElementById('firmSeo').value;
		firmSeo = replaceAll(firmSeo, "；", ";");
		document.getElementById('firmSeo').value = firmSeo;
		if(!checkValue()){
			return;
		}
		var url = "firm/saveFirmResumeAddPage.do";//savefirmresumeadd1.do";
		var formId = "firmForm";
		var data = ajaxSumbit(url, formId);
		if(data == 'success4'){
			doUpload();
			top.location.href='finduser.jsp';
		}
		else if (data =='success2') {
			doUpload();
			top.location.href='examine_firm.jsp';
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
		if(ret == '1'){
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
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function removebutton(obj){
		var childNode=obj.parentNode.parentNode;
		childNode.parentNode.removeChild(childNode);
	}
	function addtag(tags){
		if(document.getElementById("addtagsdiv").getElementsByTagName("span").length >= 4){
			alert("不能超过4个");
			return false;
		}
		var span1 = document.createElement("span");
		var tag1 = document.createElement("button");
		var tag2 = document.createElement("button");
		tag1.contentEditable = false;
		tag2.contentEditable = false;
		span1.contentEditable = false;
		tag1.style="margin-top:5px;float:left;opacity:0.9;border:none;background:#00B38A;color:#FFF;height:25px;font-weight:normal;text-shadow:none;";
		tag2.style="margin-top:10px;float:left;opacity:0.9;font-weight:normal;text-shadow:none;";
		tag1.setAttribute("class", "close tagIds");
		tag2.setAttribute("class", "close fen");
		tag1.id=tags.name;// href='#'
		tag1.innerHTML="<font style='font-size:14px;' onchange(this) color='#FFF'>&nbsp;"+tags.name+ "&nbsp;</font></button>"
		tag2.innerHTML="<font style='font-size:14px;' onchange(this)>&nbsp;;&nbsp;</font>";
		tag1.disabled="disabled";
		tag2.disabled="disabled";
		span1.appendChild(tag1);
		span1.appendChild(tag2);
		document.getElementById("addtagsdiv").appendChild(span1);
		return true;
	}
	function addimg(){
		return document.getElementById("fileLogo").click();
	}
	function review(){
		var docObj=document.getElementById("fileLogo");
		var imgObjPreview=document.getElementById("img1");
		var pressless = docObj.value.split(".");
		if(pressless[pressless.length-1] != 'jpg' && pressless[pressless.length-1] != 'png' && pressless[pressless.length-1] != 'gif'){
			docObj.value = "";
			alert("请上传图片类型文件！");
			return;
		}
		//files属性：返回一个 Files 集合，由指定文件夹中包含的所有 File 对象组成，包括设置了隐藏和系统文件属性的文件。
		if(docObj.files &&docObj.files[0]){
			//火狐下，直接设img属性
			imgObjPreview.style.display = 'block';
			imgObjPreview.style.width = '140px';
			imgObjPreview.style.height = '140px'; 
			//imgObjPreview.src = docObj.files[0].getAsDataURL();
			//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
			imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
			}else{
				//IE下，使用滤镜
				docObj.select();
				var imgSrc = document.selection.createRange().text;
				var localImagId = document.getElementById("logo");
				//必须设置初始大小
				localImagId.style.width = "140px";
				localImagId.style.height = "140px";
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
		var h = obj.parentNode.id.substr(obj.parentNode.id.length-1,1)
		var filesId = "fileEnvironment" + h;
		var delchild = document.getElementById(filesId);
		delchild.parentNode.removeChild(delchild);
		checkaddHu(obj.parentNode);
	}
	function checkaddHu(obj){
		if(document.getElementById("jiatd") != undefined){
			document.getElementById("jiatd").parentNode.removeChild(document.getElementById("jiatd"));;
		}
		if(obj.id == "firmHuanjing3" && document.getElementById("firmHuanjing3").getElementsByTagName("td").length == 3){
			return;
		}
		var td1 = document.createElement("td");
		td1.id="jiatd";
		td1.style="padding:10px;";
		td1.innerHTML="<img src='../img/add.png' style='width:"+photoWidth+"px;height:"+photoWidth+"px;' onclick='addHuanjing()'/>";
		obj.appendChild(td1);
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
			var pressless = this.value.split(".");
			if(pressless[pressless.length-1] != 'jpg' && pressless[pressless.length-1] != 'png' && pressless[pressless.length-1] != 'gif'){
				this.value = "";
				alert("请上传图片类型文件！");
				return;
			}
		    var obj = document.getElementById("firmHuanjing");
		    document.getElementById("jiatd").parentNode.removeChild(document.getElementById("jiatd"));;
		    if(document.getElementById("firmHuanjing").getElementsByTagName("td").length > 2){
		    	if(document.getElementById("firmHuanjing2").getElementsByTagName("td").length < 3){
		    		obj = document.getElementById("firmHuanjing2");
		    	}else{
		    		obj = document.getElementById("firmHuanjing3");
			    }
		    }
		    var td1 = document.createElement("td");
		    var div1 = document.createElement("div");
		    var img1 = document.createElement("img");
		    div1.style = "width:"+photoWidth+"px;height:"+photoWidth+"px;background-size:"+photoWidth+"px "+photoWidth+"px;";
		    div1.id = this.id + "_" + huanjing;
		    td1.style = "padding:10px 10px;"
		    if(this.files &&this.files[0]){
			    div1.style.background = "url(" + window.URL.createObjectURL(this.files[0]) + ")";
			    div1.style.backgroundSize="100%";
			    div1.style.backgroundRepeat="no-repeat";
		    }else{
		    	//IE下，使用滤镜
				var imgSrc = document.selection.createRange().text;
				var localImagId = document.getElementById(div1.id);
				//必须设置初始大小
				localImagId.style.width = photoWidth+"px";
				localImagId.style.height = photoWidth+"px";
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
		    img1.style="margin-left:"+closephoto+"px;";
		    img1.onclick = function delHuanjing(img1){
		    	var childNode = this.parentNode.parentNode;
		    	var fatherNode = childNode.parentNode;
		    	childNode.parentNode.removeChild(childNode);
		    	var h = this.parentNode.id.substr(this.parentNode.id.length-1,1)
				var filesId = "fileEnvironment" + h;
				var delchild = document.getElementById(filesId);
				delchild.parentNode.removeChild(delchild);
				checkaddHu(fatherNode);
				/* if(document.getElementById("environment").getElementsByTagName("input").length > 4){
					document.getElementById("jia").style.display="none";
					return;
				}else{
					document.getElementById("jia").style.display="block";
				} */
		    };
		    //img1.addEventListener("click", "delHuanjing(img1)"); 
		    div1.appendChild(img1);
		    td1.appendChild(div1);
		    td1.width=tdphoto+"px";
		    obj.appendChild(td1);
		    /* if(document.getElementById("environment").getElementsByTagName("input").length > 4){
				document.getElementById("jia").style.display="none";
				return;
			}else{
				document.getElementById("jia").style.display="block";
			} */
		    if(document.getElementById("firmHuanjing").getElementsByTagName("td").length > 2){
		    	if(document.getElementById("firmHuanjing2").getElementsByTagName("td").length < 3){
		    		obj = document.getElementById("firmHuanjing2");
		    	}else{
		    		obj = document.getElementById("firmHuanjing3");
			    }
		    }
		    checkaddHu(obj);
		   }
		document.getElementById("environment").appendChild(files);
		document.getElementById(filesId).click();
		//goAddLogo();
	}
	function goAddLogo(){
		var td1 = document.createElement("td");
		td1.id = "jia";
		td1.innerHTML = "<div style='width:140px;height:140px;background-size:140px 140px;background:url(../img/add.png);' onclick='addHuanjing()'>"
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
		if(document.getElementById("img1").src=="../img/add.png"){
			alert("请添加公司头像");
			return false;
		}
		//if(!checkInput('fileLogo',"公司头像","30",false)) return false;
		if(!checkInput('firmAllName',"公司全称","30",false)) return false;
		if(!checkInput('firmSimpleName',"公司简称","30",false)) return false;
		if(!checkInput('firmWebLink',"公司官网","30",true)) return false;
		if(!checkInput('firmCityValue',"所在城市","30",false)) return false;
		if(!checkInput('firmAddress',"公司地址","30",false)) return false;
		if(!checkInput('firmAreaValue',"所在领域","30",false)) return false;
		if(!checkInput('firmCreateYearValue',"成立时间","30",false)) return false;
		if(!checkInput('firmSizeValue',"公司规模","30",false)) return false;
		if(!checkInput('firmTeamSizeValue',"技术团队规模","30",false)) return false;
		if(!checkInput('firmStageValue',"融资阶段","30",false)) return false;
		if(!checkInput('firmOneDescript',"一句话介绍","30",false)) return false;
		if(!checkInput('firmSeo',"公司技术","500",true)) return false;
		if(!checkInput('firmDescript',"公司介绍","255",true)) return false;
		if(!checkInput('produceDescript',"产品介绍","255",true)) return false;
		return true;
	}
	function showtishi(ret){
		document.getElementById(ret).style.display="";
	}
	function distishi(ret){
		document.getElementById(ret).style.display="none";
	}
	function po_Last_Div(obj) {
        if (window.getSelection) {//ie11 10 9 ff safari
            obj.focus(); //解决ff不获取焦点无法定位问题
            var range = window.getSelection();//创建range
            range.selectAllChildren(obj);//range 选择obj下所有子内容
            range.collapseToEnd();//光标移至最后
        }
        else if (document.selection) {//ie10 9 8 7 6 5
            var range = document.selection.createRange();//创建选择对象
            //var range = document.body.createTextRange();
            range.moveToElementText(obj);//range定位到obj
            range.collapse(false);//光标移至最后
            range.select();
        }
    }
	function trytest(){
		var b=document.getElementById("addtagsdiv").innerText;
		b=b.replace("；",";");
		var strsName = "";
		$(".tagIds").each(function () {
			strsName = strsName + this.innerText;
        });
		b = b.replace(/\s+/g,"&nbsp;");
		strsName = strsName.replace(/\s+/g,"&nbsp;");
		if(strsName != undefined){
			var strs = strsName.split(';');
			for(var a = 0; a < strs.length; a++){
				b=b.replace(strs[a]+";","");
			}
		}
		for(var i = 0; i < b.split(';').length; i++){
			newaddtag(b.split(';')[i]);
		}
		$(".fen").each(function () {
			this.innerHTML="<font style='font-size:14px;'>&nbsp;;&nbsp;</font>";
        });
		var inndiv = document.getElementById("addtagsdiv").innerHTML;
		if(inndiv.substring(0,6) != "<span>"){
			document.getElementById("addtagsdiv").innerHTML=inndiv.substring(inndiv.indexOf("<span>"));
		}
	}
	function addedittag(){
		trytest();
		$("#addtagsdiv").contents().filter(function(){
			return this.nodeType != 1;
		}).remove();
		/* var strsName = "股票期权,绩效奖金,弹性工作,年底双薪,带薪年假,定期体检,年终分红,员工分享,午餐补贴,专项奖金";
		var strs = strsName.split(',');
		var b=document.getElementById("addtagsdiv").innerText;
		b = b.replace(/\s+/g,"&nbsp;");
		b = b.replace(" ","&nbsp;");
		for(var a = 0; a < strs.length; a++){
			b=b.replace("&nbsp;"+strs[a]+"&nbsp;;&nbsp;","");
		}
		b=b.replace("&nbsp;"," ");
		b=b.replace("；",";");
		for(var i = 0; i < b.split(';').length; i++){
			newaddtag("0",b.split(';')[i]);
		}
		$(".fen").each(function () {
			this.innerHTML="<font style='font-size:14px;'>&nbsp;;&nbsp;</font>";
        }); */
	}
	function edittag(tid){
		var tagId = "";
		$(".tagIds").each(function () {
			if(tid == this.id){
				var childNode=this.parentNode;
				childNode.parentNode.removeChild(childNode);
			}
        });
	}
	function clicktag(obj){
		var inndiv = document.getElementById("addtagsdiv").innerHTML;
		document.getElementById("addtagsdiv").innerHTML = inndiv.replace("<br>","");
		if(obj.style.color=='rgb(255, 255, 255)'){
			edittag(obj.name);
			obj.style.background="#FFF";
			obj.style.color="#CCCCCC";
			obj.style.border="1px #CCCCCC solid";
		}else{
			if(!addtag(obj)){
				return;
			}
			obj.style.background="#00B38A";
			obj.style.color="#FFF";
			obj.style.border="1px #00B38A solid";
		}
	}
	function addnewstr(){
		if(!checkInput('inputCode',"媒体报道链接地址","100",false)) return;
		if (document.getElementById("nowInputCode").value == "") {
			nowInputCode = document.getElementById("inputCode").value;
			document.getElementById("nowInputCode").value = nowInputCode;
		}
		else {
			nowInputCode = document.getElementById("nowInputCode").value + ";" + document.getElementById("inputCode").value;
			document.getElementById("nowInputCode").value = nowInputCode;
		}
		var tr1 = document.createElement("tr");
		tr1.innerHTML = "<td/>"
						+"<td style='padding-top:10px;'>"
							+"<div class='col-lg-6' style='width:100%;'>"
								+"<div class='input-group' style='width: 100% !important;'>"
									+"<input type='text' disabled='disabled' style='color:#CCCCCC;background:#FFF;width:85%;height:41px;border:none;' value='"+document.getElementById("inputCode").value+"'/>"
									+"<img src='../img/jian.png' width='41px' height='41px' style='padding:10px;' onclick='delnewtr(this)'/>"
								+"</div>"
							+"</div>"
						+"</td>"
						;
		document.getElementById("addnews").appendChild(tr1);
		document.getElementById("inputCode").value="";
	}
	function delnewtr(obj){
		var thisInputCode = obj.parentNode.childNodes[0].value;
		var thisInputCodeLength = thisInputCode.length;
		var num = document.getElementById("nowInputCode").value.indexOf(thisInputCode);
		var nowInputCodeLength = document.getElementById("nowInputCode").value.length;
		if (num == 0) {
			if (nowInputCodeLength == thisInputCodeLength) {
				document.getElementById("nowInputCode").value = "";
			}
			else {
				document.getElementById("nowInputCode").value =	document.getElementById("nowInputCode").value.replace(thisInputCode + ";", "");
			}
		}
		else {
			document.getElementById("nowInputCode").value =	document.getElementById("nowInputCode").value.replace(";" + thisInputCode, "");
		}
		var childNode=obj.parentNode.parentNode.parentNode.parentNode;
		childNode.parentNode.removeChild(childNode);
	}
</script>
<style>
	.img-square{
		margin-left: 30px;
		margin-top: 10px;
	}
	.closeLayer{
		z-index: 99;
		margin-top:-10px; 
	}
</style>
<body bgcolor="#F5F8F9" onload="init()">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('finduser.jsp')">
				    	<font>候选人</font>
				    </button>
				    <button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="booleanInfot('user_view.jsp')">
				    	<font>已发邀请</font>
				    </button>
			    </td>
			    <td class="textR" style="width:24%;padding-right:10%">
				    <div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" id="user"><span id="userName"></span>
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="background-color:#32373C;width:150px;">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#" onclick="booleanInfot('personal_settings_edit.jsp')" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">个人设置</font></a>
					            <a role="menuitem" tabindex="-1" href="#" onclick="booleanInfot('firm_resume_add.jsp')" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">企业信息</font></a>
					        </li>
					    </ul>
				    </div>
				    <button type="button" style="height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:63px;"></div>
	<div style="margin-top:3px;background:#0dad87;width:100%;height:141px;">
		<table width="100%" height="100%">
			<tr>
				<td rowspan="2" class="textR">
					<font color="#FFF" style="font-size:40px;font-family:PingFang-SC-Regular;">[</font>
				</td>
				<td class="textC" width="452px">
					<font color="#FFF" style="font-size:26px;font-family:PingFang-SC-Regular;">完善企业信息,让候选人快速了解公司</font>
				</td>
				<td rowspan="2">
					<font color="#FFF" style="font-size:40px;font-family:PingFang-SC-Regular;">]</font>
				</td>
			</tr>
			<tr>
				<td class="textC">
					<font color="#FFF" style="font-size:18px;font-family:PingFang-SC-Regular;">同时也能大大提升候选人对面试邀请的接受率</font>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:30px;"></div>
	<form id="firmForm" method="post" enctype="multipart/form-data">
	<input type="hidden" name="nowInputCode" id="nowInputCode"/>
	<input type="hidden" name="status" id="status"/>
	<input type="hidden" name="ret" id="ret"/>
	<table width="100%" style="min-width:1080px;" id="main">
		<tr>
			<td width="19%" rowspan="13"/>
			<td rowspan="13" valign="top" width="13%" style="min-width:200px;">
				<table width="100%" style="background:#FFF">
					<tr height="20px"/>
					<tr>
						<td colspan="2" width="100%" class="textC" style="padding-top:10px;padding-left:10px;padding-bottom:10px;">
							<font color="#9A9A9A" style="font-size:16px;">完善企业信息</font>
						</td>
					</tr>
					<tr height="20px"/>
					<tr>
						<td colspan="2" height="2px" bgcolor="#CCCCCC"></td>
					</tr>
					<tr height="10px"/>
					<tr>
						<td class="textR" width="40%" style="padding-top:10px;"><img src="../img/gou.png" width="14px" height="14px" id="idimg1" style="display:none;"/></td>
						<td class="textL" width="60%" style="padding-top:10px;padding-left:10px;"><font style="font-size:14px;" color="#9A9A9A" id="id1">基本信息</font></td>
					</tr>
					<tr height="10px"/>
					<tr>
						<td class="textR" width="39%" style="padding-top:10px;"><img src="../img/gou.png" width="14px" height="14px" id="idimg2" style="display:none;"/></td>
						<td class="textL" style="padding-top:10px;padding-left:10px;"><font style="font-size:14px;" color="#9A9A9A" id="id2">公司技术</font></td>
					</tr>
					<tr height="10px"/>
					<tr>
						<td class="textR" width="39%" style="padding-top:10px;"><img src="../img/gou.png" width="14px" height="14px" id="idimg3" style="display:none;"/></td>
						<td class="textL" style="padding-top:10px;padding-left:10px;"><font style="font-size:14px;" color="#9A9A9A" id="id3">公司介绍</font></td>
					</tr>
					<tr height="10px"/>
					<tr>
						<td class="textR" width="39%" style="padding-top:10px;"><img src="../img/gou.png" width="14px" height="14px" id="idimg4" style="display:none;"/></td>
						<td class="textL" style="padding-top:10px;padding-left:10px;"><font style="font-size:14px;" color="#9A9A9A" id="id4">产品介绍</font></td>
					</tr>
					<tr height="10px"/>
					<tr>
						<td class="textR" width="39%" style="padding-top:10px;"><img src="../img/gou.png" width="14px" height="14px" id="idimg5" style="display:none;"/></td>
						<td class="textL" style="padding-top:10px;padding-left:10px;"><font style="font-size:14px;" color="#9A9A9A" id="id5">公司福利</font></td>
					</tr>
					<tr height="10px"/>
					<tr>
						<td class="textR" width="39%" style="padding-top:10px;"><img src="../img/gou.png" width="14px" height="14px" id="idimg6" style="display:none;"/></td>
						<td class="textL" style="padding-top:10px;padding-left:10px;"><font style="font-size:14px;" color="#9A9A9A" id="id6">相关报道</font></td>
					</tr>
					<tr height="10px"/>
					<tr>
						<td class="textR" width="39%" style="padding-top:10px;"><img src="../img/gou.png" width="14px" height="14px" id="idimg7" style="display:none;"/></td>
						<td class="textL" style="padding-top:10px;padding-left:10px;"><font style="font-size:14px;" color="#9A9A9A" id="id7">相关图片</font></td>
					</tr>
					<tr>
						<td class="textC" colspan="2">
							<center>
								<div style="background: #FFFFFF; width: 200px;padding-top:20px;">
									<button type="button" class="btn btn-default" style="width: 131px;height:41px;background:#0dad87;color:#FFF;" onclick="goSumbit('2')">
							   			<font style="font-size:14px;">确认提交</font>
							   		</button>
								</div>
							</center>
						</td>
					</tr>
					<tr>
						<td class="textC" colspan="2">
							<center>
								<div style="background: #FFFFFF; width: 200px;padding-top:20px;">
									<button type="button" class="btn btn-default" style="width: 131px;height:41px;background:#FFF;color:#0dad87;" onclick="goSumbit('1')">
							   			<font style="font-size:14px;">预览</font>
							   		</button>
								</div>
							</center>
						</td>
					</tr>
					<tr height="20px"/>
				</table>
			</td>
			<td width="23px" rowspan="13" style="border-right:2px #0dad87 solid;"></td>
			<td class="textL">
				<div style="min-width:600px;background: #FFFFFF; width: 70%;padding-top:30px;padding-left:40px;">
					<table width="100%" style="border-collapse:separate;border-spacing:20px;line-height:38px;">
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;" colspan="3">
								<font style="font-size:18px;" color="#4F4F4F">基本信息</font>
							</td>
						</tr>
						<tr>
							<td valign="top" style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#4F4F4F" style="font-size:14px;">公司Logo<font color="#0DAD88">*</font></font></td>
							<td width="100px" style="padding-top:10px;padding-bottom:10px;" class="textL" id="logo">
								<input type="file" id="fileLogo" name="fileLogo" style="display:none;" onchange="review()"/>
								<img src="../img/add.png" id="img1" onclick="addimg()" width="141px" height="141px"/>
								<input type="hidden" id="img1Id"/>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#4F4F4F" style="font-size:14px;">公司全称<font color="#0DAD88">*</font></font></td>
							<td>
								<table width="100%">
									<tr>
										<td width="75%">
											<input type="text" name="firmAllName" id="firmAllName" class="form-control" style="max-width:401px;width: 100% !important;height:41px;">
										</td>
										<td style="padding-left:14px;">
											<table>
												<tr>
													<td>
														<img src="../img/gantan.png" width="20px" height="20px" onmouseover="showtishi('tishi1')" onmouseout="distishi('tishi1')"/>
													</td>
													<td>
														<div style="z-index:9009;position:absolute;width:250px;margin-top:-50px;display:none;" id="tishi1">
															<table>
																<tr>
																	<td><div class="triangle-left"></div></td>
																	<td style="background:#00B38A;color:#FFF;padding:20px 10px;border-radius:5px;">
																		<font style="font-size:14px;" color="#FFF">填写贵公司招聘面试所在的地址，我们会通知候选人去这个地址面试，请务必填写正确。</font>
																	</td>
																</tr>
															</table>
														</div>
													</td>
												</tr>
											</table>
										</td>
										<td/>
									</tr>
								</table>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:16px;width:100px;"><font color="#4F4F4F" style="font-size:14px;">公司简称<font color="#0DAD88">*</font></font></td>
							<td>
								<input type="text" name="firmSimpleName" id="firmSimpleName" class="form-control" style="max-width:401px;width: 75% !important;height:41px;">
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;width:100px;"><font color="#4F4F4F" style="font-size:14px;">公司官网</font></td>
							<td>
								<input type="text" name="firmWebLink" id="firmWebLink" class="form-control" style="max-width:401px;width: 75% !important;height:41px;">
							</td>
							<td/>
						</tr>
						<tr height="65px">
							<td style="width:100px;"><font color="#4F4F4F" style="font-size:14px;">所在城市<font color="#0DAD88">*</font></font></td>
							<td>
								<div class="input-group" style="display:inline;margin-left:-15px;width: 90% !important">
									<div class="dropdown">
										<input type="hidden" id="firmCity" name="firmCity"/>
										<input type="text" name="firmCityValue" id="firmCityValue" class="form-control" style="max-width:360px;width: 67.5% !important;height:41px;" readOnly="readOnly">
									    <button type="button" style="height:41px !important;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="max-width:401px;width: 77% !important;height:150px;overflow-y:auto;" id="City">
									    </ul>
									</div>
								</div>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:6px;padding-bottom:6px;width:100px;"><font color="#4F4F4F" style="font-size:14px;">公司地址<font color="#0DAD88">*</font></font></td>
							<td>
								<input type="text" name="firmAddress" id="firmAddress" class="form-control" style="max-width:401px;width: 75% !important;height:41px;" placeholder="填写正确的面试地址">
							</td>
							<td/>
						</tr>
						<tr height="63px">
							<td style="width:100px;"><font color="#4F4F4F" style="font-size:14px;">所在领域<font color="#0DAD88">*</font></font></td>
							<td>
								<div class="input-group" style="display:inline;margin-left:-15px;width: 90% !important">
									<div class="dropdown" style="">
										<input type="hidden" id="firmArea" name="firmArea"/>
										<input type="text" name="firmAreaValue" id="firmAreaValue" class="form-control" style="max-width:360px;width: 67.5% !important;height:41px;" readOnly="readOnly" placeholder="请选择贵公司所在领域">
									    <button type="button" style="height:41px !important;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="max-width:401px;width: 77% !important;max-height:150px;overflow-y:auto;" id="Area">
									    </ul>
									</div>
								</div>
							</td>
							<td/>
						</tr>
						<tr height="53px">
							<td style="width:100px;"><font color="#4F4F4F" style="font-size:14px;">成立时间<font color="#0DAD88">*</font></font></td>
							<td>
								<div class="input-group" style="display:inline;margin-left:-15px;width: 90% !important">
									<div class="dropdown" style="">
										<input type="hidden" name="firmCreateYear" id="firmCreateYear"/>
										<input type="text" name="firmCreateYearValue" id="firmCreateYearValue" class="form-control" style="max-width:360px;width: 67.5% !important;height:41px;" readOnly="readOnly" placeholder="请选择贵公司成立时间">
									    <button type="button" style="height:41px !important;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="max-width:401px;width: 77% !important;max-height:150px;overflow-y:auto;" id="CreateYear">
									    </ul>
									</div>
								</div>
							</td>
							<td/>
						</tr>
						<tr height="56px">
							<td style="width:100px;"><font color="#4F4F4F" style="font-size:14px;">公司规模<font color="#0DAD88">*</font></font></td>
							<td style="padding-top:3px;">
								<table width="100%">
									<tr>
										<td width="79%">
											<div class="input-group" style="display:inline;width: 100% !important">
												<div class="dropdown">
													<input type="hidden" name="firmSize" id="firmSize"/>
													<input type="text" name="firmSizeValue" id="firmSizeValue" class="form-control" style="max-width:360px;width: 86% !important;height:41px;" readOnly="readOnly" placeholder="请选择贵公司规模">
												    <button type="button" style="height:41px !important;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
												        <span class="caret"></span>
												    </button>
												    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="max-width:401px;width: 98% !important;max-height:100px;overflow-y:auto;" id="Size">
												    </ul>
												</div>
											</div>
										</td>
										<td style="padding-left:14px;">
											<table>
												<tr>
													<td>
														<img src="../img/gantan.png" width="20px" height="20px" onmouseover="showtishi('tishi2')" onmouseout="distishi('tishi2')"/>
													</td>
													<td>
														<div style="z-index:9009;position:absolute;width:250px;margin-top:-50px;display:none;" id="tishi2">
															<table>
																<tr>
																	<td><div class="triangle-left"></div></td>
																	<td style="background:#00B38A;color:#FFF;padding:20px 10px;border-radius:5px;">
																		<font style="font-size:14px;" color="#FFF">候选人非常关注公司的规模，有的候选人喜欢去创业公司工作，有的则喜欢去大型企业工作。</font>
																	</td>
																</tr>
															</table>
														</div>
													</td>
												</tr>
											</table>
										</td>
										<td/>
									</tr>
								</table>
							</td>
							<td/>
						</tr>
						<tr height="47px">
							<td style="padding-top:10px;padding-bottom:10px;width:110px;"><font color="#4F4F4F" style="font-size:14px;">技术团队规模<font color="#0DAD88">*</font></font></td>
							<td>
								<table width="100%">
									<tr>
										<td width="79%">
											<div class="input-group" style="width: 100% !important">
												<div class="dropdown" style="">
													<input type="hidden" name="firmTeamSize" id="firmTeamSize"/>
													<input type="text" name="firmTeamSizeValue" id="firmTeamSizeValue" class="form-control" style="max-width:360px;width: 86% !important;height:41px;" readOnly="readOnly" placeholder="请选择贵公司技术团队规模">
												    <button type="button" style="height:41px !important;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
												        <span class="caret"></span>
												    </button>
												    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="max-width:401px;width: 98% !important;max-height:100px;overflow-y:auto;" id="TeamSize">
												    </ul>
												</div>
											</div>
										</td>
										<td style="padding-left:14px;">
											<table>
												<tr>
													<td>
														<img src="../img/gantan.png" width="20px" height="20px" onmouseover="showtishi('tishi3')" onmouseout="distishi('tishi3')"/>
													</td>
													<td>
														<div style="z-index:9009;position:absolute;width:250px;margin-top:-40px;display:none;" id="tishi3">
															<table>
																<tr>
																	<td><div class="triangle-left"></div></td>
																	<td style="background:#00B38A;color:#FFF;padding:20px 10px;border-radius:5px;">
																		<font style="font-size:14px;" color="#FFF">开发者规模将有助于候选人了解贵公司的组织架构。</font>
																	</td>
																</tr>
															</table>
														</div>
													</td>
												</tr>
											</table>
										</td>
										<td/>
									</tr>
								</table>
							</td>
							<td/>
						</tr>
						<tr height="47px">
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#4F4F4F" style="font-size:14px;">融资阶段<font color="#0DAD88">*</font></font></td>
							<td>
								<table width="100%">
									<tr>
										<td width="79%">
											<div class="input-group" style="width: 100% !important">
												<div class="dropdown" style="">
													<input type="hidden" name="firmStage" id="firmStage"/>
													<input type="text" name="firmStageValue" id="firmStageValue" class="form-control" style="max-width:360px;width: 86% !important;height:41px;" readOnly="readOnly" placeholder="请选择贵公司融资阶段">
												    <button type="button" style="height:41px !important;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
												        <span class="caret"></span>
												    </button>
												    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="max-width:401px;width: 98% !important;max-height:100px;overflow-y:auto;" id="Stage">
												    </ul>
												</div>
											</div>
										</td>
										<td style="padding-left:14px;">
											<table>
												<tr>
													<td>
														<img src="../img/gantan.png" width="20px" height="20px" onmouseover="showtishi('tishi4')" onmouseout="distishi('tishi4')"/>
													</td>
													<td>
														<div style="z-index:9009;position:absolute;width:250px;margin-top:-65px;display:none;" id="tishi4">
															<table>
																<tr>
																	<td><div class="triangle-left"></div></td>
																	<td style="background:#00B38A;color:#FFF;padding:20px 10px;border-radius:5px;">
																		<font style="font-size:14px;" color="#FFF">公司融资的信息可以提现这家公司发展的状况，一级候选人去了以后是否有可能获得期权奖励，对于创业型的公司，融资相关的信息对于候选人格外重要。</font>
																	</td>
																</tr>
															</table>
														</div>
													</td>
												</tr>
											</table>
										</td>
										<td/>
									</tr>
								</table>
							</td>
							<td/>
						</tr>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;width:100px;"><font color="#4F4F4F" style="font-size:14px;">一句话介绍<font color="#0DAD88">*</font></font></td>
							<td>
								<table width="100%">
									<tr>
										<td width="79%">
											<input type="text" name="firmOneDescript" id="firmOneDescript" class="form-control" style="max-width:401px;width: 97% !important;height:41px;">
										</td>
										<td style="padding-left:14px;">
											<table>
												<tr>
													<td>
														<img src="../img/gantan.png" width="20px" height="20px" onmouseover="showtishi('tishi5')" onmouseout="distishi('tishi5')"/>
													</td>
													<td>
														<div style="z-index:9009;position:absolute;width:250px;margin-top:-40px;display:none;" id="tishi5">
															<table>
																<tr>
																	<td><div class="triangle-left"></div></td>
																	<td style="background:#00B38A;color:#FFF;padding:20px 10px;border-radius:5px;">
																		<font style="font-size:14px;" color="#FFF">一句话描述公司愿景或者企业文化。</font>
																	</td>
																</tr>
															</table>
														</div>
													</td>
												</tr>
											</table>
										</td>
										<td/>
									</tr>
								</table>
							</td>
							<td/>
						</tr>
						<tr height="20px"/>
					</table>
				</div>
			</td>
		</tr>
		<tr><td><div style="min-width:600px;background: #CCCCCC; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="min-width:600px;background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td>
								<font color="#4F4F4F" style="font-size:18px;">公司技术</font>
							</td>
						</tr>
						<tr height="20px"/>
						<tr height="30px">
							<td>
								<font color="#4F4F4F" style="font-size:14px;">填写开发团队正在使用的[技术名称]并以分号[;]隔开，方便候选人迅速判断是否匹配公司的技术需求。</font>
							</td>
						</tr>
						<tr height="17px"/>
						<tr>
							<td>
								<input type="text" name="firmSeo" id="firmSeo" class="form-control" style="color:#4F4F4F;width: 90% !important;height:41px;" placeholder="比如: JAVA；前端开发技术；">
							</td>
						</tr>
						<tr height="40px"/>
					</table>
				</div>
			</td>
		</tr>
		<tr><td><div style="min-width:600px;background: #CCCCCC; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="min-width:600px;background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td>
								<font color="#4F4F4F" style="font-size:18px;">公司介绍</font>
							</td>
						</tr>
						<tr height="10px"/>
						<tr height="30px">
							<td>
								<font color="#4F4F4F" style="font-size:14px;">详细介绍一下公司发展历程，所获荣耀、企业故事等内容，将有助于候选人迅速了解公司并作出决定。</font>
							</td>
						</tr>
						<tr height="17px"/>
						<tr>
							<td>
								<textarea rows="8" name="firmDescript" id="firmDescript" style="color:#4F4F4F;width:90%;" placeholder="说说公司发展的故事吧，特别是创业公司或创始人的故事，更能打动候选人..."></textarea>
							</td>
						</tr>
					</table>
					<br />
					<br />
				</div>
			</td>
		</tr>
		<tr><td><div style="min-width:600px;background: #CCCCCC; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="min-width:600px;background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td>
								<font color="#4F4F4F" style="font-size:18px;">产品介绍</font>
							</td>
						</tr>
						<tr height="10px"/>
						<tr height="30px">
							<td>
								<font color="#4F4F4F" style="font-size:14px;">阐述产品的理念及亮点,勾起候选人的兴趣并打动候选人加入团队。</font>
							</td>
						</tr>
						<tr height="17px"/>
						<tr>
							<td>
								<textarea rows="8" name="produceDescript" id="produceDescript" style="color:#4F4F4F;width:90%;"></textarea>
							</td>
						</tr>
					</table>
					<br />
					<br />
				</div>
			</td>
		</tr>
		<tr><td><div style="min-width:600px;background: #CCCCCC; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="min-width:600px;background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td colspan="2">
								<font color="#4F4F4F" style="font-size:18px;">公司福利</font>
							</td>
						</tr>
						<tr height="36px"/>
						<tr height="30px">
							<td width="100px">
								<font color="#4F4F4F" style="font-size:14px;">添加标签：</font>
							</td>
							<td>
								<input type="hidden" name="firmWelfare" id="firmWelfare"/>
								<table width="100%">
									<tr>
										<td width="70%">
											<div id="addtagsdiv" class="form-control" style="width:100%;height:41px;overflow-x:auto;" contenteditable="true" onclick="po_Last_Div(this)"></div>
										</td>
										<td valign="top">
											<button type="button" class="btn btn-default" style="width:100px;height:41px;background:#00B38A;color:#FFF;" onclick="addedittag()">贴上</button>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr height="67px">
							<td width="100px" valign="top" style="padding-top:10px;">
								<font color="#4F4F4F" style="font-size:14px;">可选标签：</font>
							</td>
							<td/>
						</tr>
						<tr>
							<td/>
							<td>
								<table width="100%">
									<tr height="60px">
										<td style="max-width: 117px;">
											<button type="button" id="1" name="股票期权" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													股票期权
												</font>
											</button>
										</td>
										<td style="max-width: 117px;">
											<button type="button" id="2" name="绩效奖金" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													绩效奖金
												</font>
											</button>
										</td>
										<td style="max-width: 117px;">
											<button type="button" id="3" name="弹性工作" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													弹性工作
												</font>
											</button>
										</td>
										<td style="max-width: 117px;">
											<button type="button" id="4" name="年底双薪" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													年底双薪
												</font>
											</button>
										</td>
										<td style="max-width: 117px;">
											<button type="button" id="5" name="带薪年假" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													带薪年假
												</font>
											</button>
										</td>
										<td/>
									</tr>
									<tr height="60px">
										<td>
											<button type="button" id="6" name="定期体检" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													定期体检
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="7" name="年终分红" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													年终分红
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="8" name="员工分享" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													员工分享
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="9" name="午餐补贴" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													午餐补贴
												</font>
											</button>
										</td>
										<td>
											<button type="button" id="10" name="专项奖金" class="btn btn-primary" onclick="clicktag(this)" data-toggle="button"
											style="background-color: #FFF !important;color:#CCCCCC; border-color: #CCCCCC !important; max-width: 100px;">
												<font style="font-size:14px;">
													专项奖金
												</font>
											</button>
										</td>
										<td/>
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
		<tr><td><div style="min-width:600px;background: #CCCCCC; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="min-width:600px;background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%" id="addnews">
						<tr>
							<td colspan="2">
								<font style='font-size:18px;color:#4F4F4F;'>新闻报道</font>
							</td>
						</tr>
						<tr height="10px"/>
						<tr height="30px">
							<td width="100px" style="white-space: nowrap;">
								<font style='font-size:14px;color:#4F4F4F;'>媒体报道链接地址</font>
							</td>
							<td>
								<div class="col-lg-6" style="width:100%;">
									<div class="input-group" style="width: 100% !important;">
										<input type="text" id="inputCode" name="inputCode" class="form-control" style="width: 75.5% !important;height:41px;" placeholder="http://">
										<button type="button" class="btn btn-default" style="width:100px;height:41px;background:#00B38A;color:#FFF;" onclick="addnewstr()">添加</button>
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
		<tr><td><div style="min-width:600px;background: #CCCCCC; width: 70%;height:1px;"></div></td></tr>
		<tr>
			<td>
				<div style="min-width:600px;background: #FFFFFF; width: 70%;padding-top:30px;padding-left:50px;">
					<table width="100%">
						<tr>
							<td>
								<font color="#4F4F4F" style="font-size:18px;">公司环境</font>
								<input type="hidden" id="photoIds" name="photoIds"/>
							</td>
							<td id="environment"/>
						</tr>
						<tr height="10px"/>
					</table>
					<table width="100%" id="fuliphoto">
						<tr>
							<td>
								<table>
									<tr id="firmHuanjing">
										<td id="jiatd">
											<img src="../img/add.png" style="width:2px;height:2px;" onclick="addHuanjing()" id="addpng"/>
										</td>
									</tr>
									<tr id="firmHuanjing2">
									</tr>
									<tr id="firmHuanjing3">
									</tr>
								</table>
							</td>
							<!-- <td id="jia">
								<img src="../img/add.png" style="width:200px;height:200px;" onclick="addHuanjing()"/>
								<div style="width:200px;height:200px;background-size:200px 200px;background:url(../img/add.png);" onclick="addHuanjing()">
				     			</div>
				     		</td> -->
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
						你好，以下公司招聘团队可能符合你
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

