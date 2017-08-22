<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/autocss/login/loginPC.css" type="text/css"/>
<style>
</style>
</head>
<script src="<%=request.getContextPath() %>/autojs/login/loginPC.js"></script>
<body bgcolor="#F5F8F9" onload="init()">
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
						<font class="font-24 color4F4F4F">注 册</font>
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
				<col class="wi28"/>
				<col class="wi25"/>
				<col class="wi25"/>
				<col class="wi22"/>
				<tr>
					<td class="textR">
						<font class="font-14">邮箱：</font>
					</td>
					<td colspan="3">
						<input type="text" name="email" class="form-control input-class" id="email" placeholder="请输入邮箱">
					</td>
				</tr>
				<tr>
					<td class="textR">
						<font class="font-14">求职方向：</font>
					</td>
					<td style="padding-top:6px;">
						<div class="input-group selectInput" id="jobType">
						</div>
					</td>
				</tr>
				<tr>
					<td class="textR">
						<font class="font-14">所在城市：</font>
					</td>
					<td>
						<div class="input-group selectInput" id="userCity">
						</div>
					</td>
				</tr>
				<tr>
					<td class="textR">
						<font class="font-14">密码：</font>
					</td>
					<td style="padding-top:2px">
						<input type="password" name="offer_user_password" id="offer_user_password" class="form-control" style="width: 381px;">
					</td>
				</tr>
				<tr>
					<td class="textR">
						<font class="font-14">确认密码：</font>
					</td>
					<td>
						<input type="password" name="offer_user_password_c" id="offer_user_password_c" class="form-control" style="width: 381px;">
					</td>
				</tr>
			</table>
			<table class="login-top">
				<col class="wi28"/>
				<col class="wi25"/>
				<col class="wi25"/>
				<col class="wi22"/>
				<tr>
					<td class="textR">
						<font class="font-14">公司：</font>
					</td>
					<td>
						<input type="text" name="offer_user_company" id="offer_user_company" class="form-control" style="width: 381px;" placeholder="公司名称(全称)">
					</td>
				</tr>
				<tr>
					<td class="textR">
						<font class="font-14">姓名：</font>
					</td>
					<td>
						<input type="text" name="offer_user_name" id="offer_user_name" class="form-control" style="width: 381px;" placeholder="真实姓名或昵称">
					</td>
				</tr>
				<tr>
					<td class="textR">
						<font class="font-14">目前职位：</font>
					</td>
					<td>
						<div class="input-group selectInput" id="userJob">
						</div>
					</td>
				</tr>
				<tr>
					<td class="textR" width="25%">
						<font class="font-14">邮箱：</font>
					</td>
					<td>
						<input type="text" name="offer_user_email" id="offer_user_email" class="form-control" style="width: 381px;" placeholder="填写企业邮箱（不支持个人邮箱）">
					</td>
				</tr>
				<tr/>
				<tr>
					<td class="textR" width="25%">
						<font class="font-14">手机：</font>
					</td>
					<td>
						<input type="text" name="offer_user_phone" id="offer_user_phone" class="form-control" style="width: 381px;" placeholder="支持中国大陆手机号">
					</td>
				</tr>
				<tr>
					<td class="textR" width="25%">
						<font class="font-14">验证码：</font>
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
					<td class="textR">
						<font class="font-14">密码：</font>
					</td>
					<td>
						<input type="password" name="password" id="password" class="form-control" style="width: 381px;">
					</td>
				</tr>
				<tr/>
				<tr>
					<td class="textR" width="25%">
						<font class="font-14">确认密码：</font>
					</td>
					<td>
						<input type="password" name="password_c" id="password_c" class="form-control" style="width: 381px;">
					</td>
				</tr>
			</table>
			<table class="login-top">
				<tr>
					<td class="textR" width="25%">
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
			</table>
			<center>
				<table width="280px">
					<tr>
						<td class="textL">
							<input type="hidden" id="remeberId" value="1" />
							<img id="remeber" src="../img/gou.png" width="16px" height="16px" onclick="changeRemeber()" />
							<font style="font-size:13px;" color="#9A9A9A">我已阅读并同意</font>
							<a href="#">
								<font style="font-size:13px;" color="#00B38A">《U-Offer企业注册协议》</font>
							</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="button" class="btn btn-primary submitBtn" onclick="openWindow('login/use_strategy.jsp','test',600,800)" data-toggle="button">
								确认提交
							</button>
						</td>
					</tr>
				</table>
			</center>
		</div>
	</center>
	</form>
</body>
</html>