/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2017-05-05 15:17:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class edit_005fresume4_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<title></title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n");
      out.write("<!-- <link href=\"../css/bootstrap.css\" rel=\"stylesheet\" /> -->\r\n");
      out.write("<link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href=\"../css/bootstrap-datetimepicker.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href=\"../css/bootstrap-datetimepicker.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("</head>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/jquery-1.9.1.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/bootstrap-datetimepicker.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/locales/bootstrap-datetimepicker.zh-CN.js\"></script>\r\n");
      out.write("<script src=\"../js/ajaxSubmit.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tvar worksNum;\r\n");
      out.write("\tfunction init(){\r\n");
      out.write("\t\tvar url = \"user/resumeedit4.do\";\r\n");
      out.write("\t\tvar formId = \"resumeAddWorkexperienceForm1\";\r\n");
      out.write("\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\taddmsgDiv(data.otherWorks);\r\n");
      out.write("\t\t$(\"#resumeAddWorkexperienceForm1\").populateForm(data);\r\n");
      out.write("\t\t$(\".form_datetime2\").datetimepicker({\r\n");
      out.write("\t        format: \"yyyy-mm\",\r\n");
      out.write("\t        autoclose:true,\r\n");
      out.write("\t        startView: 'year',\r\n");
      out.write("\t        minView:'year',\r\n");
      out.write("\t        maxView:'decade',\r\n");
      out.write("\t        language:'zh-CN'\r\n");
      out.write("\t    });\r\n");
      out.write("\t\tif (data.otherWorks.length > 0) {\r\n");
      out.write("\t\t\tworksNum = data.otherWorks.length;\r\n");
      out.write("\t\t\tdocument.getElementById(\"xiaoshi\").style.display=\"none\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse {\r\n");
      out.write("\t\t\tworksNum = 0;\r\n");
      out.write("\t\t\tdocument.getElementById(\"xiaoshi\").style.display=\"block\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction saveData(ispass) {\r\n");
      out.write("\t\tif (ispass) {\r\n");
      out.write("\t\t\tif(!checkValueWork()) return;\r\n");
      out.write("\t\t\tif(checkToNow('work')) return;\r\n");
      out.write("\t\t\tvar url = \"user/saveresumeAddWorkexperience1.do\";\r\n");
      out.write("\t\t\tvar formId = \"resumeAddWorkexperienceForm1\";\r\n");
      out.write("\t\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\t\tif(data == 'error'){\r\n");
      out.write("\t\t\t\talert('保存错误！');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\talert('保存成功！');\r\n");
      out.write("\t\t\t\ttop.location.href='resume_edit.jsp';\r\n");
      out.write("\t\t\t\t/* document.getElementById(\"reset1\").click();\r\n");
      out.write("\t\t\t\taddmsgDiv(data.otherWorks);\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"xiaoshi\").style.display=\"none\"; */\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse {\r\n");
      out.write("\t\t\ttop.location.href='resume_edit.jsp';\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction test(){\r\n");
      out.write("\t\tinit();\r\n");
      out.write("\t\tparent.document.getElementById(\"main1\").height=0;\r\n");
      out.write("\t\tparent.document.getElementById(\"main1\").height=document.body.scrollHeight;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction addmsgDiv(items){\r\n");
      out.write("\t\tvar div1 = \"\";\r\n");
      out.write("\t\tvar j = 0;\r\n");
      out.write("\t\tfor(var i in items){\r\n");
      out.write("\t\t\tdiv1 = div1 + \"<div style='width:100%' onmouseover='appacerdiv(this)' id='d\"+i+\"' style='min-height:75px;'>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<table width='100%' id='editMsg'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<tr height='30px'/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td width='34px' rowspan='5' valign='top'><img src='../img/firm.png' width='18px' height='18px'/></td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td width='69%'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;' >\"+items[i].firmName+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td class='textC' valign='top' style='padding-top:5px;'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"<font color='#00B389' style='font-size:14px;' >\"+items[i].jobstart+\"~\"+items[i].jobend+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"</tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<tr height='13px'/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"<font color='#9A9A9A' style='font-size:14px;' >\"+items[i].jobName+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"</tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<tr height='13px'/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"<font color='#9A9A9A' style='font-size:14px;' >\"+items[i].workcontent+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"</tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</table>\"\r\n");
      out.write("\t\t\t\t\t\t+\"</div>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<div style='width:100%;z-index:9999;display:none;' onmouseout='displaydiv(this)' id='e\"+i+\"'>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<table width='100%' style='height:100%;'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td width='80%'/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td width='100px'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t/* +\"<button type='button' class='btn btn-primary' data-toggle='button' id='del_\"+items[i].thisId+\"' onclick='delWork(this)'\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"删除\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"</button>\" */\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"<img src='../img/lajitong.png' id='del_\"+items[i].thisId+\"' onclick='delWork(this)'/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td width='100px'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t/* +\"<button type='button' class='btn btn-primary' data-toggle='button' id='edit_\"+items[i].thisId+\"' onclick='editWork(this)'\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"style='font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"编辑\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"</button>\" */\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"<img src='../img/bianji.png' id='edit_\"+items[i].thisId+\"' onclick='editWork(this)'/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<td width='15%'/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"</tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</table>\"\r\n");
      out.write("\t\t\t\t\t\t+\"</div>\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.getElementById(\"msgDiv\").innerHTML=div1;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction delWork(obj) {\r\n");
      out.write("\t\tif(confirm(\"真的要删除吗？\")) {\r\n");
      out.write("\t\t\tdocument.getElementById('offerUserWorksId').value = obj.id.split('_')[1];\r\n");
      out.write("\t\t\tvar url = \"user/delWork.do\";\r\n");
      out.write("\t\t\tvar formId = \"resumeAddWorkexperienceForm1\";\r\n");
      out.write("\t\t\tvar data2 = ajaxSumbit(url, formId);\r\n");
      out.write("\t\t\tdocument.getElementById('offerUserWorksId').value = \"\";\r\n");
      out.write("\t\t\tif(data2 == 'success'){\r\n");
      out.write("\t\t\t\tparent.document.getElementById(\"mainFrame\").src = \"edit_resume4.jsp\";\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\talert(\"操作失败！\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goAdd() {\r\n");
      out.write("\t\tif (!checkValueWorkKuang()) {\r\n");
      out.write("\t\t\tdocument.getElementById(\"offerUserWorksId\").value = \"\";\r\n");
      out.write("\t\t\tvar url = \"user/getNewWork.do\";\r\n");
      out.write("\t\t\tvar formId = \"resumeAddWorkexperienceForm1\";\r\n");
      out.write("\t\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\t\taddmsgDiv(data.otherWorks);\r\n");
      out.write("\t\t\tdocument.getElementById(\"xiaoshi\").style.display=\"block\";\r\n");
      out.write("\t\t\tparent.document.getElementById(\"main1\").height=0;\r\n");
      out.write("\t\t\tparent.document.getElementById(\"main1\").height=document.body.scrollHeight;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse {\r\n");
      out.write("\t\t\tif(confirm(\"是否先保存下面的数据？\")) {\r\n");
      out.write("\t\t\t\tif(!checkValueWork()) return;\r\n");
      out.write("\t\t\t\tif(checkToNow('work')) return;\r\n");
      out.write("\t\t\t\tvar url = \"user/saveresumeAddWorkexperience1.do\";\r\n");
      out.write("\t\t\t\tvar formId = \"resumeAddWorkexperienceForm1\";\r\n");
      out.write("\t\t\t\tvar data2 = ajaxSumbit(url, formId);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tdocument.getElementById(\"reset1\").click();\r\n");
      out.write("\t\t\tdocument.getElementById(\"xiaoshi\").style.display=\"block\";\r\n");
      out.write("\t\t\tparent.document.getElementById(\"main1\").height=0;\r\n");
      out.write("\t\t\tparent.document.getElementById(\"main1\").height=document.body.scrollHeight;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction checkValueWork(){\r\n");
      out.write("\t\tif(!checkInput('firmName',\"公司名称\",\"30\",false)) return false;\r\n");
      out.write("\t\tif(!checkInput('jobName',\"职位名称\",\"30\",false)) return false;\r\n");
      out.write("\t\tif(!checkInput('jobstart',\"开始时间\",\"30\",false)) return false;\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction checkValueWorkKuang() {\r\n");
      out.write("\t\tvar flag = false;\r\n");
      out.write("\t\tvar strings = \"firmName,jobName,jobstart,jobend,workcontent\";\r\n");
      out.write("\t\tfor (var i in strings.split(',')) {\r\n");
      out.write("\t\t\tif (document.getElementById(strings.split(',')[i]).value != \"\") {\r\n");
      out.write("\t\t\t\tflag = true;\r\n");
      out.write("\t\t\t\tbreak;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\treturn flag;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction editWork(obj) {\r\n");
      out.write("\t\tif (checkValueWorkKuang()) {\r\n");
      out.write("\t\t\tif(confirm(\"是否先保存下面的数据？\")) {\r\n");
      out.write("\t\t\t\tif(!checkValueWork()) return;\r\n");
      out.write("\t\t\t\tif(checkToNow('work')) return;\r\n");
      out.write("\t\t\t\tvar url = \"user/saveresumeAddWorkexperience1.do\";\r\n");
      out.write("\t\t\t\tvar formId = \"resumeAddWorkexperienceForm1\";\r\n");
      out.write("\t\t\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.getElementById(\"reset1\").click();\r\n");
      out.write("\t\tdocument.getElementById(\"offerUserWorksId\").value = obj.id.split('_')[1];\r\n");
      out.write("\t\tvar url = \"user/getNowWork.do\";\r\n");
      out.write("\t\tvar formId = \"resumeAddWorkexperienceForm1\";\r\n");
      out.write("\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\tvar toNow = data.toNow;\r\n");
      out.write("\t\tif (toNow == 'true') {\r\n");
      out.write("\t\t\tdocument.getElementById(\"toNowWork\").checked = true;\r\n");
      out.write("\t\t\tdocument.getElementById(\"jobend\").disabled = true;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse {\r\n");
      out.write("\t\t\tdocument.getElementById(\"toNowWork\").checked = false;\r\n");
      out.write("\t\t\tdocument.getElementById(\"jobend\").disabled = false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\taddmsgDiv(data.otherWorks);\r\n");
      out.write("\t\tdocument.getElementById(\"xiaoshi\").style.display=\"block\";\r\n");
      out.write("\t\tparent.document.getElementById(\"main1\").height=0;\r\n");
      out.write("\t\tparent.document.getElementById(\"main1\").height=document.body.scrollHeight;\r\n");
      out.write("\t\t$(\"#resumeAddWorkexperienceForm1\").populateForm(data);\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction appacerdiv(obj){\r\n");
      out.write("\t\tobj.style.height=obj.offsetHeight;\r\n");
      out.write("\t\tvar id = \"e\"+obj.id.substring(1,2);\r\n");
      out.write("\t\tdocument.getElementById(id).style.display=\"\";\r\n");
      out.write("\t\tif(document.getElementById(id).style.heigh != undefined){\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.getElementById(id).style.height=obj.offsetHeight-30;\r\n");
      out.write("\t\tdocument.getElementById(id).style.marginTop=0-obj.offsetHeight+30 +\"px\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction displaydiv(obj){\r\n");
      out.write("\t\tobj.style.display=\"none\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeToNow() {\r\n");
      out.write("\t\tif (document.getElementById(\"toNowWork\").checked==true) document.getElementById(\"jobend\").disabled = true;\r\n");
      out.write("\t\telse document.getElementById(\"jobend\").disabled = false;\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("<body bgcolor=\"#FFF\" onload=\"test()\">\r\n");
      out.write("\t<div style=\"width:100%;\">\r\n");
      out.write("\t\t<form id=\"resumeAddWorkexperienceForm1\">\r\n");
      out.write("\t\t\t<table width=\"100%\">\r\n");
      out.write("\t\t\t\t<tr height=\"49px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"40px\"/>\r\n");
      out.write("\t\t\t\t\t<td width=\"69%\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:20px;\" color=\"#4F4F4F\">工作经历</font>\r\n");
      out.write("\t\t\t\t\t\t<input id=\"offerUserWorksId\" type=\"hidden\" name=\"offerUserWorksId\"/>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\">\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-primary\" data-toggle=\"button\" onclick=\"goAdd()\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"font-size:14px;color:#00B389;background-color:#FFF;min-width:100px;\">\r\n");
      out.write("\t\t\t\t\t\t\t新增\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\" style=\"position: relative;\" id=\"msgDiv\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"48px\"/>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<table width=\"100%\" id=\"xiaoshi\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"40px\"/>\r\n");
      out.write("\t\t\t\t\t<td width=\"54%\">\r\n");
      out.write("\t\t\t\t\t\t<font color=\"#4F4F4F\" style=\"font-size:14px;\" >公司名称</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"16px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"firmName\" id=\"firmName\" class=\"form-control\" style=\"width: 441px;\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"48px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<font color=\"#4F4F4F\" style=\"font-size:16px;\" >职位名称</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"13px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"jobName\" id=\"jobName\" class=\"form-control\" style=\"width: 441px;\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"56px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<font color=\"#4F4F4F\" style=\"font-size:16px;\" >在职时间</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"13px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t<table width=\"100%\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"textL\" width=\"46px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"#4F4F4F\" style=\"font-size:16px;\" >开始</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"201px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class='input-append date form_datetime2' style=\"width:100%;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input style='font-size:14px;color:#4F4F4F;' type='text' value='' class='date-control form-control' style=\"width: 201px;\" readonly name='jobstart' id='jobstart'>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t    <span class='add-on'><i class='icon-th'></i></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"53px\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"textC\" width=\"50px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"#4F4F4F\" style=\"font-size:16px;\" >结束</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- <td class=\"textL\" width=\"141px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"jobend\" id=\"jobend\" class=\"form-control\" style=\"width: 141px !important;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td> -->\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"201px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class='input-append date form_datetime2' style=\"width:100%;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input style='font-size:14px;color:#4F4F4F;' type='text' value='' class='date-control form-control' style=\"width: 201px;\" readonly name='jobend' id='jobend'>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t    <span class='add-on'><i class='icon-th'></i></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"15px\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"textL\" valign=\"bottom\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"hidden\" id=\"toNow1\" name=\"toNow1\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" id=\"toNowWork\" name=\"toNowWork\" onclick=\"changeToNow()\"/><font color=\"#4F4F4F\" style=\"font-size:16px;\" >至今</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"48px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<font color=\"#4F4F4F\" style=\"font-size:16px;\" >工作内容</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"13px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t<textarea rows=\"8\" style=\"max-width:789px;height:201px;min-width:500px;width:90%;\" id=\"workcontent\" name=\"workcontent\"></textarea>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"50px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td/>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" class=\"textC\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"reset\" name=\"reset1\" id=\"reset1\" style=\"display: none;\" />\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-primary\" data-toggle=\"button\" onclick=\"saveData(false)\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"font-size:14px;border-color:#CCCCCC;color:#4F4F4F;background-color:#CCCCCC;min-width:140px;\">\r\n");
      out.write("\t\t\t\t\t\t\t取消\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-primary\" data-toggle=\"button\" onclick=\"saveData(true)\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"margin-left:19px;font-size:14px;color:#FFF;background-color:#00B389;min-width:140px;\">\r\n");
      out.write("\t\t\t\t\t\t\t保存\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div style=\"width:100%;height:50px;\"></div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
