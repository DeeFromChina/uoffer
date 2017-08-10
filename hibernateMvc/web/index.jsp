<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<script src="<%=basePath%>/js/jquery.js" type="text/javascript"></script>
<script language="javascript">
	$.fn.serializeObject = function() {
		var o = {};
		var a = this.serializeArray();
		$.each(a, function() {
			if (o[this.name]) {
				if (!o[this.name].push) {
					o[this.name] = [ o[this.name] ];
				}
				o[this.name].push(this.value || '');
			} else {
				o[this.name] = this.value || '';
			}
		});
		return o;
	}
	function upload() {
		$.ajax({
			url : "register/firm.do", // 自行按需配置好完整的url，包括ip和端口号  
			type : "POST",
			datatype : "text",
			data : JSON.stringify($("#form1").serializeObject()),
			contentType : "application/json",
		});
	}
	function init(){
		var url = location.search;
		if (url.indexOf("?") != -1) {
			if(url.length == 6 && url.indexOf("admin") != -1){
				document.location = "jsp/stafflogin.jsp";
			}
		}else{
			var timestamp = Date.parse(new Date()); 
			document.location = "autojsp/common/leftMeum.jsp?a="+timestamp;
		}
	}
</script>
<body onload="init()">
	<!-- <a href="add.jsp">新增数据</a>
	<a href="test/getAll.do">查看全部数据</a>
	<a href="test/pdf.do?my">查看全部数据</a>
	<a
		href="test/getByName.do?firmName=广州公司&userName=莫景华&nowJob=1&email=945319791@qq.com&phone=12345&password=1234567">注册</a>
	<form name="form1" id="form1">
		<input type="text" name="offerUserName" /> <input type="button"
			onclick="upload()" />
	</form> -->
	
</body>
</html>
