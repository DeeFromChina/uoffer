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
	return data;
}

function ajaxSumbit(urllink, formId) {
	var link = "/hibernateMvc/" + urllink;
	var formIndex = "";
	if(formId != undefined){
		formIdex = "#" + formId;
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
        	if(result == undefined){
        		alert("数据错误！");
        	}
        	if(result == 'unlogin'){
        		alert("请重新登陆！");
        		top.location.href = "../index.jsp";
        	}
        	if(result.status == '1'){
        		alert("数据错误！");
        	}
        	dataResult = result.data;
        }
	});
	return dataResult;
}