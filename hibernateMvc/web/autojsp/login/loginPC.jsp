<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../autocss/login/loginPC.css" type="text/css"/>
<style>
</style>
</head>
<script src="../../autojs/login/loginPC.js"></script>
<body bgcolor="#E0FFFF" onload="init()">
	<form id="dataForm">
		<center>
			<div class="mainDiv">
				<table class="login-top">
					<col class="wi25"/>
					<col class="wi25"/>
					<col class="wi25"/>
					<col class="wi25"/>
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
								<button id="button1" type="button" class="btn btn-default w140"
									onclick="getTran('1')"><font>我是候选人</font></button>
								<button id="button2" type="button" class="btn btn-default w140"
									onclick="getTran('2')"><font>我是HR/BOSS</font></button>
							</div>
						</td>
						<td />
					</tr>
					<tr class="P-line">
						<td />
						<td class="textC" style="padding-left:60px;">
								<div id="transparent1" style="margin:auto;"></div>
							</td>
						<td class="textC" style="padding-right:60px;">
								<div id="transparent2" style="margin:auto;"></div>
							</td>
						<td />
					</tr>
				</table>
			</div>
			<div class="mainDiv">
				<table class="login-top">
					<col class="wi28"/>
					<col class="wi25"/>
					<col class="wi25"/>
					<col class="wi22"/>
					<tr>
						<td class="textR">
							<font class="font-14">邮箱/手机号码：</font>
						</td>
						<td colspan="3">
							<input type="text" id="name" name="name" class="form-control input-class">
						</td>
					</tr>
					<tr>
						<td class="textR">
							<font class="font-14">密码：</font>
						</td>
						<td colspan="3">
							<input type="password" id="password" name="password" class="form-control input-class">
						</td>
					</tr>
					<tr>
						<td class="textR">
							<font class="font-14">图形验证码：</font>
						</td>
						<td colspan="3">
							<table class="input-class">
								<tr>
									<td class="vCode-input">
										<input type="text" id="inputCode" class="form-control">
									</td>
									<td>
										<div id="vCode" class="vCode"></div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
						<td class="textL">
							<input type="hidden" id="remeberId" value="1" />
							<!-- <img id="remeber" src="../img/gou.png" class="remeberImg" onclick="changeRemeber()" /> -->
							<font class="font-14 color9A9A9A">记住密码</font>
						</td>
						<td class="textR paddingRight19">
							<a onclick="javascipt:top.location.href='check_email1.jsp'" class="font-14 color00B38A hand">
								忘记密码？
							</a>
						</td>
						<td/>
					</tr>
					<tr>
						<td/>
						<td colspan="3">
							<button type="button" class="btn btn-primary submitBtn" onclick="openWindow('login/use_strategy.jsp','test',600,800)" data-toggle="button">
								确认提交
							</button>
						</td>
					</tr>
				</table>
			</div>
		</center>
	</form>
</body>
</html>
