<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../autocss/login/login.css" type="text/css"/>
</head>
<script src="../../js/jq_cookie/jquery.cookie.js"></script>
<script src="../../autojs/login/login.js"></script>
<body bgcolor="#F5F8F9" onload="init()">
	<div class="headTitle">
		<div class="logoDiv">
			<a href="#" class="logoA" onclick="javascript:top.location.href='homepage.jsp'">
				<img src="../../img/U-Offerlogo.png" class="loginImg">
			</a>
		</div>
		<div class="headCenterDiv">
			<div class="btn-group hi99">
				<button type="button" class="headButton" id="dropdownMenu1" data-toggle="dropdown">
					看机会
			        <span class="caret"></span>
			    </button>
			    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu1" style="background-color:#32373C;width:150px;">
			        <li role="presentation">
			            <a tabindex="-1" href="#" onclick="javascript:top.location.href='use_strategy.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">使用攻略</font></a>
			        </li>
			        <li role="presentation" style="height:46px;">
			            <a tabindex="-1" href="user_question.jsp" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">常见问题</font></a>
			        </li>
			    </ul>
			</div>
			<div class="btn-group hi99">
				<button type="button" class="headButton" id="dropdownMenu2" data-toggle="dropdown">
					招人才
			        <span class="caret"></span>
			    </button>
			    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="background-color:#32373C;width:150px;">
			        <li role="presentation">
			            <a tabindex="-1" href="#" onclick="javascript:top.location.href='firm_strategy.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">使用攻略</font></a>
			        </li>
			        <li role="presentation" style="height:46px;">
			            <a tabindex="-1" href="mainfirm_question.jsp" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">常见问题</font></a>
			        </li>
			    </ul>
		    </div>
			<button type="button" class="headButton" onclick="javascript:top.location.href='maincontact_assistant.jsp'">
				联系助理
		    </button>
		</div>
		<div>
			<button type="button" class="headButton" onclick="booleanInfot('personal_settings.jsp')">
				登录
		    </button>
		    <button type="button" class="headButton" onclick="jumpPage('login.jsp')">
		    	注册
		    </button>
		</div>
	</div>
	<div style="width:100%;height:167px;"></div>
	<form id="loginForm"></form>
</body>
</html>
