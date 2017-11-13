<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userData/resume_add_questionnaire.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs %>userData/resume_add_questionnaire.js?randomId=<%=Math.random()%>"></script>
<body onload="init()">
<form id="dataForm">
	<center>
		<table class="mainDiv_table bgColorFFFFFF">
			<col class="wi15"/>
			<col class="wi35"/>
			<col class="wi35"/>
			<col class="wi15"/>
			<tr>
				<td colspan="4" class="textC font-18 Parting-line">
					最后一步，谈谈您对新工作的要求吧！
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">您目前的求职状态是？<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<input type="hidden" id="jobstatus" name="jobstatus"/>
					<table class="chk_table">
						<tr>
							<td>
								<div class="circleChkB hand floatL" id="j1"></div>
								<font class="paddingLeft14 font-14">不着急找工作，先看看机会</font>
							</td>
						</tr>
						<tr>
							<td>
								<div class="circleChkB hand floatL" id="j2"></div>
								<font class="paddingLeft14 font-14">已经有offer了，想看更好的</font>
							</td>
						</tr>
						<tr>
							<td>
								<div class="circleChkB hand floatL" id="j3"></div>
								<font class="paddingLeft14 font-14">正在找工作，还没有offer</font>
							</td>
						</tr>
						<tr>
							<td>
								<div class="circleChkB hand floatL" id="j4"></div>
								<font class="paddingLeft14 font-14">暂时不考虑换工作</font>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">如果找到合适的工作，您预计多久可以入职？<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="2">
					<input type="hidden" id="intime" name="intime"/>
					<table class="chk_table">
						<tr>
							<td class="wi50">
								<div class="circleChkB hand floatL"></div>
								<font class="paddingLeft14 font-14">目前是离职状态，随时可以入职</font>
							</td>
							<td class="wi50">
								<div class="circleChkB hand floatL"></div>
								<font class="paddingLeft14 font-14">一周</font>
							</td>
						</tr>
						<tr>
							<td>
								<div class="circleChkB hand floatL"></div>
								<font class="paddingLeft14 font-14">一个月</font>
							</td>
							<td>
								<div class="circleChkB hand floatL"></div>
								<font class="paddingLeft14 font-14">不确定</font>
							</td>
						</tr>
					</table>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">您目前的税前收入是？<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<table class="wi100">
						<tr>
							<td class="w200">
								<div class="input-group selectInput" id="currency1"></div>
							</td>
							<td class="w140">
								<input type="text" name="monthmoney" id="monthmoney" onchange="moneysum()" class="form-control">
							</td>
							<td class="w30 textC">
								<font class="font-14">每月</font>
							</td>
							<td class="w30 textC">
								<font class="font-14">X</font>
							</td>
							<td class="w140">
								<input type="text" name="monthmoney" id="monthmoney" onchange="moneysum()" class="form-control">
							</td>
							<td class="w30 textC">
								<font class="font-14">月</font>
							</td>
							<td id="summoney" width="90px">= 0 万/年</td>
							<td/>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">您对下一份工作的最低税前年薪要求是？<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<table class="wi100">
						<tr>
							<td class="w200">
								<div class="input-group selectInput" id="currency1"></div>
							</td>
							<td class="w140">
								<input type="text" name="monthmoney" id="monthmoney" onchange="moneysum()" class="form-control">
							</td>
							<td class="w30 textC">
								<font class="font-14">每月</font>
							</td>
							<td class="w30 textC">
								<font class="font-14">X</font>
							</td>
							<td class="w140">
								<input type="text" name="monthmoney" id="monthmoney" onchange="moneysum()" class="form-control">
							</td>
							<td class="w30 textC">
								<font class="font-14">月</font>
							</td>
							<td id="summoney" width="90px">= 0 万/年</td>
							<td/>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">您对下一份工作的要求是？</font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<textarea class="form-control wi80" rows="8"></textarea>
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">请验证您的手机号码？</font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<div class="input-group border-collapse wi100">
						<input type="text" id="msgCode" name="msgCode" class="form-control w280" placeholder="请输入您的手机号">
						<button type="button" class="btn btn-default rightBtn"  onclick="Reciprocal()" id="msgtime">获取验证码</button>
					</div>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="text" name="monthmoney" id="monthmoney" onchange="moneysum()" class="form-control w280" placeholder="请输入验证码">
				</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="textC">
					<button type="button" class="btn btn-primary submitBtn" onclick="goBack()">
						上一步
					</button>
				</td>
				<td class="textC">
					<button type="button" class="btn btn-primary submitBtn" onclick="goSubmit()">
						提交资料
					</button>
				</td>
				<td></td>
			</tr>
		</table>
	</center>
</form>
</body>
</html>
