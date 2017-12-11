<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<link rel="stylesheet" href="<%=baseCss %>common/photoUpload.css?randomId=<%=Math.random()%>" type="text/css"/>
<script src="<%=baseJs %>common/photoUpload.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
</head>
<body onload="init()">
	<form id="dataForm">
		<center>
			<input type="file" id="uploadFile" name="uploadFile" class="hidden" onchange="review('uploadFile','photo')"/>
			<img id="photo" class="photoImg" onclick="changeImg()"/>
		</center>
	</form>
	<div class="formBtnGroup">
		<button type="button" class="btn btn-primary openWindowBtn" onclick="changeImg()">
			更换头像
		</button>
		<button type="button" class="btn btn-primary openWindowBtn" onclick="goSubmit()">
			保存
		</button>
		<button type="button" class="btn btn-primary openWindowBtn" onclick="closeWin('photoUpload')">
			取消
		</button>
	</div>
</body>
</html>
