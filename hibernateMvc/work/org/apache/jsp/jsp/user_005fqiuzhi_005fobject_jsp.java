/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2017-05-15 03:29:32 UTC
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

public final class user_005fqiuzhi_005fobject_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\tfunction init(){\r\n");
      out.write("\t\tgoSearch();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goSearch(){\r\n");
      out.write("\t\tdocument.getElementById('interviewtype').value=parent.document.getElementById('interviewtype').value;\r\n");
      out.write("\t\tvar url = \"firm/userqiuzhi2.do\";\r\n");
      out.write("\t\tvar formId = \"interviewForm\";\r\n");
      out.write("\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\tparent.document.getElementById('inviteId').value = data.inviteId;\r\n");
      out.write("\t\tdocument.getElementById('inviteId').value = data.inviteId;\r\n");
      out.write("\t\tadddiv(data.firmList);\r\n");
      out.write("\t\tif(data.firmList != undefined && data.firmList != ''){\r\n");
      out.write("\t\t\tparent.window.iframe2.location.href=\"user_qiuzhi_object_view.jsp\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goAllview(id){\r\n");
      out.write("\t\tparent.document.getElementById('inviteId').value=id;\r\n");
      out.write("\t\tparent.window.iframe2.location.href=\"user_qiuzhi_object_view.jsp\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction adddiv(items){\r\n");
      out.write("\t\tvar div1 = \"\";\r\n");
      out.write("\t\tfor(var i in items){\r\n");
      out.write("\t\t\tdiv1 = div1+\"<div class='getColor' onclick='goAllview(this.id)' onmouseover='changeColor3(this)' onmouseout='changeColor2(this)' style='width:100%;padding-top:15px;padding-left:20px;' id='\"+items[i].id+\"'>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<table style='width: 100%;'>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<td rowspan='4' width='40px'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"<div style='border-radius:50%; overflow:hidden;'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+\"<img src='\" + items[i].imgpath + \"' width='40px' height='40px'/>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t+\"</div>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<td />\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<td class='textL' style='padding-left:20px;'><font style='font-size:14px;color:#4F4F4F;'>\" +items[i].address+\"</font></td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<td class='textL' style='padding-left:20px;'><font style='font-size:14px;color:#4F4F4F;'>\"+items[i].job+\"</font></td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<td class='textL' style='padding-left:20px;'><font style='font-size:14px;color:#4F4F4F;'>\"+items[i].money+\"</font></td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</tr>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<tr height='20px'>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<td class='textC' colspan='2'><font style='font-size:14px;color:#4F4F4F;'>\"+items[i].time+\"</font></td>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"</tr>\"\r\n");
      out.write("\t\t\t\t\t\t+\"</table>\"\r\n");
      out.write("\t\t\t\t\t+\"</div>\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.body.innerHTML=div1;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor1(obj){\r\n");
      out.write("\t\tobj.style.background=\"#999999\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor2(obj){\r\n");
      out.write("\t\tobj.style.background=\"#FFF\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor3(obj){\r\n");
      out.write("\t\tobj.style.background=\"#E9F7E5\";\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("<style>\r\n");
      out.write("</style>\r\n");
      out.write("<body onload=\"init()\" style=\"overflow-x:hidden;\">\r\n");
      out.write("\t<form id=\"interviewForm\">\r\n");
      out.write("\t\t<input type=\"hidden\" id=\"interviewtype\" name=\"interviewtype\"/>\r\n");
      out.write("\t\t<input type=\"hidden\" id=\"inviteId\" name=\"inviteId\"/>\r\n");
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
