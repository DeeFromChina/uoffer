/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2017-05-15 07:06:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.util.*;

public final class firm_005finformation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/common/header.jsp", Long.valueOf(1494475596723L));
  }

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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>My JSP 'index.jsp' starting page</title>\r\n");
      out.write("<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("<meta http-equiv=\"expires\" content=\"0\">\r\n");
      out.write("<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("<link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"../css/base.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"../skins/all.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- <link href=\"../css/bootstrap-datetimepicker.min.css\" rel=\"stylesheet\" /> -->\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"../img/title.ico\" type=\"image/x-icon\"/>\r\n");
      out.write("<style>\r\n");
      out.write("\t.btn.dropdown-toggle{\r\n");
      out.write("\t\tbackground:#CCCCCC;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<script src=\"../js/jquery-3.1.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"../js/ajaxfileupload.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"../js/ajaxSubmit.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"../js/bootstrap.min.js\"></script>\r\n");
      out.write("<!-- <script src=\"../js/Carousel.js\"></script> -->\r\n");
      out.write("<script src=\"../js/jquery.icheck.js\"></script>\r\n");
      out.write("<script src=\"../js/custom.js\"></script>\r\n");
      out.write("<script src=\"../js/custom.min.js\"></script>\r\n");
      out.write("<!-- <script type=\"text/javascript\" src=\"../js/bootstrap-datetimepicker.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"../js/locales/bootstrap-datetimepicker.zh-CN.js\"></script> -->\r\n");
      out.write("    \r\n");
      out.write("\t\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tfunction upload() {\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\turl : \"register/firm.do\", // 自行按需配置好完整的url，包括ip和端口号  \r\n");
      out.write("\t\t\ttype : \"POST\",\r\n");
      out.write("\t\t\tdatatype : \"text\",\r\n");
      out.write("\t\t\tdata : JSON.stringify($(\"#form1\").serializeObject()),\r\n");
      out.write("\t\t\tcontentType : \"application/json\",\r\n");
      out.write("\t\t});\r\n");
      out.write("\t}\r\n");
      out.write("\t//头部\r\n");
      out.write("\tfunction changeColor1(der){\r\n");
      out.write("\t\tder.style.background=\"#777777\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor2(der){\r\n");
      out.write("\t\tder.style.background=\"#32373C\";\r\n");
      out.write("\t}\r\n");
      out.write("\tjQuery(function($){\r\n");
      out.write("\t\t$(\".dropdown .form-control\").click(function(){\r\n");
      out.write("\t\t\tif(this.parentNode.getElementsByTagName(\"button\") == undefined){\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tthis.parentNode.getElementsByTagName(\"button\")[0].click();\r\n");
      out.write("\t\t});\r\n");
      out.write("\t});\r\n");
      out.write("</script>\r\n");
      out.write("<body>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("<title></title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write("\t#userTable td{\r\n");
      out.write("\t\tborder:1px #CCCCCC solid;\r\n");
      out.write("\t\theight:47px;\r\n");
      out.write("\t\tmin-width:80px;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tfunction init(){\r\n");
      out.write("\t\t/* if(isResetLogin()) {\r\n");
      out.write("\t\t\talert(\"登陆超时!\");\r\n");
      out.write("\t\t\ttop.location.href='stafflogin.jsp';\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse{ */\r\n");
      out.write("\t\t\tvar url = \"login/firmInformation1.do?pageId=\" + 1;\r\n");
      out.write("\t\t\tvar formId = \"finduserForm\";\r\n");
      out.write("\t\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\t\tdocument.getElementById(\"allNum\").innerText=data.allNum;\r\n");
      out.write("\t\t\taddLi(data.city,\"city\");\r\n");
      out.write("\t\t\t//addLi(data.job,\"job\");\r\n");
      out.write("\t\t\taddLi(data.status,\"status\");\r\n");
      out.write("\t\t\taddList(data.firmList);\r\n");
      out.write("\t\t\taddpageNum(data.pageNum,\"u1\");\r\n");
      out.write("\t\t/* } */\r\n");
      out.write("\t}\r\n");
      out.write("\t//下拉列表\r\n");
      out.write("\tfunction addLi(items,liId){\r\n");
      out.write("\t\tvar inn = \"\";\r\n");
      out.write("\t\tfor(var i in items){\r\n");
      out.write("\t\t\tinn = inn + \"<li role='presentation'>\"\r\n");
      out.write("\t\t\t\t+\"<a role='menuitem' onclick='selectDownValue(\" + items[i].id +\",\\\"\" + items[i].value +\"\\\",\\\"\"+liId+\"\\\")'><font color='#000'>\" + items[i].value\r\n");
      out.write("\t\t\t\t+\"</font></a></li>\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.getElementById(liId).innerHTML=inn;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction selectDownValue(ke, val, targetInput){\r\n");
      out.write("\t\tvar ti1 = \"firm\" + targetInput;\r\n");
      out.write("\t\tvar ti2 = \"firm\" + targetInput + \"Value\";\r\n");
      out.write("\t\tdocument.getElementById(ti1).value=ke;\r\n");
      out.write("\t\tdocument.getElementById(ti2).value=val;\r\n");
      out.write("\t\tgoSearch();\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction goSearch() {\r\n");
      out.write("\t\t/* var pageId = document.getElementById('pageId').value;\r\n");
      out.write("\t\tvar firmcity = document.getElementById('firmcity').value;\r\n");
      out.write("\t\tvar firmcityValue = document.getElementById('firmcityValue').value;\r\n");
      out.write("\t\tvar firmstatus = document.getElementById('firmstatus').value;\r\n");
      out.write("\t\tvar firmstatusValue = document.getElementById('firmstatusValue').value; */\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tvar url = \"login/firmInformation1.do?\";//pageId=\" + pageId + \"&firmcityValue=\" + firmcityValue + \"&firmstatus=\" + firmstatus;\r\n");
      out.write("\t\tvar formId = \"finduserForm\";\r\n");
      out.write("\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\taddList(data.firmList);\r\n");
      out.write("\t\tdocument.getElementById(\"allNum\").innerText=data.allNum;\r\n");
      out.write("\t\taddpageNum(data.pageNum,\"u1\");\r\n");
      out.write("\t}\r\n");
      out.write("\t//增加列表\r\n");
      out.write("\tfunction addList(items){\r\n");
      out.write("\t\tvar j = 0;\r\n");
      out.write("\t\t$(\"#userTable tbody\").html(\"\");\r\n");
      out.write("\t\tfor(var i in items){\r\n");
      out.write("\t\t\tvar tr1 = document.createElement(\"tr\");\r\n");
      out.write("\t\t\ttr1.id = \"t\" + j;\r\n");
      out.write("\t\t\tdocument.getElementById(\"tbody\").appendChild(tr1);\r\n");
      out.write("\t\t\tdocument.getElementById(\"t\" + j).innerHTML = \"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].address+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"       \r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].lingyu+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].name+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].guimo+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].rongzi+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].shenqingren+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].zhiwei+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].phone+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].shenqingtime+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].teammember+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].status+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font color='#4F4F4F' style='font-size:14px;'>\"+items[i].fuwu+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<td class='textC'>\"//width:41px;\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<button type='button' style='height:41px !important;background-color:#3CBAFF;color:#FFF;' onclick='goView(\\\"\"+items[i].id+\"\\\")' class='btn dropdown-toggle' data-toggle='dropdown'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<font style='font-size:14px;'>查看</font>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"</button>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</td>\";\r\n");
      out.write("\t\t\tj = j + 1;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction addpageNum(items,pageId){\r\n");
      out.write("\t\tvar inn = \"\";\r\n");
      out.write("\t\tfor(var i = 1; i <= items; i++){\r\n");
      out.write("\t\t\tinn = inn + \"<li>\"\r\n");
      out.write("\t\t\t\t+\"<a href='#' onclick='getpage(\"+i+\")'>\"+i+\"</a>\"\r\n");
      out.write("\t\t\t\t+\"</li>\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.getElementById(pageId).innerHTML=inn;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction getpage(str) {\r\n");
      out.write("\t\tdocument.getElementById('pageId').value = str;\r\n");
      out.write("\t\tgoSearch();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goView(id){\r\n");
      out.write("\t\tvar url = \"login/sessionPutFirm.do\";\r\n");
      out.write("\t\tvar data = ajaxSumbitNoform(url, id);\r\n");
      out.write("\t\ttop.location.href='firm_all_information.jsp';\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("<body bgcolor=\"#FFF\" onload=\"init()\">\r\n");
      out.write("\t<form id=\"finduserForm\" style=\"height:95%;\">\r\n");
      out.write("\t<div style=\"width:100%;height:60px;\"></div>\r\n");
      out.write("\t<div style=\"width:100%;padding:20px 14%;\">\r\n");
      out.write("\t\t<table width=\"100%\">\r\n");
      out.write("\t\t\t<!-- <tr height=\"20px\"/> -->\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"180px\">\r\n");
      out.write("\t\t\t\t\t<div class=\"input-group\" style=\"width: 100%;\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"hidden\" id=\"firmcity\" name=\"firmcity\"/>\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" name=\"firmcityValue\" id=\"firmcityValue\" class=\"form-control\" placeholder=\"城市\" style=\"width: 120px;height:41px;\" readonly>\r\n");
      out.write("\t\t\t\t\t\t    <button type=\"button\" style=\"height:41px;width:41px;background-color:#3CBAFF;color:#FFF;\" class=\"btn dropdown-toggle\" id=\"dropdownMenu1\" data-toggle=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t        <span class=\"caret\"></span>\r\n");
      out.write("\t\t\t\t\t\t    </button>\r\n");
      out.write("\t\t\t\t\t\t    <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dropdownMenu1\" style=\"width: 90% !important\" id=\"city\">\r\n");
      out.write("\t\t\t\t\t\t        \r\n");
      out.write("\t\t\t\t\t\t    </ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"180px\">\r\n");
      out.write("\t\t\t\t\t<div class=\"input-group\" style=\"width: 100%;\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"hidden\" id=\"firmstatus\" name=\"firmstatus\"/>\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" name=\"firmstatusValue\" id=\"firmstatusValue\" class=\"form-control\" placeholder=\"状态\" style=\"width: 120px;height:41px;\" readonly>\r\n");
      out.write("\t\t\t\t\t\t    <button type=\"button\" style=\"height:41px;width:41px;background-color:#3CBAFF;color:#FFF;\" class=\"btn dropdown-toggle\" id=\"dropdownMenu1\" data-toggle=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t        <span class=\"caret\"></span>\r\n");
      out.write("\t\t\t\t\t\t    </button>\r\n");
      out.write("\t\t\t\t\t\t    <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dropdownMenu1\" style=\"width: 90% !important\" id=\"status\">\r\n");
      out.write("\t\t\t\t\t\t        \r\n");
      out.write("\t\t\t\t\t\t    </ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"firmSimpleName\" id=\"firmSimpleName\" class=\"form-control\" placeholder=\"公司简称\" style=\"max-width: 364px;min-width:120px;height:41px;\" onchange=\"goSearch()\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td/>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div style=\"width:100%;padding:20px 14%;\">\r\n");
      out.write("\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">\r\n");
      out.write("\t\t\t共\r\n");
      out.write("\t\t\t<font color=\"#3CBAFF\" style=\"font-size:20px;\" id=\"allNum\">140</font>\r\n");
      out.write("\t\t\t个匹配项，显示\r\n");
      out.write("\t\t\t<font color=\"#3CBAFF\" style=\"font-size:20px;\">1-20</font>\r\n");
      out.write("\t\t</font>\r\n");
      out.write("\t\t<br/>\r\n");
      out.write("\t\t<br/>\r\n");
      out.write("\t\t<table width=\"100%\" style=\"border:1px #CCCCCC solid;\" id=\"userTable\">\r\n");
      out.write("\t\t\t<thead>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">地区</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">领域</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">公司简称</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">公司规模</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">融资阶段</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">申请人</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">职位</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">电话</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">申请时间</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">团队成员</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">状态</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">服务期限</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"background:#E2E2E2;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">操作</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</thead>\r\n");
      out.write("\t\t\t<tbody id=\"tbody\">\r\n");
      out.write("\t\t\t</tbody>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div style=\"padding:0px 14%;\">\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"pageId\" id=\"pageId\" value=\"1\"/>\r\n");
      out.write("\t\t<ul class=\"pagination\" id=\"u1\" style=\"margin-top:10px;\">\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</form>\r\n");
      out.write("\t<table style=\"bottom:0px;width:100%;height:81px;background:#32373C;\" id=\"botom\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td class=\"textC\">\r\n");
      out.write("\t\t\t\t<font color=\"#F5F8F9\" style=\"font-size:14px;white-space: nowrap;\">\r\n");
      out.write("\t\t\t\t\t关于我们&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t使用攻略&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t法律声明&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t关注我们\r\n");
      out.write("\t\t\t\t</font>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
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
