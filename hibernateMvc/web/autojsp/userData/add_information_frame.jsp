<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script src="<%=request.getContextPath() %>/autojs/userData/add_information_frame.js"></script>
<body bgcolor="#E0FFFF" onload="init()">
<form id="dataForm">
	<center>
		<div class="mainDiv">
			<table class="mainDiv_table">
				<col class="wi5"/>
				<col class="wi22"/>
				<col class="wi22"/>
				<col class="wi22"/>
				<col class="wi22"/>
				<col class="wi5"/>
				<tr>
					<td/>
					<td class="textC">
						<a href="#resume_add_information" data-toggle="tab">
							<div class="circleA floatL"></div>
							<font class="color00B38A font-18 floatL">&nbsp;&nbsp;基本信息 </font>
						</a>
					</td>
					<td class="textC">
						<a href="#home" data-toggle="tab">
							<div class="circleB floatL"></div>
							<font class="font-18 floatL">&nbsp;&nbsp;期望工作 </font>
						</a>
					</td>
					<td class="textC">
						<a href="#home" data-toggle="tab">
							<div class="circleB floatL"></div>
							<font class="font-18 floatL">&nbsp;&nbsp;个人经历 </font>
						</a>
					</td>
					<td class="textC">
						<a href="#home" data-toggle="tab">
							<div class="circleB floatL"></div>
							<font class="font-18 floatL">&nbsp;&nbsp;调查问卷 </font>
						</a>
					</td>
					<td/>
				</tr>
			</table>
			<div id="myTabContent" class="tab-content wi00">
			    <div class="tab-pane fade in active" id="resume_add_information">
			        <iframe class="wh100" src="resume_add_information.jsp" scrolling="no" frameborder="0" id="iframe1" name="iframe1"></iframe>
			    </div>
			    <div class="tab-pane fade" id="accountinformation" style="height:100%;padding-top:128px;">
			        <iframe height="100%" width="100%" src="user_account.jsp" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;" id="iframe2" name="iframe2"></iframe>
			    </div>
			    <div class="tab-pane fade" id="qiuzhi" style="height:100%;padding-top:128px;">
			        <iframe height="100%" width="100%" src="user_qiuzhi.jsp" scrolling="yes" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;" id="iframe3" name="iframe3"></iframe>
			    </div>
			    <div class="tab-pane fade" id="tuijian" style="height:100%;padding-top:128px;">
			        <iframe height="100%" width="100%" src="user_tuijian.jsp" scrolling="auto" frameborder="0" marginheight="0px" marginwidth="0px" style="background:#FFF;" id="iframe4" name="iframe4"></iframe>
			    </div>
			</div>
		</div>
		<!-- <div style="background: #FFFFFF;height:74px; width: 1000px;padding-top:29px;padding-bottom:20px;">
			<center><font color="#4F4F4F" style="font-size:18px;">Hi,欢迎您的到来！让我们来认识一下吧。</font></center>
		</div>
		<div style="height: 2px; width: 1000px; background-color: #CCCCCC;"></div>
		<div style="background: #FFFFFF; width: 1000px;">
			<br />
			<table
				style="border-collapse: separate; border-spacing: 10px; width: 100%; padding-left:15%;padding-right:15%;">
				<tr>
					<th class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">姓名<font color="#00B389">*</font></font>
					</th>
				</tr>
				<tr>
					<td>
						<input type="text" name="offerUserName" id="offerUserName" class="form-control" style="width: 381px;">
					</td>
					<td/>
				</tr>
				<tr>
					<th class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">性别<font color="#00B389">*</font></font>
					</th>
				</tr>
				<tr>
					<td colspan="2">
						<input type="hidden" name="offerUserSex" id="offerUserSex"/>
						<button type="button" class="btn btn-primary" onclick="setSexValue(1)" data-toggle="button" id="sex1"
							style="color: #00B38A !important;background-color: #FFF !important; border-color: #00B38A !important; width: 121px;height:41px;">
							男</button>
						<button type="button" class="btn btn-primary" onclick="setSexValue(0)" data-toggle="button" id="sex2"
							style="color: #00B38A !important;background-color: #FFF !important; border-color: #00B38A !important; width: 121px;height:41px;">
							女</button>
					</td>
				</tr>
				<tr>
					<th class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">工作年限<font color="#00B389">*</font></font>
					</th>
				</tr>
				<tr>
					<td class="textL">
						<div class="input-group" style="margin-left:-10px !important;width: 90%;">
							<div class="dropdown" style="">
								<input type="text" name="offerUserWorktime" id="offerUserWorktime" readOnly="readOnly" class="form-control" style="width: 340px;">
							    <button type="button" style="width:41px;height:41px !important;border:1px #CCCCCC solid;background-color:#F5F8F9;" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
							        <span class="caret"></span>
							    </button>
							    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="width: 381px;height:150px;overflow-y:auto;" id="offerUserWorktime">
							        <li role="presentation">
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("3年以下")'><font color="#4F4F4F">3年以下</font></a>
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("3年")'><font color="#4F4F4F">3年</font></a>
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("4年")'><font color="#4F4F4F">4年</font></a>
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("5年")'><font color="#4F4F4F">5年</font></a>
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("6年")'><font color="#4F4F4F">6年</font></a>
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("7年")'><font color="#4F4F4F">7年</font></a>
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("8年")'><font color="#4F4F4F">8年</font></a>
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("9年")'><font color="#4F4F4F">9年</font></a>
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("10年")'><font color="#4F4F4F">10年</font></a>
							            <a role="menuitem" tabindex="-1" onclick='workTimeValue("10年以上")'><font color="#4F4F4F">10年以上</font></a>
							        </li>
							    </ul>
							</div>
						</div>
					</td>
					<td/>
				</tr>
				<tr>
					<th class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">您期望的工作岗位是？（最多选择两项）<font color="#00B389">*</font></font>
						<input type="hidden" id="jobs" name="jobs"/>
					</th>
				</tr>
				<tr>
					<td colspan="2" id="checkJob">
					</td>
				</tr>
				<tr id="job1_title"/>
				<tr id="job1"/>
				<tr id="job2_title"/>
				<tr id="job2"/>
				<tr>
					<th class="textL" colspan="2">
						<font style="font-size:14px;" color="#4F4F4F">您擅长哪些工作技能？（请用逗号分隔你的技能特长）</font>
					</th>
				</tr>
				<tr>
					<td colspan="2">
						<input type="text" name="offerUserDescription" id="offerUserDescription" class="form-control" style="width: 381px;">
					</td>
				</tr>
				<tr height="10px"/>
			</table>
		</div>
		<div style="height: 2px; width: 1000px; background-color: #CCCCCC;"></div>
		<div style="width: 1000px; background-color: #FFF;">
			<table width="100%">
				<tr height="30px"/>
				<tr height="40px">
					<td width="15%" rowspan="3"/>
					<td width="10px" rowspan="3"/>
					<td style="font-size:14px;" colspan="4">关联你的社交网络</td>
				</tr>
				<tr height="60px">
					<td class="textL">
						<img src="../img/zhihu.png" width="41px" height="41px"/>
					</td>
					<td class="textL" style="padding-left:10px;">
			            <input type="text" class="form-control" name="offerUserZhihu" id="offerUserZhihu" placeholder="请输入你的知乎ID" style="width: 261px !important">
					</td>
					<td class="textL">
						<img src="../img/github.png" width="41px" height="41px"/>
					</td>
					<td class="textL" style="padding-left:10px;">
						<input type="text" class="form-control" name="offerUserGithub" id="offerUserGithub" placeholder="请输入你的github账号" style="width: 261px !important">
					</td>
				</tr>
				<tr height="60px">
					<td width="41px" class="textL">
						<img src="../img/blog.png" width="41px" height="41px"/>
					</td>
					<td class="textL" style="padding-left:10px;">
			            <input type="text" class="form-control" name="offerUserBlog" id="offerUserBlog" placeholder="请输入你的blog地址" style="width: 261px !important">
					</td>
					<td width="41px" class="textL">
						<img src="../img/personlink.png" width="41px" height="41px"/>
					</td>
					<td class="textL" style="padding-left:10px;">
						<input type="text" class="form-control" name="offerUserPersonWeb" id="offerUserPersonWeb" placeholder="请输入你的个人网站" style="width: 261px !important">
					</td>
				</tr>
			</table>
			<br/>
			<button type="button" class="btn btn-primary" onclick="goSubmit()" data-toggle="button"
				style="color: #FFF !important;background-color: #00B38A !important; border-color: #00B38A !important; width: 361px;">
				下一步</button>
		</div>
		<div style="height: 76px; width: 1000px; background-color: #FFF;"></div> -->
	</center>
	</form>
</body>
</html>
