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
	function test(){
		parent.document.getElementById("main1").height=0;
		parent.document.getElementById("main1").height=document.body.scrollHeight;
	}
	function insertTest(){
		var font1 = document.createElement("font");
		var font2 = document.createElement("font");
		var font3 = document.createElement("font");
		var font4 = document.createElement("font");
		font1.style="font-weight:bold;font-size:30px;";
		font2.style="font-weight:bold;font-size:30px;";
		font3.style="font-weight:bold;font-size:30px;";
		font4.style="font-weight:bold;font-size:30px;";
		font1.innerHTML="<br/>##个人简历<br/>"
		font2.innerHTML="##技术经历和项目技术细节<br/>"
		font3.innerHTML="##其他开源项目和个人作品<br/>"
		font4.innerHTML="##理想团队<br/>";
		document.getElementById("descript_html").contentWindow.document.body.appendChild(font1);
		document.getElementById("descript_html").contentWindow.document.body.appendChild(font2);
		document.getElementById("descript_html").contentWindow.document.body.appendChild(font3);
		document.getElementById("descript_html").contentWindow.document.body.appendChild(font4);
	}
</script>
<body bgcolor="#FFF" onload="test()">
	<div style="width:100%;">
		<table width="100%">
			<tr height="49px"/>
			<tr>
				<td width="40px"/>
				<td width="54%">
					<font style="font-size:20px;" color="#4F4F4F">个人描述</font>
				</td>
				<td class="textC" width="19%">
				</td>
				<td/>
			</tr>
			<tr height="26px"/>
			<tr>
				<td/>
				<td>
					<font color="#4F4F4F" style="font-size:16px;" >介绍一下自己</font>
				</td>
				<td class="textR">
					<a href="#" onclick="insertTest()">
						<font color="#00B389" style="font-size:16px;" >插入模板</font>
					</a>
				</td>
				<td/>
			</tr>
			<tr height="29px"/>
			<tr>
				<td/>
				<td colspan="2" height="420px">
					<textarea rows="28" style="width:100%;min-width:300px;" id="descript"></textarea>
					<script language="Javascript" type="text/javascript">
						$("#descript").css("height","100%").css("width","100%").htmlbox({
						    toolbars:[
							    [
								"bold","italic","underline","strike","sup","sub",
								"justify","left","center","right",
								"ol","ul","indent","outdent"
								]
							],
							skin:"blue"
						});
					</script>
				</td>
				<td/>
			</tr>
			<tr height="50px"/>
			<tr>
				<td/>
				<td colspan="3" class="textC">
					<button type="button" class="btn btn-primary" data-toggle="button"
						style="font-size:14px;border-color:#CCCCCC;color:#4F4F4F;background-color:#CCCCCC;min-width:140px;">
						取消
					</button>
					<button type="button" class="btn btn-primary" data-toggle="button"
						style="margin-left:19px;font-size:14px;color:#FFF;background-color:#00B389;min-width:140px;">
						保存
					</button>
				</td>
			</tr>
		</table>
	</div>
	<div style="width:100%;height:50px;"></div>
</body>
</html>