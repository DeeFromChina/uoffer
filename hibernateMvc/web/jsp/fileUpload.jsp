<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
function test(){
	//var url = "user/filefilefile.do";
	//var files = ['file1','file2','file3'];
	//var formId = "loginForm";
	//fileUpload(url,files);
	/* function fileUpload(link, files) {  
		var link = "/hibernateMvc/" + urllink;
	    //var files = ['file1','file2','file3'];  //将上传三个文件 ID 分别为file2,file2,file3  
	    $.ajaxFileUpload( {  
	        url : link,     //用于文件上传的服务器端请求地址    
	        secureuri : false,            //一般设置为false    
	        fileElementId : files,        //文件上传的id属性  <input type="file" id="file" name="file" />    
	        dataType : 'json',            //返回值类型 一般设置为json    
	        success : function(data, status) {  
	        	/*var fileNames = data.fileFileName; //返回的文件名   
	            var filePaths = data.filePath;     //返回的文件地址   
	            for(var i=0;i<data.fileFileName.length;i++){  
	                //将上传后的文件 添加到页面中 以进行下载  
	                $("#down").after("<tr><td height='25'>"+fileNames[i]+  
	                        "</td><td><a href='downloadFile?downloadFilePath="+filePaths[i]+"'>下载</a></td></tr>")  
	            }*/  
	        /*}  
	    })  
	} */
	var content = document.getElementById("textTest").value;
	var userAgent = navigator.userAgent;
	var isOpera = userAgent.indexOf("Opera") > -1;
	var browser;
	if(isOpera){
		browser="Opera";
	}
	if(userAgent.indexOf("Firefox") > -1){
		browser="FF";
	}
	if(userAgent.indexOf("Chrome") > -1){
		browser="Chrome";
	}
	if(userAgent.indexOf("Safari") > -1){
		browser="Safari";
	}
	if(userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera){
		browser="IE";
	}
	if(browser == 'FF'){
		//火狐
		content = content.replace("/(\r)*\n/g","<br/>");
		content = content.replace("/\s/g","&nbsp;");
	}else{
		content = content.replace("\n","<br/>");
		content = content.replace(" ","&nbsp;");
	}
	alert(content);
	var url = "test/testString.do";
	var formId = "caozuoForm";
	var data = ajaxSumbitNoform(url, content);
}
</script>
<body bgcolor="#F4F9F9">
	<form id="loginForm" enctype="multipart/form-data">
		<input type="file" id="file1" name="file"/>
		<input type="file" id="file2" name="filea"/>
		<input type="file" id="file3" name="file"/>
		<input type="file" id="file4" name="file"/>
		<input type="hidden" name="asd" value="123"/>
		<input type="button" onclick="test()" value="1111111"/>
		<textarea id="textTest"></textarea>
	</form>
</body>
</html>
