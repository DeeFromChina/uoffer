/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2017-05-15 07:04:25 UTC
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

public final class tuijian_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<style>\r\n");
      out.write("option {\r\n");
      out.write("\tcolor:#4F4F4F;\r\n");
      out.write("\tfont-size:14px;\r\n");
      out.write("}\r\n");
      out.write("select {\r\n");
      out.write("\tcolor:#4F4F4F;\r\n");
      out.write("\tfont-size:14px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tfunction init(){\r\n");
      out.write("\t\tgoSearch();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goSearch(){\r\n");
      out.write("\t\tvar url = \"manager/tuijianPage1.do\";\r\n");
      out.write("\t\tvar formId = \"tuijianForm\";\r\n");
      out.write("\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\taddselect(data.daysList,\"days\");\r\n");
      out.write("\t\taddselect(data.clocksList,\"clocks\");\r\n");
      out.write("\t\tsetvalue(\"days\",data.days);\r\n");
      out.write("\t\tsetvalue(\"clocks\",data.clocks);\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor1(obj){\r\n");
      out.write("\t\tobj.style.background=\"#999999\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor2(obj){\r\n");
      out.write("\t\tobj.style.background=\"#FFF\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goSumbit(){\r\n");
      out.write("\t\tvar url = \"manager/savetuijian1.do\";\r\n");
      out.write("\t\tvar formId = \"tuijianForm\";\r\n");
      out.write("\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\tif(data == 'success'){\r\n");
      out.write("\t\t\talert(\"保存成功\");\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction addselect(items,selectId){\r\n");
      out.write("\t\tfor(var i in items){\r\n");
      out.write("\t\t\tdocument.getElementById(selectId).options.add(new Option(items[i].value,items[i].id));\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction setvalue(id,val) {\r\n");
      out.write("\t\t document.getElementById(id).value=val;\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("<style>\r\n");
      out.write("</style>\r\n");
      out.write("<body bgColor=\"#FFF\" onload=\"init()\">\r\n");
      out.write("\t<form id=\"tuijianForm\">\r\n");
      out.write("\t<table style=\"width:100%;\">\r\n");
      out.write("\t\t<tr height=\"25px\"/>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td class=\"textC\" style=\"width:24%;font-size:17px;color:#4F4F4F\">推荐设置</td>\r\n");
      out.write("\t\t\t<td width=\"104px\"/>\r\n");
      out.write("\t\t\t<td/>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr height=\"72px\"/>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td/>\r\n");
      out.write("\t\t\t<td class=\"textR\" style=\"padding-right:17px;\">\r\n");
      out.write("\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">推荐相隔天数</font>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\t\t\t\t<select style=\"height:37px;width:300px;border:1px #CCCCCC solid;\" id=\"days\" name=\"days\">\r\n");
      out.write("\t\t\t\t</select>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr height=\"16px\"/>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td/>\r\n");
      out.write("\t\t\t<td class=\"textR\" style=\"padding-right:17px;\">\r\n");
      out.write("\t\t\t\t<font style=\"font-size:14px;\" color=\"#4F4F4F\">推荐时点</font>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\t\t\t\t<select style=\"height:37px;width:300px;border:1px #CCCCCC solid;color:14px;\" id=\"clocks\" name=\"clocks\">\r\n");
      out.write("\t\t\t\t</select>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr height=\"45px\"/>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td/>\r\n");
      out.write("\t\t\t<td/>\r\n");
      out.write("\t\t\t<td style=\"padding-left:30px;\">\r\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"btn btn-primary\" onclick=\"goSumbit()\" data-toggle=\"button\"\r\n");
      out.write("\t\t\t\tstyle=\"background-color: #00B38A; border-color: #00B38A; width: 180px; height: 41px;\">\r\n");
      out.write("\t\t\t\t保存</button>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t</form>\r\n");
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
