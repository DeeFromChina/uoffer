<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../autocss/login/loginHead.css" type="text/css"/>
<link rel="stylesheet" href="../../autocss/login/loginHead580.css" type="text/css"/>
<style>
</style>
</head>
<script src="../../autojs/login/loginHead.js?randomId=<%=Math.random()%>"></script>
<body onload="init()">
	<div class="headTitle" id="headTitle">
		<div class="logoDiv">
			<a href="#" class="centerDiv" align="right" onclick="alert('1')">
				<img src="../../img/U-Offerlogo.png" class="loginImg">
			</a>
		</div>
		<div class="headCenterDiv">
			<center class="hi100">
				<div class="btn-group hi99">
					<button type="button" class="dropdown-toggle headButton" data-toggle="dropdown" aria-expanded="false">
						看机会
				        <span class="caret"></span>
				    </button>
				    <ul class="dropdown-menu pull-right headMeumBtn">
				        <li>
				            <a onclick="to('1')" class="headMeum">
				            	<font>使用攻略</font>
				            </a>
				        </li>
				        <li>
				            <a onclick="to('2')" class="headMeum">
				            	<font>常见问题</font>
				            </a>
				        </li>
				    </ul>
				</div>
				<div class="btn-group hi99">
					<button type="button" class="headButton" data-toggle="dropdown">
						招人才
				        <span class="caret"></span>
				    </button>
				    <ul class="dropdown-menu pull-right headMeumBtn">
				        <li>
				            <a onclick="to('3')" class="headMeum">
				            	<font>使用攻略</font>
				            </a>
				        </li>
				        <li>
				            <a onclick="to('4')" class="headMeum">
				            	<font>常见问题</font>
				            </a>
				        </li>
				    </ul>
			    </div>
				<button type="button" class="headButton" onclick="to('5')">
					联系助理
			    </button>
		    </center>
		</div>
		<div class="headRightDiv" id="headRightDiv">
			<div class="centerDiv">
				<button type="button" class="loginBtn" onclick="to('6')">
					登录
			    </button>
			    <button type="button" class="registerBtn" onclick="to('7')">
			    	注册
			    </button>
		    </div>
		    <div class="hidden centerDiv">
		    	<a class="headRightLoginBtn">
		    	</a>
		    </div>
		</div>
	</div>
</body>
</html>
