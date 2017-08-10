<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="../../autocss/common/leftMeum.css?randomId=<%=Math.random()%>" rel="stylesheet">
</head>
<script src="../../autojs/common/leftMeum.js?randomId=<%=Math.random()%>" type="text/javascript"></script>
<body>
	<div class="leftMeum" id="leftMeum">
		<div class="panel panel-default wi100 leftContent">
	        <div class="panel-heading hand" data-toggle="collapse" data-parent="#accordion" onclick="openContent(this)" href="#collapseTwo">
	            <h4 class="panel-title">
	                <a>
	                	导航1
	            	</a>
	            	<img src="../../img/chuxian.png" class="leftImg"/>
	            </h4>
	        </div>
	        <div id="collapseTwo" class="panel-collapse collapse">
		        <div class="panel-body">
		            <a onclick="addLeftMeum()">hello</a>
		        </div>
	        </div>
	    </div>
		<div class="panel panel-default wi100">
	        <div class="panel-heading hand" data-toggle="collapse" data-parent="#accordion" onclick="openContent(this)" href="#collapseTwo2">
	            <h4 class="panel-title">
	                <a>
	                	导航1
	            	</a>
	            	<img src="../../img/chuxian.png" class="leftImg"/>
	            </h4>
	        </div>
	        <div id="collapseTwo2" class="panel-collapse collapse">
		        <div class="panel-body">
		        	<ul class="leftContentLevel" role="menu" aria-labelledby="dropdownMenu1" style="" id="job">
		        		<li class="dropdown-submenu">
				    		<a href="#">More options </a>
							<ul class="dropdown-menu leftContentLevel2">
								<li>
									<a href="#">另一个功能1</a>
								</li>
								<li><a href="#">另一个功能1</a></li>
							</ul>
						</li>
					</ul>
		        </div>
	        </div>
	    </div>
	</div>
	<div style="width:200px;height:500px;background:#444444;float:left;" id="test1">
	</div>
	<button onclick="leftHidden()">tasasdgfsdfg</button>
</body>
</html>
