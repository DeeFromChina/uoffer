/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2017-05-15 03:35:46 UTC
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

public final class user_005fmanager_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tfunction init() {\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor1(der){\r\n");
      out.write("\t\tder.style.background=\"#777777\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor2(der){\r\n");
      out.write("\t\tder.style.background=\"#32373C\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction selectInterviewType(seqno){\r\n");
      out.write("\t\t$(\".triangle-left\").each(function () {\r\n");
      out.write("\t\t\tthis.setAttribute(\"class\",\"\");\r\n");
      out.write("        });\r\n");
      out.write("\t\tif(seqno == 1){\r\n");
      out.write("\t\t\tdocument.getElementById(\"type11\").setAttribute(\"class\",\"triangle-left\");\r\n");
      out.write("\t\t\tdocument.getElementById(\"interviewtype\").value = seqno;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(seqno == 2){\r\n");
      out.write("\t\t\tdocument.getElementById(\"type12\").setAttribute(\"class\",\"triangle-left\");\r\n");
      out.write("\t\t\tdocument.getElementById(\"interviewtype\").value = seqno;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(seqno == 3){\r\n");
      out.write("\t\t\tdocument.getElementById(\"type13\").setAttribute(\"class\",\"triangle-left\");\r\n");
      out.write("\t\t\tdocument.getElementById(\"interviewtype\").value = seqno;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(seqno == 4){\r\n");
      out.write("\t\t\tdocument.getElementById(\"type14\").setAttribute(\"class\",\"triangle-left\");\r\n");
      out.write("\t\t\tdocument.getElementById(\"interviewtype\").value = seqno;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(seqno == 5){\r\n");
      out.write("\t\t\tdocument.getElementById(\"type15\").setAttribute(\"class\",\"triangle-left\");\r\n");
      out.write("\t\t\tdocument.getElementById(\"interviewtype\").value = seqno;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(seqno == 6){\r\n");
      out.write("\t\t\tdocument.getElementById(\"type16\").setAttribute(\"class\",\"triangle-left\");\r\n");
      out.write("\t\t\tdocument.getElementById(\"interviewtype\").value = seqno;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tgoSearch();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction addtags(typeId,typemsg){\r\n");
      out.write("\t\tdocument.getElementById(typeId).innerHTML=\"<font style='font-size:14px;color:#4F4F4F;'>\"+typemsg+\"</font>\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goSearch(){\r\n");
      out.write("\t\t//window.iframe1.location.href=\"maininterview_object.jsp\";\r\n");
      out.write("\t}\r\n");
      out.write("\t$(function(){\r\n");
      out.write("        $('a[data-toggle=\"tab\"]').on('shown.bs.tab', function (e) {\r\n");
      out.write("            // 获取已激活的标签页的名称\r\n");
      out.write("            var activeTab = $(e.target).text();\r\n");
      out.write("            // 获取前一个激活的标签页的名称\r\n");
      out.write("            var previousTab = $(e.relatedTarget).text();\r\n");
      out.write("            $(\".active-tab span\").html(activeTab);\r\n");
      out.write("            $(\".previous-tab span\").html(previousTab);\r\n");
      out.write("        });\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("<body bgcolor=\"#FFF\" onload=\"init()\" style=\"overflow-y:hidden;\">\r\n");
      out.write("\t<input type=\"hidden\" id=\"firmId\" name=\"firmId\"/>\r\n");
      out.write("\t<div style=\"width:100%;min-width:1000px;height:60px;background: #32373C;position:absolute;top:expression(documentElement.scrollTop + 'px');position:fixed;z-index:9999;\">\r\n");
      out.write("\t\t<table style=\"width:100%;white-space: nowrap;\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"19%\" style=\"padding-left:14%;\"><a href=\"#\" onclick=\"javascript:top.location.href='homepage.jsp'\"><img src=\"../img/U-Offerlogo.png\" width=\"109px\" height=\"26px\"></a></td>\r\n");
      out.write("\t\t\t\t<td width=\"5%\"/>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t    <button type=\"button\" style=\"font-size:14px;width:103px;height:60px !important;color:#F5F8F9;background-color:#777777;\" class=\"btn dropdown-toggle\" id=\"dropdownMenu3\" data-toggle=\"dropdown\" onclick=\"javascript:top.location.href='user_manager.jsp'\">\r\n");
      out.write("\t\t\t\t    \t<font>候选人</font>\r\n");
      out.write("\t\t\t\t    </button>\r\n");
      out.write("\t\t\t\t    <button type=\"button\" style=\"font-size:14px;width:103px;height:60px !important;color:#F5F8F9;background-color:#32373C;\" class=\"btn dropdown-toggle\" id=\"dropdownMenu2\" data-toggle=\"dropdown\" onmouseover=\"changeColor1(this)\" onmouseout=\"changeColor2(this)\" onclick=\"javascript:top.location.href='firm_manager.jsp'\">\r\n");
      out.write("\t\t\t\t    \t<font>企业</font>\r\n");
      out.write("\t\t\t\t    </button>\r\n");
      out.write("\t\t\t\t    <button type=\"button\" style=\"font-size:14px;width:103px;height:60px !important;color:#F5F8F9;background-color:#32373C;\" class=\"btn dropdown-toggle\" id=\"dropdownMenu2\" data-toggle=\"dropdown\" onmouseover=\"changeColor1(this)\" onmouseout=\"changeColor2(this)\" onclick=\"javascript:top.location.href='account_manager.jsp'\">\r\n");
      out.write("\t\t\t\t    \t<font>数据统计</font>\r\n");
      out.write("\t\t\t\t    </button>\r\n");
      out.write("\t\t\t    </td>\r\n");
      out.write("\t\t\t     <td class=\"textR\" style=\"width:24%;padding-right:10%\">\r\n");
      out.write("\t\t\t    \t<button type=\"button\" style=\"height:60px !important;width:80px !important;color:#F5F8F9;background-color:#32373C;\"class=\"btn dropdown-toggle\" id=\"dropdownMenu3\" data-toggle=\"dropdown\" onmouseover=\"changeColor1(this)\" onmouseout=\"changeColor2(this)\" onclick=\"javascript:top.location.href='stafflogin.jsp'\">\r\n");
      out.write("\t\t\t\t    \t<font>退出</font>\r\n");
      out.write("\t\t\t\t    </button>\r\n");
      out.write("\t\t\t    </td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<br/>\r\n");
      out.write("\t<!-- <div style=\"width:100%;height:10px\"></div> -->\r\n");
      out.write("    <div id=\"firminformation\" style=\"background:#FFF;height:100%;padding-top:40px;\">\r\n");
      out.write("        <iframe height=\"100%\" width=\"100%\" src=\"user_information.jsp\" scrolling=\"auto\" frameborder=\"0\" marginheight=\"0px\" marginwidth=\"0px\" style=\"background:#FFF;\" id=\"iframe1\" name=\"iframe1\"></iframe>\r\n");
      out.write("    </div>\r\n");
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
