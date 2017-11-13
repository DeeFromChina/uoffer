<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>login/loginPhone.css?randomId=<%=Math.random()%>" type="text/css"/>
<style>
</style>
</head>
<script src="<%=baseJs2 %>jq_cookie/jquery.cookie.js?randomId=<%=Math.random()%>"></script>
<script src="<%=baseJs %>login/loginPC.js?randomId=<%=Math.random()%>"></script>
<body bgcolor="#E0FFFF" onload="init()">
	<form id="dataForm">
		<center>
			<div class="mainDiv">
				<table class="login-top">
					<col class="wi15"/>
					<col class="wi35"/>
					<col class="wi35"/>
					<col class="wi15"/>
					<tr>
						<td />
						<td colspan="2" class="textC">
							<font class="font-24 color4F4F4F">登 录</font>
						</td>
						<td />
					</tr>
					<tr>
						<td />
						<td colspan="2" class="textC">
							<input type="hidden" name="type" id="type"/>
							<div class="btn-group btn-group-lg">
								<button id="button1" type="button" class="btn btn-default tranClass"
									onclick="getTran('1')"><font>我是候选人</font></button>
								<button id="button2" type="button" class="btn btn-default tranClass"
									onclick="getTran('2')"><font>我是HR/BOSS</font></button>
							</div>
						</td>
						<td />
					</tr>
					<tr class="P-line">
						<td />
						<td>
							<div class="w140 floatR">
								<div id="transparent1" class="marginAuto"></div>
							</div>
						</td>
						<td>
							<div class="w140">
								<div id="transparent2" class="marginAuto"></div>
							</div>
						</td>
						<td />
					</tr>
				</table>
			</div>
			<div class="mainDiv">
				<table class="login-top">
					<col class="wi10"/>
					<col class="wi40"/>
					<col class="wi40"/>
					<col class="wi10"/>
					<tr>
						<td></td>
						<td colspan="2">
							<input type="text" id="name" name="name" class="form-control input-class-phone" placeholder="邮箱/手机号码" onkeydown="enter(event)">
						</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2">
							<input type="password" id="password" name="password" class="form-control input-class-phone" placeholder="密码" onkeydown="enter(event)">
						</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2">
							<table class="input-class-phone">
								<tr>
									<td class="vCode-input">
										<input type="text" id="inputCode" class="form-control" placeholder="输入验证码" onkeydown="enter(event)">
									</td>
									<td>
										<div id="vCode" class="vCode"></div>
									</td>
								</tr>
							</table>
						</td>
						<td></td>
					</tr>
					<tr>
						<td>
						<td class="textL">
							<input type="hidden" id="remeberId" value="1" />
							<img id="remeber" src="" class="remeberImg" onclick="changeRemeber()" />
							<font class="font-14 color9A9A9A">记住密码</font>
						</td>
						<td class="textR">
							<a onclick="javascipt:top.location.href='check_email1.jsp'" class="font-14 color00B38A hand">
								忘记密码？
							</a>
						</td>
						<td/>
					</tr>
					<tr>
						<td/>
						<td colspan="2">
							<button type="button" class="btn btn-primary submitBtn" onclick="goSubmit()">
								确认提交
							</button>
						</td>
						<td/>
					</tr>
				</table>
			</div>
		</center>
	</form>
</body>
</html>
