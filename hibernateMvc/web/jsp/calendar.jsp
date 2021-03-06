<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <link rel="stylesheet" type="text/css" href="http://www.helloweba.com/demo/css/main.css"> -->
<link rel="stylesheet" type="text/css" href="../css/fullcalendar.css">
<link rel="stylesheet" type="text/css" href="../css/fancybox.css">
<style type="text/css">
	#calendar{width:960px; margin:20px auto 10px auto}
	.fancy{width:450px; height:auto}
	.fancy h3{height:30px; line-height:30px; border-bottom:1px solid #d3d3d3; font-size:14px}
	.fancy form{padding:10px}
	.fancy p{height:28px; line-height:28px; padding:4px; color:#999}
	.input{height:20px; line-height:20px; padding:2px; border:1px solid #d3d3d3; width:100px}
	.btn{-webkit-border-radius: 3px;-moz-border-radius:3px;padding:5px 12px; cursor:pointer}
	.btn_ok{background: #360;border: 1px solid #390;color:#fff}
	.btn_cancel{background:#f0f0f0;border: 1px solid #d3d3d3; color:#666 }
	.btn_del{background:#f90;border: 1px solid #f80; color:#fff }
	.sub_btn{height:32px; line-height:32px; padding-top:6px; border-top:1px solid #f0f0f0; text-align:right; position:relative}
	.sub_btn .del{position:absolute; left:2px}
	.circleA {
	    width: 22px;
	    height: 22px;
	    background: #00B38A;
	    -moz-border-radius: 5px;
	    -webkit-border-radius: 5px;
	    border-radius: 22px;
	    padding:4px;
	}
	.triangle-left1 {
		width: 0;
		height: 0;
		border-top: 7px solid transparent;
		border-bottom: 7px solid transparent;
		border-right: 10px solid #FFF;
	}
	.triangle-right {
		width: 0;
		height: 0;
		border-top: 7px solid transparent;
		border-bottom: 7px solid transparent;
		border-left: 10px solid #FFF;
	}
	.clicking-test {
		background: #AADDFF;
	}
</style>
</head>
<!-- <script src='../js/jquery-1.9.1.js'></script> -->
<!-- <script src='http://code.jquery.com/ui/1.10.3/jquery-ui.js'></script> -->
<script src='../js/fullcalendar.min.js'></script>
<script src='../js/jquery.fancybox-1.3.1.pack.js'></script>
<script language="javascript">
	//头部
	function changeColor1(der){
		der.style.background="#777777";
	}
	function changeColor2(der){
		der.style.background="#32373C";
	}
	function changeColor3(der){
		der.style.background="#00B38A";
		der.style.color="#FFF";
	}
	function changeColor4(der){
		der.style.background="#FFF";
		der.style.color="#000";
	}
	function selectInterviewType(seqno){
		top.location.href="user_view.jsp?"+seqno;
	}
	function init() {
		var url = "firm/userviewPage1.do";
		var formId = "userviewForm";
		var data = ajaxSumbit(url, formId);
		document.getElementById('type111').innerText = "等待候选人回应("+data.interview1+")";
		document.getElementById('type222').innerText = "待安排面试("+data.interview2+")";
		document.getElementById('type333').innerText = "待反馈结果("+data.interview3+")";
		document.getElementById('type444').innerText = "面试通过("+data.interview4+")";
		document.getElementById('type555').innerText = "归档("+data.interview5+")";
		document.getElementById('userName').innerText = data.userName;
		//document.getElementById("type1").setAttribute("class","greenTd");
		//goSearch();
	}
	function weekWrite(weekDay, dayNum){
		var a = dayNum + 1;
		/* dayNum = dayNum.replace("\n","");
		dayNum = dayNum.replace("\r","");
		dayNum = dayNum.replace("<br>","");
		dayNum = dayNum.replace(" ",""); */
		document.getElementById("dayNum").innerText=dayNum;
		document.getElementById("weekName").innerText="星期"+weekDay;
	}
	function adddiv(items){
		var div1 = "";
		for(var i in items){
			div1 = div1 + "<div style='width:100%;border-bottom:1px #CCCCCC solid;'>"
							+ "<table style='width:100%;border-collapse:separate;border-spacing:15px;'>"
								+ "<tr>"
									+ "<td width='40%' rowspan='5' valign='top'>"
										+ "<font id='oclock' color='#00B38A' style='font-size:14px;'>"+items[i].time+"</font>"
									+ "</td>"
									+ "<td>"
										+ "<font id='username' style='font-size:14px;' color='#4F4F4F'>"+items[i].name+"</font>"
									+ "</td>"
								+ "</tr>"
								+ "<tr>"
									+ "<td>"
										+ "<font color='#9A9A9A' style='font-size:14px;'>职位</font>"
									+ "</td>"
								+ "</tr>"
								+ "<tr>"
									+ "<td>"
										+ "<font id='job' style='font-size:14px;' color='#4F4F4F'>"+items[i].job+"</font>"
									+ "</td>"
								+ "</tr>"
								+ "<tr>"
									+ "<td>"
										+ "<font color='#9A9A9A' style='font-size:14px;'>联系方式</font>"
									+ "</td>"
								+ "</tr>"
								+ "<tr>"
									+ "<td>"
										+ "<font id='phone' style='font-size:14px;' color='#4F4F4F'>"+items[i].phone+"</font>"
									+ "</td>"
								+ "</tr>"
								+ "<tr>"
									+ "<td colspan='2' class='textC'>"
										+ "<button type='button' class='btn btn-primary' onclick='validateCode(\""+items[i].id+"\")'"
										+ "style='background-color:#FFF;border-color:#00B38A;width:100px;'>"
											+ "<font style='font-size:14px;' color='#00B38A' style='border-radius:40px;'>下载简历</font>"
										+ "</button>"
									+ "</td>"
								+ "</tr>"
							+ "</table>"
						+ "</div>"
						+ "";
		}
		document.getElementById("interviewContent").innerHTML = div1;
	}
	
	function validateCode(str) {
		top.location.href='../user/downloadPdf2.do?str=' + str;
	}
	
	$(function() {
		document.getElementById("interviewContent").innerHTML = "";
		$('#calendar').fullCalendar({
			//console.log(this);
			header: {
				left: 'prev,title,next',
				center: '',
				right: ''
			},
			events:  {
                url: "/hibernateMvc/test/calenderTest.do",
            },
			
            eventClick : function( events ){
            },
            
            dayClick : function (date, allDay, jsEvent, view){
            	$(".clicking-test").each(function () {
        			this.setAttribute("class",this.getAttribute("class").replace(" clicking-test", ""));
                });
            	var cla = this.getAttribute("class").replace(" clicking-test", "");
            	cla = cla + " clicking-test";
            	this.setAttribute("class", cla);
            	var time1 = view.title + "/" + this.innerText;
            	var a = time1.split("/");
            	var aryweek = new Array("四","五","六","日","一","二","三");
            	var gDay = new Date(a[0],a[1],a[2]).getDay();
            	weekWrite(aryweek[gDay],Number(this.innerText));
            	var data = ajaxSumbitNoform("test/dateString.do",time1);
            	document.getElementById("dateWeek").style.display="";
            	adddiv(data);
            },
            
            titleFormat: 'yyyy/MM',
            isRTL: false,
    		firstDay: 1,
    		dayNamesShort: ['日','一','二','三','四','五','六'],
    		
    		buttonText: {
    		    prev: "<div class='circleA'><div class='triangle-left1'></div></div>",
    		    next: "<div class='circleA' style='padding-left:8px;'><div class='triangle-right'></div></div>",
    		    //prevYear: "<span class='fc-text-arrow'>&laquo;上一年</span>",
    		    //nextYear: "<span class='fc-text-arrow'>下一年&raquo;</span>"
    		},
		});
	});
</script>
<body bgcolor="#F4F9F9" onload="init()" style="overflow-y:auto;">
	<div style="width:100%;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;">
		<table style="width:100%;white-space: nowrap;">
			<tr>
				<td width="19%" style="padding-left:13%;"><a href="#" onclick="javascript:top.location.href='homepage.jsp'"><img src="../img/U-Offerlogo.png" width="109px" height="26px"></a></td>
				<td width="5%"/>
				<td>
				    <button type="button" style="height:60px !important;color:#F5F8F9;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" class="btn dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='finduser.jsp'">
				    	<font style="font-size:14px;" color="#F5F8F9">候选人</font>
				    </button>
				    <button type="button" style="height:60px !important;color:#F5F8F9;background-color:#777777;"class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onclick="javascript:top.location.href='user_view.jsp'">
				    	<font style="font-size:14px;" color="#F5F8F9">已发邀请</font>
				    </button>
			    </td>
			    <td width="5%"/>
			    <td style="width:19%;padding-right:10%">
				    <div class="btn-group">
						<button type="button" style="height:60px !important;color:#FFF;background-color:#32373C;"
						 class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" onmouseover="changeColor1(this)"
						 onmouseout="changeColor2(this)" ><span id="userName"></span>
					        <span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2" style="background-color:#32373C;width:150px;">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="#" onclick="javascript:top.location.href='personal_settings_edit.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">个人设置</font></a>
					            <a role="menuitem" tabindex="-1" href="#" onclick="javascript:top.location.href='firm_resume_add.jsp'" style="height:46px;text-align:center;padding-top:10px;" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)"><font color="#F5F8F9">企业信息</font></a>
					        </li>
					    </ul>
				    </div>
				    <button type="button" style="height:60px !important;color:#FFF;background-color:#32373C;" class="btn dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" onmouseover="changeColor1(this)" onmouseout="changeColor2(this)" onclick="javascript:top.location.href='login.jsp'">退出
				    </button>
				</td>
			</tr>
		</table>
	</div>
	<table width="100%" height="95%" style="min-width:1000px;background:#F4F9F9;position:fixed;margin-top:55px;overflow-y:auto;">
		<tr height="30px"/>
		<tr>
			<td width="19%"/>
			<td style="min-width:200px;width:13%;" valign="top">
				<input type="hidden" id="usertype" name="usertype" value="'0','1'"/>
				<table width="100%" style="background:#FFF">
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type1" onclick="selectInterviewType(1)"><font id="type111" >等待候选人回应</font></td></tr>
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type2" onclick="selectInterviewType(2)"><font id="type222" >待安排面试</font></td></tr>
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type3" onclick="selectInterviewType(3)"><font id="type333" >待反馈结果</font></td></tr>
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type4" onclick="selectInterviewType(4)"><font id="type444" >面试通过</font></td></tr>
					<tr><td class="textL" style="font-size:14px;color:#4F4F4F;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" onmouseover="changeColor3(this)" onmouseout="changeColor4(this)" id="type5" onclick="selectInterviewType(5)"><font id="type555" >归档</font></td></tr>
					<tr><td class="textL" style="font-size:14px;background:#00B38A;color:#FFF;border-bottom:1px #E3E6E6 solid;cursor:pointer;padding-top:15px;padding-bottom:15px;padding-left:25%;" id="type6" onclick="selectInterviewType(6)"><font>面试安排表</font></td></tr>
				</table>
			</td>
			<td width="20px" style="border-right:2px #0dad87 solid;" valign="top">
				<table width="100%">
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type11"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type12"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type13"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type14"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="" style="float:right" id="type15"></div>
						</td>
					</tr>
					<tr height="49px">
						<td class="textR" style="padding-top:15px;padding-bottom:15px;">
							<div class="triangle-left" style="float:right" id="type16"></div>
						</td>
					</tr>
				</table>
			</td>
			<td class="textL" valign="top" width="35%" style="min-width:460px;background:#FFF;">
				<div id='calendar' style="width:100%;float:top;background:#FFF;"></div>
			</td>
			<td width="200px">
				<div style="overflow-y:auto;width:100%;height:100%;border:1px #CCCCCC solid;background:#FFF;">
					<table width="100%" height="100%">
						<tr>
							<td height="64px" style="border-bottom:1px #CCCCCC solid;">
								<div style="margin-left:20px;white-space: nowrap;display:none;" id="dateWeek">
									<font color="#00B38A" id="dayNum" style="font-size:20px;">26</font>th&nbsp;
									<font id="weekName" style="font-size:14px;">星期二</font>
								</div>
							</td>
						</tr>
						<tr>
							<td id="interviewContent" valign="top">
							</td>
						</tr>
					</table>
				</div>
			</td>
			<td/>
		</tr>
		<tr height="260px"/>
		<tr height="81px">
			<td class="textC" colspan="6" style="background:#32373C;">
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
