<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="../common/common.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
#sidebar {
	/* 有效 */
	transition: margin 3.3s ease;
	
	/* 有效 */
	/* -webkit-transition-property: -webkit-margin-left;
	transition-property: margin-left;
	-webkit-transition-duration: 3s;
	transition-duration: 3s;
	-webkit-transition-timing-function:ease;
	transition-timing-function:ease; */
}
.collapsed1 {
  margin-left: -100%;
}
</style>
<script language="javascript">
function testtest(){
	var doc = document.getElementById("sidebar");
	doc.setAttribute('class','collapsed1');
}
</script>
<body>
	<!-- <div style="width:500px;height:500px;border:1px #000000 solid;float:left;" id="sidebar">
		<div class="panel panel-default" style="width:100%;">
	        <div class="panel-heading">
	            <h4 class="panel-title">
	                <a data-toggle="collapse" data-parent="#accordion" 
	                href="#collapseTwo">
	                点击我进行展开，再次点击我进行折叠。第 2 部分
	            </a>
	            </h4>
	        </div>
	        <div id="collapseTwo" class="panel-collapse collapse">
	        <div class="panel-body">
	            Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
	            cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
	            vice lomo.
	        </div>
	        </div>
	    </div>
	</div>
	<div style="width:200px;height:500px;background:#444444;float:left;" id="test1">
	</div>
	<button onclick="testtest()">tasasdgfsdfg</button> -->
	<!-- <div class="panel panel-default" style="width:100%;">
	        <div class="panel-heading">
	            <h4 class="panel-title">
	                <a data-toggle="collapse" data-parent="#accordion" 
	                href="#collapseTwo">
	                点击我进行展开，再次点击我进行折叠。第 2 部分
	            </a>
	            </h4>
	        </div>
	        <div id="collapseTwo" class="panel-collapse collapse">
	        <div class="panel-body">
	            Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
	            cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
	            vice lomo.
	        </div>
	        </div>
	    </div> -->
	    <div style="width:100%;border:1px #000000 solid;height:200px;">
		    <div class="checkbox_title" >
		    	<!-- <a data-toggle="collapse" href="#test1_1"> -->
		    		<!-- <div style="padding-bottom:40px;">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value"> -->
					    	test1
					    <!-- </div> -->
				    	<font style="float:right;">展开</font>
				    <!-- </div> -->
		    	<!-- </a> -->
		    	<div class="collapse" id="test1_1" style="padding:10px;">
		    	
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_1
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_1
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_1
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_1
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_1
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_1
					    </div>
				    </div>
				    
			    </div>
		    </div>
		    <div style="padding-top:20px;padding-left:20px;width:100%;float:left;" >
		    	<a data-toggle="collapse" href="#test1_2">
		    		test2
			    	<font style="float:right;">展开</font>
		    	</a>
		    	<div class="collapse" id="test1_2" style="padding:10px;">
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_1
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_2
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_3
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_4
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_5
					    </div>
				    </div>
				    <div class="checkbox_cell">
				    	<div class="icheckbox_square-green floatL">
						    <input type="hidden"/>
						    <input type="checkbox" id="2" class="hiddenCheckBox hand" />
				    	</div>
					    <div class="checkbox_cell_value">
					    	test1_6
					    </div>
				    </div>
			    </div>
		    </div>
	    </div>
	    <!-- <div class="checkbox_cell" >
	    	<div class="icheckbox_square-green floatL">
			    <input type="hidden"/>
			    <input type="checkbox" id="3" class="hiddenCheckBox hand" />
	    	</div>
	    	<div class="checkbox_cell_value">
	    		test1_1_1
	    	</div>
	    </div>
	    <div class="checkbox_cell" >
	    	<div class="icheckbox_square-green floatL">
			    <input type="hidden"/>
			    <input type="checkbox" id="5" class="hiddenCheckBox hand" />
		    </div>
		    <div class="checkbox_cell_value">
		    	test1_2
		    </div>
	    </div>
	    <div class="checkbox_title" style="padding-left:0px;" >
	    	test2
	    </div> -->
</body>
</html>
