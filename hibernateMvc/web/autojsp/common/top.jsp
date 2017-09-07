<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/autocss/login/loginHead.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/autocss/login/loginHead580.css" type="text/css"/>
<style>
</style>
</head>
<script src="<%=request.getContextPath() %>/autojs/common/top.js?randomId=<%=Math.random()%>"></script>
<body onload="init()">
	<div class="headTitle" id="headTitle">
		<div class="logoDiv">
			<a href="#" class="centerDiv" align="right" onclick="alert('1')">
				<img src="" id="loginImg" class="loginImg">
			</a>
		</div>
		<div class="headCenterDiv">
			<center class="hi100" id="centerTitle">
				<div class="btn-group hi99">
					<button type="button" class="headButton" id="title1">
					1
				    </button>
				    <ul class="dropdown-menu pull-right headMeumBtn">
				    </ul>
				</div>
				<button type="button" class="headButton" id="title2">
				2
			    </button>
				<!-- <button type="button" class="headButton hidden"  id="title3">
			    </button> -->
		    </center>
		</div>
		<div class="headRightDiv" id="headRightDiv">
			<button type="button" class="headButton floatR" id="title4">
			4
		    </button>
		</div>
	</div>
</body>
</html>
