<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragrma","no-cache");
response.setDateHeader("Expires",0);
String basePath = request.getContextPath();
String baseJs2 = request.getContextPath() + "/js/";
String baseJs = request.getContextPath() + "/autojs/";
String baseCss2 = request.getContextPath() + "/css/";
String baseCss = request.getContextPath() + "/autocss/";
String baseJsp = request.getContextPath() + "/autojsp/";
String baseImg = request.getContextPath() + "/img/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>超級無敵牛逼的網站</title>
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Cache" content="no-cache">
<link href="<%=baseCss2 %>bootstrap.min.css?randomId=<%=Math.random()%>" rel="stylesheet">
<link href="<%=baseCss2 %>base.css?randomId=<%=Math.random()%>" rel="stylesheet">
<link href="<%=basePath %>/skins/all.css?randomId=<%=Math.random()%>" rel="stylesheet">
<!-- <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" /> -->
<link rel="shortcut icon" href="<%=basePath %>/img/title.ico" type="image/x-icon"/>
<link rel="stylesheet" href="<%=baseCss %>common/common.css?randomId=<%=Math.random()%>" type="text/css"/>
</head>
<script src="<%=baseJs2 %>jquery-3.1.1.min.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
<script src="<%=baseJs2 %>bootstrap.min.js?randomId=<%=Math.random()%>"></script>
<script src="<%=baseJs %>common/page.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
<script src="<%=baseJs %>common/ajaxSubmit.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
<script src="<%=baseJs %>common/common.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
<script src="<%=baseJs %>common/checkUtil.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
<script src="<%=baseJs %>common/VCode.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
<script src="<%=baseJs %>common/checkbox.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
<script language="javascript">
</script>
<body>
</body>
</html>
