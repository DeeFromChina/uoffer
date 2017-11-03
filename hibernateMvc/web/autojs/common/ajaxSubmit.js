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

function ajaxSumbit(urllink, formId) {
	var link = "/hibernateMvc/" + urllink;
	var formIndex = "";
	if(formId != undefined){
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
        	console.log(result);
        	if(result == undefined){
        		alert("数据错误！");
        	}
        	if(result == 'unlogin'){
        		alert("请重新登陆！");
        		top.location.href = "../index.jsp";
        	}
        	if(result.msg != undefined){
        		alert(result.msg);
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
//        	if(result.status == '4'){
//        		if(result.data[2].toString != ''){
//        			alert(result.data[2]);
//        		}
//        		map["subPage"] = result.data[1];
//        		map["param"] = result.data[3];
//        		top.location.href = jspPath+result.data[0];
//        	}
        	dataResult = result.data;
        }
	});
	return dataResult;
}