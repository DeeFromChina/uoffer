<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="<%=baseCss %>common/list_page.css?randomId=<%=Math.random()%>" rel="stylesheet">
</head>
<script src="<%=baseJs %>common/list_page.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
<body>
	<list id="list1">
		<list-head>title1,title2,title3</list-head>
		<list-head-size>200,300,400</list-head-size>
		<list-value>value1,value2,value3</list-value>
		<list-value-class>list-head</list-value-class>
		<is-share-class>true</is_share_class>
	</list>
</body>
</html>









