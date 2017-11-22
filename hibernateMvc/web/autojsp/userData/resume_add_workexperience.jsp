<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=baseCss %>userData/resume_add_workexperience.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs %>userData/resume_add_workexperience.js?randomId=<%=Math.random()%>"></script>
<body onload="init()">
<form id="dataForm">
	<center>
	<input type="hidden" id="userResumeId" name="userResumeId" />
	<table class="mainDiv_table bgColorFFFFFF">
			<col class="wi15"/>
			<col class="wi35"/>
			<col class="wi35"/>
			<col class="wi15"/>
			<tr>
				<td colspan="4" class="textC font-18 Parting-line">
					您在哪里工作和学习过？
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<font class="font-18">工作经历<font color="#00B389">*</font></font>
				</td>
				<td>
					<button type="button" class="btn btn-primary newBtn" onclick="addForm('work')">
						新增
					</button>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2">
					<div class="detailDiv">
						<div class="detail">
							<table>
								<tr>
									<td class='w30'>
										<img src='<%=baseImg %>firm.png' width='18px' height='18px'/>
									</td>
									<td>
										<font class="font-14">name</font>
									</td>
									<td class='textR w140'>
										<font class='font-14'>2017.10~2018.09</font>
									</td>
								</tr>
								<tr>
									<td rowspan="3"></td>
									<td colspan="2">job</td>
								</tr>
								<tr>
									<td colspan="2">
										<font class='font-14'>规则初现，国内we崛起，也算掀起第一波热潮。中路若风的ad卡牌，皎月，法王alex，CLG eu冰鸟froggen，卡萨xpeke，第一发条toyz，天才中单姿态。当时什么打法，we全球流，吾王偷塔，xpeke偷水晶，m5双打野。由此可见，当时主流是什么41分推。换句话说，牵制和推进。当时的韩流远未来袭，堪堪能称为高手的也只有azubu frost，不过还是输给了tpa。。</font>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<font class='font-14'>company</font>
									</td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<div class="editBtn floatR">
											<img src='<%=baseImg %>bianji.png' class="hand"/>
											<a><font class="testbtn hand">编辑</font></a>
										</div>
										<div class="editBtn floatR">
											<img src='<%=baseImg %>lajitong.png' class="hand"/>
											<a><font class="testbtn hand">删除</font></a>
										</div>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<font class="font-18">教育经历<font color="#00B389">*</font></font>
				</td>
				<td>
					<button type="button" class="btn btn-primary newBtn" onclick="addForm('edu')">
						新增
					</button>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2">
					<div class="detailDiv"></div>
				</td>
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
					<button type="button" class="btn btn-primary submitBtn" onclick="goNext()">
						下一步
					</button>
				</td>
				<td></td>
			</tr>
		</table>
	</center>
</form>
</body>
</html>
