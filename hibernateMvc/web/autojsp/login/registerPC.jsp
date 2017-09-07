<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/autocss/login/loginPC.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/autocss/login/register.css" type="text/css"/>
<style>
</style>
</head>
<script src="<%=request.getContextPath() %>/autojs/login/register.js"></script>
<body bgcolor="#E0FFFF" onload="init()">
	<div id="dataForm">
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
				<form id="form1">
					<table class="login-top">
						<col class="wi28"/>
						<col class="wi25"/>
						<col class="wi25"/>
						<col class="wi22"/>
						<tr>
							<td class="textR">
								<font class="font-14">邮箱：</font>
							</td>
							<td colspan="2">
								<input type="text" name="email" class="form-control input-class" placeholder="请输入邮箱">
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">求职方向：</font>
							</td>
							<td colspan="2">
								<div class="input-group input-class border-collapse">
									<input type="hidden" id="goJobId" name="goJobId" />
									<input type="text" id="goJobName" name="goJobName" class="form-control" readOnly="readOnly"/>
									<span class="input-group-addon hand">
										<span class="glyphicon glyphicon-th" onclick="selectJob()"></span>
									</span>
								</div>
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">所在城市：</font>
							</td>
							<td colspan="2">
								<div class="input-group input-class border-collapse">
									<input type="hidden" id="cityId" name="cityId" />
									<input type="text" id="cityName" name="cityName" class="form-control" readOnly="readOnly">
									<span class="input-group-addon hand">
										<span class="glyphicon glyphicon-th" onclick="selectCity()"></span>
									</span>
								</div>
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">密码：</font>
							</td>
							<td colspan="2">
								<input type="password" name="password" class="form-control input-class">
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">确认密码：</font>
							</td>
							<td colspan="2">
								<input type="password" name="password_c" class="form-control input-class">
							</td>
							<td></td>
						</tr>
					</table>
				</form>
				<form id="form2">
					<table class="login-top">
						<col class="wi28"/>
						<col class="wi25"/>
						<col class="wi25"/>
						<col class="wi22"/>
						<tr>
							<td class="textR">
								<font class="font-14">公司：</font>
							</td>
							<td colspan="2">
								<input type="text" name="companyName" class="form-control input-class" placeholder="公司名称(全称)">
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">姓名：</font>
							</td>
							<td colspan="2">
								<input type="text" name="userName" class="form-control input-class" placeholder="真实姓名或昵称">
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">目前职位：</font>
							</td>
							<td colspan="2">
								<div class="input-group input-class border-collapse">
									<input type="hidden" id="jobId" name="jobId" />
									<input type="text" id="jobName" name="jobName" class="form-control" readOnly="readOnly"/>
									<span class="input-group-addon hand">
										<span class="glyphicon glyphicon-th" onclick=""></span>
									</span>
								</div>
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">邮箱：</font>
							</td>
							<td colspan="2">
								<input type="text" name="email" class="form-control input-class" placeholder="填写企业邮箱（不支持个人邮箱）">
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">手机：</font>
							</td>
							<td colspan="2">
								<input type="text" name="phone" class="form-control input-class" placeholder="支持中国大陆手机号">
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">验证码：</font>
							</td>
							<td colspan="2">
								<div class="input-group border-collapse wi100">
									<input type="text" id="msgCode" name="msgCode" class="form-control w280">
									<button type="button" class="btn btn-default rightBtn"  onclick="Reciprocal()" id="msgtime">获取</button>
								</div>
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">密码：</font>
							</td>
							<td colspan="2">
								<input type="password" name="password" class="form-control input-class">
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="textR">
								<font class="font-14">确认密码：</font>
							</td>
							<td colspan="2">
								<input type="password" name="password_c" class="form-control input-class">
							</td>
							<td></td>
						</tr>
					</table>
				</form>
				<table class="login-top maringTop_12">
					<col class="wi28"/>
					<col class="wi25"/>
					<col class="wi25"/>
					<col class="wi22"/>
					<tr>
						<td class="textR">
							<font class="font-14">图形验证码：</font>
						</td>
						<td colspan="2">
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
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2" class="textC">
							<input type="hidden" id="remeberId" value="1" />
							<img id="remeber" class="remeberImg" onclick="changeRemeber()" />
							<font class="font-14 color9A9A9A">我已阅读并同意</font>
							<a href="#">
								<font class="font-14 color00B38A">《U-Offer企业注册协议》</font>
							</a>
						</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2">
							<button type="button" class="btn btn-primary submitBtn" onclick="goSubmit()">
								确认提交
							</button>
						</td>
						<td></td>
					</tr>
				</table>
			</div>
		</center>
	</div>
</body>
</html>