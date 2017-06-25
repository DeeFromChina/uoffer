<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script language="javascript">
	function goSubmit() {
		var url = "register/firm.do";
		var formId = "loginForm";
		ajaxSumbit(url, formId);
	}
</script>
<body bgcolor="#32373C">
<table style="width:100%;height:100%;">
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
