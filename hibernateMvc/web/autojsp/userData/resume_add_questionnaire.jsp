<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userData/resume_add_information.css" type="text/css"/>
</head>
<script src="<%=baseJs %>userData/resume_add_questionnaire.js"></script>
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
					<table style="border-collapse:separate; border-spacing:0px 10px;">
						<tr>
							<td style="padding-bottom:44px;width:28px;"><div class="circleB" id="j1" onclick="selected(this)" style="cursor:pointer;"></div></td>
							<td style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">不着急找工作，先看看机会</font></td>
						</tr>
						<tr>
							<td style="padding-bottom:44px;width:28px;"><div class="circleB" id="j2" onclick="selected(this)" style="cursor:pointer;"></div></td>
							<td style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;已经有offer了，想看更好的</font></td>
						</tr>
						<tr>
							<td style="padding-bottom:44px;width:28px;"><div class="circleB" id="j3" onclick="selected(this)" style="cursor:pointer;"></div></td>
							<td style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;正在找工作，还没有offer</font></td>
						</tr>
						<tr>
							<td style="padding-bottom:44px;width:28px;"><div class="circleB" id="j4" onclick="selected(this)" style="cursor:pointer;"></div></td>
							<td style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;暂时不考虑换工作</font></td>
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
					<table width="100%">
						<tr height="20px">
							<td class="textR" style="padding-bottom:44px;width:28px;"><div class="circleB" id="i1" onclick="selected(this)" style="cursor:pointer;"></div></td>
							<td class="textL" style="padding-bottom:44px;width:263px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;目前是离职状态，随时可以入职</font></td>
							<td class="textR" style="padding-bottom:44px;width:28px;"><div class="circleB" id="i2" onclick="selected(this)" style="cursor:pointer;"></div></td>
							<td class="textL" style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;一周</font></td>
							<td/>
						</tr>
						<tr height="20px">
							<td class="textR" style="padding-bottom:44px;width:28px;"><div class="circleB" id="i3" onclick="selected(this)" style="cursor:pointer;"></div></td>
							<td class="textL" style="padding-bottom:44px;width:263px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;一个月</font></td>
							<td class="textR" style="padding-bottom:44px;width:28px;"><div class="circleB" id="i4" onclick="selected(this)" style="cursor:pointer;"></div></td>
							<td class="textL" style="padding-bottom:44px;"><font color="#4F4F4F" style="font-size:14px;">&nbsp;不确定</font></td>
							<td/>
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
					<table width="100%">
						<tr>
							<td style="width: 160px !important">
								<div class="input-group" >
									<div class="dropdown" style="">
										<input type="text" id="nowmoneytype" name="nowmoneytype" readOnly="readOnly" class="form-control" style="width: 80px !important">
									    <button type="button" style="width:41px;height:41px;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 160px !important" id="money1">
									        
									    </ul>
									</div>
								</div>
							</td>
							<td width="171px">
								<div class="input-group">
									<input type="text" name="monthmoney" id="monthmoney" onchange="moneysum()" class="form-control" style="width: 141px !important"><span style="width:30px;border:none;background:#FFF;font-size:14px;color:#4F4F4F;" class="input-group-addon">每月</span>
								</div>
							</td>
							<td class="textC" width="30px"><font style="font-size:14px;" color="#4F4F4F">X</font></td>
							<td width="185px">
								<div class="input-group">
									<input type="hidden" id="offerUserNowYearWages" name="offerUserNowYearWages">
									<input type="text" name="month" id="month" onchange="moneysum()" class="form-control" style="width: 141px !important"><span style="width:41px;border:none;background:#FFF;font-size:14px;" class="input-group-addon">月</span>
								</div>
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
					<table>
						<tr>
							<td width="160px">
								<div class="input-group">
									<div class="dropdown">
										<input type="text" readOnly="readOnly" id="planmoneytype" name="planmoneytype" class="form-control" style="width: 80px !important">
									    <button type="button" style="width:41px;height:41px;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
									        <span class="caret"></span>
									    </button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 20px !important" id="money2">
									    </ul>
									</div>
								</div>
							</td>
							<td>
								<div class="input-group">
									<input type="text" id="planmoney" name="planmoney" class="form-control" style="width: 141px !important"><span style="width:41px;border:none;background:#FFF;font-size:14px;color:#4F4F4F;" class="input-group-addon">万/年</span>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr hide="title1">
				<td></td>
				<th colspan="3">
					<font class="font-14">您对下一份工作的要求是？</font>
				</th>
			</tr>
			<tr hide="title1">
				<td></td>
				<th colspan="3">
					<textarea rows="8" name="offerRequestNextJob" id="offerRequestNextJob" style="width:789px;height:201px;color:#4F4F4F;"></textarea>
				</th>
			</tr>
			<tr hide="title2">
				<td></td>
				<th colspan="3">
					<font class="font-14">请验证您的手机号码？</font>
				</th>
			</tr>
			<tr hide="title2">
				<td></td>
				<th colspan="3">
					<div class="col-lg-6" style="width: 100%;">
						<div class="input-group" style="margin-left: -22px !important;">
							<input type="text" id="phone" name="phone" class="form-control" style="width: 350px !important" placeholder="请输入您的手机号">
							<button type="button" style="width:91px;background:#00B38A;color:#FFF;" class="btn btn-default" onclick="getmsg()" id="msgtime">获取验证码</button>
						</div>
					</div>
				</th>
			</tr>
			<tr>
				<td class="textL" colspan="2">
					<div class="col-lg-6" style="width: 100%;">
						<div class="input-group" style="margin-left: -22px !important;">
							<input type="text" id="msgCode" name="inputCode" class="form-control" style="width: 350px !important" placeholder="请输入验证码">
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td></td>
				<td class="textC">
					<button type="button" class="btn btn-primary submitBtn" onclick="goSubmit()">
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
