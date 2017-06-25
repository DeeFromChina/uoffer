<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
*{
    margin:0;
    padding:0;
}
.circle1 {
    width: 61px;
    height: 61px;
    border-radius: 60px;
    border:2px #00B38A solid;
}
div.wrapper{
            margin:12px 12px;
        }
</style>
<script language="javascript">
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	var code;
	function getTran(ret) {
		var trans1 = document.getElementById('transparent1');
		var trans2 = document.getElementById('transparent2');
		if (ret == '1') {
			trans1.setAttribute("class", "triangle-up");
			trans2.setAttribute("class", "");
			document.getElementById("type").value="1";
		}
		if (ret == '2') {
			trans2.setAttribute("class", "triangle-up");
			trans1.setAttribute("class", "");
			document.getElementById("type").value="2";
		}
	}
	function changeRemeber() {
		var remeberId = document.getElementById('remeberId').value;
		if (remeberId == '1') {
			document.getElementById('remeber').src = "../img/cha.png";
			document.getElementById('remeber').style.width = "17px";
			document.getElementById('remeber').style.height = "17px";
			document.getElementById('remeberId').value = '2';
		} else if (remeberId == '2') {
			document.getElementById('remeber').src = "../img/gou.png";
			document.getElementById('remeber').style.width = "20px";
			document.getElementById('remeber').style.height = "20px";
			document.getElementById('remeberId').value = '1';
		}
	}
	function init() {
// 		getTran('1');
// 		var regit = document.getElementById('regit');
// 		regit.focus();
// 		var b = document.getElementById('button1');
// 		b.focus();
// 		code = createValidateCode('vCode2');
		
	}
	function changepsw(){
		var url = "user/updateOfferUserPassword2.do";
		var formId = "pswForm";
		var data = ajaxSumbit(url, formId);
		if(data == "success"){
			top.location.href='login.jsp';
		}else{
			alert("数据出错!");
		}
	}

</script>
<body bgcolor="#F4F9F9" onload="init()">
	<form id="pswForm">
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
					            <a tabindex="-1" href="#" onclick="javascript:top.location.href='mainuse_strategy.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">使用攻略</font></a>
					        </li>
					        <li role="presentation" style="height:46px;">
					            <a tabindex="-1" href="mainuser_question.jsp" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">常见问题</font></a>
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
					            <a tabindex="-1" href="#" onclick="javascript:top.location.href='mainfirm_strategy.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">使用攻略</font></a>
					        </li>
					        <li role="presentation" style="height:46px;">
					            <a tabindex="-1" href="mainfirm_question.jsp" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">常见问题</font></a>
					        </li>
					    </ul>
				    </div>
					<button type="button" style="font-size:14px;height:60px !important;color:#F5F8F9;background-color:#32373C;padding:0px 20px;"
					 class="btn dropdown-toggle" onmouseover="changeColor1(this)"
					 onmouseout="changeColor2(this)" onclick="javascript:top.location.href='maincontact_assistant.jsp'">联系助理
				    </button>
			    </td>
			    <td style="width:24%;padding-right:13%">
				    <button type="button" class="btn btn-default" style="width:101px;color:#00B38A;background:#F5F8F9;" onclick="javascript:top.location.href='login.jsp'">登录</button>
				    <button id="regit" type="button" class="btn btn-default" style="margin-left:9px;width:101px;color:#FFFFFF;background:#00B38A;" onclick="javascript:top.location.href='register.jsp'">注册</button>
				</td>
			</tr>
		</table>
	</div>
	<div style="height:127px"></div>
	<center>
		<div style="background: #FFFFFF; width: 600px;">
			<table width="100%">
				<tr height="68px"/>
				<tr>
					<td width="180px"/>
					<td class="textR" style="float:right;">
						<div class="circle1">
							<div class="wrapper">
								<img src="../img/green_email.png" width="34px"/>
							</div>
						</div>
					</td>
					<td width="131px">
						<div style="width:131px;height:2px;background:#00B38A;">
						</div>
					</td>
					<td width="61px">
						<div class="circle1">
							<div class="wrapper">
								<img src="../img/green_dun.png" width="34px"/>
							</div>
						</div>
					</td>
					<td width="131px">
						<div style="width:131px;height:2px;background:#00B38A;">
						</div>
					</td>
					<td>
						<div class="circle1">
							<div class="wrapper">
								<img src="../img/green_suo.png" width="34px" height="34px"/>
							</div>
						</div>
					</td>
					<td width="180px"/>
				</tr>
				<tr height="13px"/>
				<tr>
					<td/>
					<td class="textC">
						<font style='font-size:14px;' color="#00B38A" class="textC">邮箱地址</font>
					</td>
					<td></td>
					<td class="textC">
						<font style='font-size:14px;' color="#00B38A" class="textC">验证邮箱</font>
					</td>
					<td></td>
					<td class="textC">
						<font style='font-size:14px;' color="#00B38A" class="textC">重置密码</font>
					</td>
					<td/>
				</tr>
				<tr height="36px"/>
				<tr>
					<td/>
					<td colspan="5">
						<font color="#4F4F4F" style="font-size:14px;">新密码</font>
					</td>
					<td/>
				</tr>
				<tr height="13px"/>
				<tr>
					<td/>
					<td colspan="5">
						<center>
							<input type="text" name="password" class="form-control" style="width: 441px !important" id="email">
						</center>
					</td>
					<td/>
				</tr>
				<tr height="26px"/>
				<tr>
					<td/>
					<td colspan="5">
						<font color="#4F4F4F" style="font-size:14px;">确认密码</font>
					</td>
					<td/>
				</tr>
				<tr height="13px"/>
				<tr>
					<td/>
					<td colspan="5">
						<center>
							<input type="text" name="passwordconfirm" class="form-control" style="width: 441px !important" id="email">
						</center>
					</td>
					<td/>
				</tr>
				<tr height="40px"/>
				<tr>
					<td/>
					<td colspan="5">
						<center>
							<button id="button2" onclick="changepsw()" type="button" class="btn btn-default" style="width:280px;background:#00B38A;color:#FFF;"
								>确认提交</button>
						</center>
					</td>
					<td/>
				</tr>
				<tr height="67px"/>
			</table>
		</div>
	</center>
	</form>
</body>
</html>
