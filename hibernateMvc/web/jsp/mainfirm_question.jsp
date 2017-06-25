<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
</style>
<script language="javascript">
	$(function () { $('#collapseOne').collapse('hide')});
	$(function () { $('#collapseTwo').collapse('hide')});
	$(function () { $('#collapseThree').collapse('hide')});
	$(function () { $('#collapseFour').collapse('hide')});
	$(function () { $('#collapseFive').collapse('hide')});
	$(function () { $('#collapseSix').collapse('hide')});
	$(function () { $('#collapseSeven').collapse('hide')});
	function test(obj){
		if(obj.style.webkitTransform == "rotate(270deg)"){
			obj.style.webkitTransform = "rotate(0deg)";
		}else if(obj.style.webkitTransform == "rotate(0deg)"){
			obj.style.webkitTransform = "rotate(270deg)";
		}
	}
</script>
<body bgcolor="#FFFFFF">
	<form id="loginForm">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:14%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td class="textC">
					<div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)">看机会
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
					<div class="btn-group">
						<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)">招人才
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="background-color:#32373C;width:150px;">
					        <li role="presentation">
					            <a tabindex="-1" href="#" onclick="javascript:top.location.href='firm_strategy.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">使用攻略</font></a>
					        </li>
					        <li role="presentation" style="height:46px;">
					            <a tabindex="-1" href="firm_question.jsp" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">常见问题</font></a>
					        </li>
					    </ul>
				    </div>
					<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;padding:0px 20px;"
					 class="btn dropdown-toggle" onmouseover="changeColor1(this)"
					 onmouseout="changeColor2(this)" onclick="javascript:top.location.href='check_email.jsp'">联系助理
				    </button>
			    </td>
			    <td style="width:24%;padding-right:13%">
				    <button type="button" class="btn btn-default" style="width:101px;color:#00B38A;background:#F5F8F9;" onclick="javascript:top.location.href='login.jsp'">登录</button>
				    <button id="regit" type="button" class="btn btn-default" style="margin-left:9px;width:101px;color:#FFFFFF;background:#00B38A;" onclick="javascript:top.location.href='register.jsp'">注册</button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:166px"></div>
	<div style="width:100%;min-width:1000px;">
		<table width="100%" style="min-width:1000px;">
			<tr>
				<td width="18%"/>
				<td><font color="#4F4F4F" style="font-size:30px;">常见问题</font></td>
				<td></td>
				<td width="29%"/>
			</tr>
			<tr height="60px"/>
			<tr>
				<td/>
				<td style="padding-left:30px;" colspan="2">
					<table width="100%">
						<tr>
							<td width="34px">
								<img src="../img/Q.png" width="24px" height="24px"/>
							</td>
							<td>
								<font color="#4F4F4F" style="font-size:16px;">1、Uoffer与别的招聘网站有何不同？</font>
							</td>
							<td style="padding-right:200px;" class="textR">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
									<img src="../img/chuxian.png" width="17px" height="17px" style="-webkit-transform:rotate(270deg)" onclick="test(this)"/>
				                </a>
							</td>
						</tr>
						<tr height="26px"/>
						<tr>
							<td/>
							<td colspan="2">
								<div id="collapseOne" class="panel-collapse collapse in" >
									<font color="#9A9A9A" style="font-size:16px;">我们主要服务最近准备看机会、有换工作打算的人才。</font>
								</div>
							</td>
						</tr>
						<tr height="26px"/>
						<tr height="2px">
							<td colspan="3" style="heihgt:2px;background:#CCCCCC;"></td>
						</tr>
					</table>
					<div style="width:100%;height:31px"></div>
					<table width="100%">
						<tr>
							<td width="34px">
								<img src="../img/Q.png" width="24px" height="24px"/>
							</td>
							<td>
								<font color="#4F4F4F" style="font-size:16px;">2、Uoffer是一个什么样招聘网站？</font>
							</td>
							<td style="padding-right:200px;" class="textR">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
									<img src="../img/chuxian.png" width="17px" height="17px" style="-webkit-transform:rotate(270deg)" onclick="test(this)"/>
								</a>
							</td>
						</tr>
						<tr height="26px"/>
						<tr>
							<td/>
							<td colspan="2">
								<div id="collapseTwo" class="panel-collapse collapse in" >
									<font color="#9A9A9A" style="font-size:16px;">
										招聘网站需要求职者按职位多次投递简历，费时费力，且隐私无法得到保障。
										在uoffer，仅需一次申请，就可以在一周内收到 5~10个面试机会。
										你可以选择自己喜欢的公司进行面试，如果你通过uoffer成功入职，还会收到分精美礼物。
									</font>
								</div>
							</td>
						</tr>
						<tr height="26px"/>
						<tr height="2px">
							<td colspan="3" style="heihgt:2px;background:#CCCCCC;"></td>
						</tr>
					</table>
					<div style="width:100%;height:31px"></div>
					<table width="100%">
						<tr>
							<td width="34px">
								<img src="../img/Q.png" width="24px" height="24px"/>
							</td>
							<td>
								<font color="#4F4F4F" style="font-size:16px;">3、Uoffer提供怎样的候选人？</font>
							</td>
							<td style="padding-right:200px;" class="textR">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
									<img src="../img/chuxian.png" width="17px" height="17px" style="-webkit-transform:rotate(270deg)" onclick="test(this)"/>
								</a>
							</td>
						</tr>
						<tr height="26px"/>
						<tr>
							<td/>
							<td colspan="2">
								<div id="collapseThree" class="panel-collapse collapse in" >
									<font color="#9A9A9A" style="font-size:16px;">
										你只需要提供一份完善的资料来展示自己的经历和成就，等待企业竞相向优秀的你发出“请帖”即可。
									</font>
								</div>
							</td>
						</tr>
						<tr height="26px"/>
						<tr height="2px">
							<td colspan="3" style="heihgt:2px;background:#CCCCCC;"></td>
						</tr>
					</table>
					<div style="width:100%;height:31px"></div>
					<table width="100%">
						<tr>
							<td width="34px">
								<img src="../img/Q.png" width="24px" height="24px"/>
							</td>
							<td>
								<font color="#4F4F4F" style="font-size:16px;">4、Uoffer如何收费</font>
							</td>
							<td style="padding-right:200px;" class="textR">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
									<img src="../img/chuxian.png" width="17px" height="17px" style="-webkit-transform:rotate(270deg)" onclick="test(this)"/>
								</a>
							</td>
						</tr>
						<tr height="26px"/>
						<tr>
							<td/>
							<td colspan="2">
								<div id="collapseFour" class="panel-collapse collapse in" >
									<font color="#9A9A9A" style="font-size:16px;">无提供文案</font>
								</div>
							</td>
						</tr>
						<tr height="26px"/>
						<tr height="2px">
							<td colspan="3" style="heihgt:2px;background:#CCCCCC;"></td>
						</tr>
					</table>
					<div style="width:100%;height:31px"></div>
					<table width="100%">
						<tr>
							<td width="34px">
								<img src="../img/Q.png" width="24px" height="24px"/>
							</td>
							<td>
								<font color="#4F4F4F" style="font-size:16px;">5、如何吸引候选人接受面试邀请</font>
							</td>
							<td style="padding-right:200px;" class="textR">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
									<img src="../img/chuxian.png" width="17px" height="17px" style="-webkit-transform:rotate(270deg)" onclick="test(this)"/>
								</a>
							</td>
						</tr>
						<tr height="26px"/>
						<tr>
							<td/>
							<td colspan="2">
								<div id="collapseFive" class="panel-collapse collapse in" >
									<font color="#9A9A9A" style="font-size:16px;">你指定屏蔽的企业始终无法看到你的个人资料。</font>
								</div>
							</td>
						</tr>
						<tr height="26px"/>
						<tr height="2px">
							<td colspan="3" style="heihgt:2px;background:#CCCCCC;"></td>
						</tr>
					</table>
					<div style="width:100%;height:31px"></div>
					<table width="100%">
						<tr>
							<td width="34px">
								<img src="../img/Q.png" width="24px" height="24px"/>
							</td>
							<td>
								<font color="#4F4F4F" style="font-size:16px;">6、面试邀请发出后，多久会得到候选人的答复？</font>
							</td>
							<td style="padding-right:200px;" class="textR">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
									<img src="../img/chuxian.png" width="17px" height="17px" style="-webkit-transform:rotate(270deg)" onclick="test(this)"/>
								</a>
							</td>
						</tr>
						<tr height="26px"/>
						<tr>
							<td/>
							<td colspan="2">
								<div id="collapseSix" class="panel-collapse collapse in" >
									<font color="#9A9A9A" style="font-size:16px;">无提供文案</font>
								</div>
							</td>
						</tr>
						<tr height="26px"/>
						<tr height="2px">
							<td colspan="3" style="heihgt:2px;background:#CCCCCC;"></td>
						</tr>
					</table>
					<div style="width:100%;height:31px"></div>
					<table width="100%">
						<tr>
							<td width="34px">
								<img src="../img/Q.png" width="24px" height="24px"/>
							</td>
							<td>
								<font color="#4F4F4F" style="font-size:16px;">7、我是技术/产品的负责人，可以使用uoffer招聘牛人嘛？</font>
							</td>
							<td style="padding-right:200px;" class="textR">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">
									<img src="../img/chuxian.png" width="17px" height="17px" style="-webkit-transform:rotate(270deg)" onclick="test(this)"/>
								</a>
							</td>
						</tr>
						<tr height="26px"/>
						<tr>
							<td/>
							<td colspan="2">
								<div id="collapseSeven" class="panel-collapse collapse in" >
									<font color="#9A9A9A" style="font-size:16px;">无提供文案</font>
								</div>
							</td>
						</tr>
						<tr height="26px"/>
						<tr height="2px">
							<td colspan="3" style="heihgt:2px;background:#CCCCCC;"></td>
						</tr>
					</table>
				</td>
				<td/>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:170px;"></div>
	</form>
	<table style="width:100%;height:81px;background:#32373C;" id="botom">
		<tr>
			<td class="textC">
				<font color="#F5F8F9" style="font-size:14px;white-space: nowrap;">
					关于我们&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					使用攻略&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					法律声明&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					关注我们
				</font>
			</td>
		</tr>
	</table>
</body>
</html>
