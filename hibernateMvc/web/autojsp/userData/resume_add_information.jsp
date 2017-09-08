<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/autocss/userData/resume_add_information.css" type="text/css"/>
</head>
<script src="<%=request.getContextPath() %>/autojs/userData/resume_add_information.js"></script>
<body bgcolor="#E0FFFF" onload="init()">
<form id="dataForm">
	<center>
		<table class="mainDiv_table bgColorFFFFFF">
			<col class="wi15"/>
			<col class="wi35"/>
			<col class="wi35"/>
			<col class="wi15"/>
			<tr>
				<td colspan="4" class="textC font-18 Parting-line">
					Hi,欢迎您的到来！让我们来认识一下吧。
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">姓名<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<input type="text" name="email" class="form-control input-class" placeholder="请输入邮箱">
				</td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">性别<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="2">
					<input type="hidden" name="offerUserSex" id="offerUserSex"/>
					<button id="button1" type="button" class="btn btn-default w140"
						onclick="setSexValue(1)"><font>男</font></button>
					<button id="setSexValue(0)" type="button" class="btn btn-default w140"
						onclick="getTran('2')"><font>女</font></button>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">工作年限<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
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
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">您期望的工作岗位是？（最多选择两项）<font class="colorFF0033">*</font></font>
				</th>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">您擅长哪些工作技能？（请用逗号分隔你的技能特长）</font>
				</th>
			</tr>
			<tr>
				<td colspan="4" class="Parting-line"></td>
			</tr>
			<tr>
				<td></td>
				<th colspan="3">
					<font class="font-14">关联你的社交网络</font>
				</th>
			</tr>
			<tr>
				<td></td>
				<td style="white-space: nowrap;">
					<img src="../img/zhihu.png" width="41px" height="41px" class="floatL"/>
					<input type="text" name="email" class="form-control marginLeft49 wi70" placeholder="请输入你的知乎ID">
				</td>
				<td>
					<img src="../img/zhihu.png" width="41px" height="41px" class="floatL"/>
					<input type="text" name="email" class="form-control marginLeft49 wi70" placeholder="请输入你的知乎ID">
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<img src="../img/zhihu.png" width="41px" height="41px" class="floatL"/>
					<input type="text" name="email" class="form-control marginLeft49 wi70" placeholder="请输入你的知乎ID">
				</td>
				<td>
					<img src="../img/zhihu.png" width="41px" height="41px" class="floatL"/>
					<input type="text" name="email" class="form-control marginLeft49 wi70" placeholder="请输入你的知乎ID">
				</td>
				<td></td>
			</tr>
		</table>
		<!-- <div style="width: 1000px; background-color: #FFF;">
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
		</div> -->
		<div style="height: 76px; width: 1000px; background-color: #FFF;"></div>
	</center>
	</form>
</body>
</html>
