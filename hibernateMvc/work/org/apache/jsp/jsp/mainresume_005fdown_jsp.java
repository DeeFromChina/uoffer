/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2017-04-18 09:24:58 UTC
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

public final class mainresume_005fdown_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/common/header.jsp", Long.valueOf(1492258952040L));
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
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<script src=\"../js/jquery-3.1.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"../js/ajaxfileupload.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"../js/ajaxSubmit.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"../js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"../js/Carousel.js\"></script>\r\n");
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
      out.write("</script>\r\n");
      out.write("<body>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("<title></title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n");
      out.write("<style>\r\n");
      out.write(".smailfont{\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write(".fontcol{\r\n");
      out.write("\tpadding-left: 20px;\r\n");
      out.write("\tcolor:#666666;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\t//头部\r\n");
      out.write("\tfunction changeColor1(der){\r\n");
      out.write("\t\tder.style.background=\"#777777\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor2(der){\r\n");
      out.write("\t\tder.style.background=\"#32373C\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction booleanInfot(url){\r\n");
      out.write("\t\talert(\"请等候我们的审核！\");\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("<body bgcolor=\"#FFFFFF\" onload=\"init()\" height=\"852px\">\r\n");
      out.write("\t<form id=\"loginForm\">\r\n");
      out.write("\t<div style=\"width:100%;height:60px;background:#32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;\">\r\n");
      out.write("\t\t<table style=\"width:100%;white-space: nowrap;\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td style=\"width:19%;padding-left:13%;\"><img src=\"../img/U-Offerlogo.png\" width=\"109px\" height=\"26px\"></td>\r\n");
      out.write("\t\t\t    <td width=\"4%\"/>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t    <button type=\"button\" style=\"height:60px !important;background-color:#32373C;\" class=\"btn dropdown-toggle\" id=\"dropdownMenu3\" data-toggle=\"dropdown\" class=\"btn dropdown-toggle\" id=\"dropdownMenu3\" data-toggle=\"dropdown\" onmouseover=\"changeColor1(this)\" onmouseout=\"changeColor2(this)\" onclick=\"booleanInfot('interview.jsp')\">\r\n");
      out.write("\t\t\t\t    \t<font color=\"#F5F8F9\" style=\"font-size:14px;\">面试邀请</font>\r\n");
      out.write("\t\t\t\t    </button>\r\n");
      out.write("\t\t\t\t    <button type=\"button\" style=\"height:60px !important;background-color:#32373C;\"class=\"btn dropdown-toggle\" id=\"dropdownMenu2\" data-toggle=\"dropdown\" onmouseover=\"changeColor1(this)\" onmouseout=\"changeColor2(this)\" onclick=\"booleanInfot('resume_edit.jsp')\">\r\n");
      out.write("\t\t\t\t    \t<font color=\"#F5F8F9\" style=\"font-size:14px;\">我的简历</font>\r\n");
      out.write("\t\t\t\t    </button>\r\n");
      out.write("\t\t\t    </td>\r\n");
      out.write("\t\t\t    <td width=\"19%\">\r\n");
      out.write("\t\t\t\t    <button type=\"button\" style=\"height:60px !important;background-color:#32373C;\" class=\"btn dropdown-toggle\" id=\"dropdownMenu1\" data-toggle=\"dropdown\" onmouseover=\"changeColor1(this)\" onmouseout=\"changeColor2(this)\" onclick=\"javascript:top.location.href='personal_settings.jsp'\">\r\n");
      out.write("\t\t\t\t    \t<font color=\"#F5F8F9\" style=\"font-size:14px;\">个人设置</font>\r\n");
      out.write("\t\t\t\t    </button>\r\n");
      out.write("\t\t\t\t    <button type=\"button\" style=\"height:60px !important;background-color:#32373C;\" class=\"btn dropdown-toggle\" id=\"dropdownMenu4\" data-toggle=\"dropdown\" onmouseover=\"changeColor1(this)\" onmouseout=\"changeColor2(this)\" onclick=\"javascript:top.location.href='login.jsp'\">\r\n");
      out.write("\t\t\t\t    \t<font color=\"#F5F8F9\" style=\"font-size:14px;\">退出</font>\r\n");
      out.write("\t\t\t\t    </button>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div style=\"width:100%;height:32%;\"></div>\r\n");
      out.write("\t<center>\r\n");
      out.write("\t\t<div style=\"background: #FFFFFF;width:100%;height:43%;\">\r\n");
      out.write("\t\t\t<table width=\"100%\" height=\"100%\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"padding:10px 0px;\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size:20px;width:40%\" color=\"#4F4F4F\">系统默认有效推荐周期为1个月，到期后如果希望再收到企业面试邀请，请重新提交申请</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"26%\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"padding:10px 0px;\">\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" style=\"height:41px;width:200px;background-color:#00B38A;\" class=\"btn dropdown-toggle\">\r\n");
      out.write("\t\t\t\t\t\t\t<font style=\"font-size:14px;\" color=\"#FFF\">重新申请</font>\r\n");
      out.write("\t\t\t\t    \t</button>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"57%\"/>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div style=\"height: 2px; width: 80%; background-color: #DDDDDD;\"></div>\r\n");
      out.write("\t\t<div style=\"background: #FFFFFF;\">\r\n");
      out.write("\t\t\t<table style=\"border-collapse: separate; border-spacing: 10px; width: 100%;\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"padding:10px 0px;\" colspan=\"4\"><font size=\"2\">完善简历</font></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"smailfont textR\" valign=\"top\" width=\"43%\" style=\"padding-right:20px;\">简历完成度</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"width:203px;\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"progress\" style=\"width:200px;height:15px;\">\r\n");
      out.write("\t\t\t\t\t\t    <div class=\"progress-bar\" role=\"progressbar\" aria-valuenow=\"60\" \r\n");
      out.write("\t\t\t\t\t\t        aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 40%;background:#00B389;border:1px #00B389 solid;\">\r\n");
      out.write("\t\t\t\t\t\t        <span class=\"sr-only\"></span>\r\n");
      out.write("\t\t\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"smailfont textL\" valign=\"top\" style=\"width:20px;\">40%</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"smailfont textL\" valign=\"top\"></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"smailfont textC\" colspan=\"4\">\r\n");
      out.write("\t\t\t\t\t\t<font color=\"#666666\">简历的完善程度影响您能收获的机会，也是我们审核时重要的依据。<a href=\"#\" onclick=\"javascript:document.getElementById('team').click();\"><font color=\"#00B389\" style=\"text-decoration: underline;\">看看我们的审核标准</font></a></font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"20px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"4\">\r\n");
      out.write("\t\t\t\t\t\t<table width=\"100%\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td rowspan=\"6\" class=\"textR\" width=\"50%\"><img src=\"../img/kefu.png\" width=\"100px\" style=\"border:2px solid #BBBBBB;padding:10px 20px;border-radius:13px;\"/></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"textL fontcol smailfont\" width=\"50%\">我是张丽，你的职业顾问</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"textL fontcol smailfont\">期待着与您交流工作、求职中的想法</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"textL fontcol smailfont\">电话：</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"textL fontcol smailfont\">微信：</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"textL fontcol smailfont\">QQ:</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"textL fontcol smailfont\">邮箱：</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<br />\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div style=\"height: 2px; width: 80%; background-color: #DDDDDD;\"></div>\r\n");
      out.write("\t\t<div style=\"background: #FFFFFF; width: 80%;\">\r\n");
      out.write("\t\t\t<br />\r\n");
      out.write("\t\t\t<table\r\n");
      out.write("\t\t\t\tstyle=\"border-collapse: separate; border-spacing: 10px; width: 100%;\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"33%\"/>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"padding:10px 0px;\"><font size=\"4\" style=\"font-weight:bold;\">看看申请后会发生什么</font></td>\r\n");
      out.write("\t\t\t\t\t<td width=\"33%\"/>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\"><img src=\"../img/project.png\" width=\"100px\"/></td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\"><img src=\"../img/email.png\" width=\"100px\"/></td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\"><img src=\"../img/aguy.png\" width=\"180px\"/></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\">\r\n");
      out.write("\t\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t\t\t<div style=\"width:125px;margin-top:-20px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<font size=\"2\">您的简历向您感兴趣的企业展示2周</font>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</center>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\">\r\n");
      out.write("\t\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t\t\t<div style=\"width:145px;font-size:1;margin-top:-20px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<font size=\"2\">企业向您发出面试邀请，并声明职位及薪酬</font>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</center>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\">\r\n");
      out.write("\t\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t\t\t<div style=\"width:147px;font-size:1;margin-top:-10px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<font size=\"2\">选择您满意的参加面试，挑选满意的offer入职</font>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</center>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<br />\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div style=\"height: 2px; width: 80%; background-color: #DDDDDD;\"></div>\r\n");
      out.write("\t\t<div style=\"background: #FFFFFF; width: 80%;\">\r\n");
      out.write("\t\t\t<br />\r\n");
      out.write("\t\t\t<table\r\n");
      out.write("\t\t\t\tstyle=\"border-collapse: separate; border-spacing: 10px; width: 100%;\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"33%\"/>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\" style=\"padding:10px 0px;\"><font size=\"4\" style=\"font-weight:bold;\">最近在U-offer招聘的企业</font></td>\r\n");
      out.write("\t\t\t\t\t<td width=\"33%\"/>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\"><img src=\"../img/firm_logo3.png\" width=\"100px\"/></td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\"><img src=\"../img/firm_logo2.png\" width=\"100px\"/></td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\"><img src=\"../img/firm_logo1.png\" width=\"100px\"/></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr height=\"10px\"/>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\"><img src=\"../img/firm_logo5.png\" width=\"100px\"/></td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\"><img src=\"../img/firm_logo6.png\" width=\"100px\"/></td>\r\n");
      out.write("\t\t\t\t\t<td class=\"textC\"><img src=\"../img/firm_logo4.png\" width=\"100px\"/></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<br />\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</center>\r\n");
      out.write("\t</form>\r\n");
      out.write("\t<button class=\"btn btn-primary btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"display:none;\" id=\"team\"></button>\r\n");
      out.write("\t<div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\" style=\"margin-top:100px;\">\r\n");
      out.write("\t\t<div class=\"modal-dialog\">\r\n");
      out.write("\t\t\t<div class=\"modal-content\">\r\n");
      out.write("\t\t\t\t<div class=\"modal-header\">\r\n");
      out.write("\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">\r\n");
      out.write("\t\t\t\t\t\t&times;\r\n");
      out.write("\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t<center><font style=\"font-size:24px;\" color=\"#4F4F4F\">筛选标准</font></center>\r\n");
      out.write("\t\t\t\t\t<!-- <h4 class=\"modal-title\" id=\"myModalLabel\">\r\n");
      out.write("\t\t\t\t\t</h4> -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"modal-body\" style=\"overflow-y:auto;height:350px;\">\r\n");
      out.write("\t\t\t\t\t<iframe src=\"shenhe.html\" height=\"100%\" width=\"100%\" scrolling=\"auto\" frameborder=\"0\" marginheight=\"0px\" marginwidth=\"0px\" style=\"background:#FFF;\"></iframe>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
