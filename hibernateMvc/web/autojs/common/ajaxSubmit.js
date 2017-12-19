$.fn.serializeObject = function() {
	var data = {};
	var a = this.serializeArray();
	$.each(a, function() {
		if (data[this.name]) {
			if (!data[this.name].push) {
				data[this.name] = [ data[this.name] ];
			}
			data[this.name].push(this.value || '');
		} else {
			data[this.name] = this.value || '';
		}
	});
	dataForm = data;
	return data;
}

$.fn.populateForm = function(data){
    return this.each(function(){
        var formElem, name;
        if(data == null){this.reset(); return; }
        for(var i = 0; i < this.length; i++){  
            formElem = this.elements[i];
            //checkbox的name可能是name[]数组形式
            name = (formElem.type == "checkbox")? formElem.name.replace(/(.+)\[\]$/, "$1") : formElem.name;
            if(data[name] == undefined) continue;
            switch(formElem.type){
                case "checkbox":
                    if(data[name] == ""){
                        formElem.checked = false;
                    }else{
                        //数组查找元素
                        if(data[name].indexOf(formElem.value) > -1){
                            formElem.checked = true;
                        }else{
                            formElem.checked = false;
                        }
                    }
                break;
                case "radio":
                    if(data[name] == ""){
                        formElem.checked = false;
                    }else if(formElem.value == data[name]){
                        formElem.checked = true;
                    }
                break;
                case "button": break;
                default: formElem.value = data[name];
            }
        }
    });
};

function ajaxSumbit(urllink, formId, index) {
	var link = projectName + urllink;
	var formIndex = "";
	if(formId != undefined && formId != ""){
		formIndex = "#" + formId;
	}
	var dataResult;
	$.ajax({
		url : link, // 自行按需配置好完整的url，包括ip和端口号
		type : "POST",
		datatype : "text",
		data : JSON.stringify($(formIndex).serializeObject()),
		contentType : "application/json",
		async:false,
		error: function(request) {
            alert("Connection error");
        },
        success: function(result) {
        	console.log(link);
        	console.log(result);
        	returnSuccess(link,formId,index,result);
        }
	});
}
function fileUpload(urllink, files, index) {  
	var link = projectName + urllink;
	var dataResult;
    $.ajaxFileUpload( {  
        url : link,     //用于文件上传的服务器端请求地址    
        secureuri : false,            //一般设置为false    
        fileElementId : files,        //文件上传的id属性  <input type="file" id="file" name="file" />
        dataType : 'json',            //返回值类型 一般设置为json    
        type : 'POST',
        error: function(result) {
            alert("Connection error");
        },
        success : function(result) {
        	console.log(link);
        	console.log(result);
        	returnSuccess(link,formId,index,result);
        }  
    });
}
function returnSuccess(link,formId,index,result){
	if(result == undefined){
		alert("数据错误！");
	}
	if(result == 'unlogin'){
		alert("请重新登陆！");
		top.location.href = rootPath+"index.jsp";
	}
	if(result.msg != undefined){
		alert(result.msg);
		dataResult = undefined;
		return;
	}
	if(result.status == '1'){
		alert("数据错误！");
	}
	if(result.status == '2'){
		if(result.data[2].toString() != ''){
			alert(result.data[2]);
		}
		map["param"] = result.data[1];
		parent.$('#mainFrame').attr("src",jspPath+result.data[0]);
	}
	if(result.status == '3'){
		if(result.data[2].toString() != ''){
			alert(result.data[2]);
		}
		map["param"] = result.data[1];
		top.location.href = jspPath+result.data[0];
	}
	dataResult = result.data;
	if(dataResult == 'normal'){
		dataResult = undefined;
		return;
	}
	if(index != undefined){
		goSuccess(dataResult, index);
	}
}