/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2017-05-15 03:28:34 UTC
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

public final class accout_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("</head>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tvar address;\r\n");
      out.write("\tfunction init(){\r\n");
      out.write("\t\tgoSearch();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goSearch(){\r\n");
      out.write("\t\tvar url = \"manager/accoutPage1.do\";\r\n");
      out.write("\t\tvar formId = \"caozuoForm\";\r\n");
      out.write("\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\taddmessage(data.accoutList);\r\n");
      out.write("\t\taddselect(data.types,\"types\");\r\n");
      out.write("\t\tdocument.getElementById('num').innerText = data.num;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction changeColor1(obj){\r\n");
      out.write("\t\tobj.style.background=\"#999999\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction changeColor2(obj){\r\n");
      out.write("\t\tobj.style.background=\"#FFF\";\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction openWindow(ret){\r\n");
      out.write("\t\tdocument.getElementById(\"address\").innerHTML = ret.name;\r\n");
      out.write("\t\tdocument.getElementById(\"address\").innerHTML = ret.name;\r\n");
      out.write("\t\tif(ret.id == 'newaccount'){\r\n");
      out.write("\t\t\tdocument.getElementById(\"newPage\").style.display=\"\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"editPage\").style.display=\"none\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"quanxianPage\").style.display=\"none\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"caozuotype\").value='1';\r\n");
      out.write("\t\t}else if(ret.name == 'quanxian'){\r\n");
      out.write("\t\t\tdocument.getElementById(\"newPage\").style.display=\"none\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"editPage\").style.display=\"none\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"quanxianPage\").style.display=\"\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"caozuotype\").value='3';\r\n");
      out.write("\t\t\tdocument.getElementById(\"userId\").value=ret.id;\r\n");
      out.write("\t\t}else{\r\n");
      out.write("\t\t\tdocument.getElementById(\"newPage\").style.display=\"none\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"editPage\").style.display=\"\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"quanxianPage\").style.display=\"none\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"caozuotype\").value='2';\r\n");
      out.write("\t\t\tdocument.getElementById(\"userId\").value=ret.id;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.getElementById(\"new\").click();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction checkAddAccount() {\r\n");
      out.write("\t\tif(!checkInput('accountName',\"账号名称\",\"20\",false)) return false;\r\n");
      out.write("\t\tif(!checkInput('accountEmail',\"邮箱\",\"30\",false)) return false;\r\n");
      out.write("\t\tif(!checkInput('accountPsw',\"密码\",\"16\",false)) return false;\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goSumbit(ispass){\r\n");
      out.write("\t\tif (ispass) {\r\n");
      out.write("\t\t\tif (!checkAddAccount()) return;\r\n");
      out.write("\t\t\tvar accountPsw = document.getElementById('accountPsw').value;\r\n");
      out.write("\t\t\tif (accountPsw.length < 6) {\r\n");
      out.write("\t\t\t\talert('请将密码设置在6-16为之间！');\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tvar url = \"manager/editaccout1.do\";\r\n");
      out.write("\t\t\tvar formId = \"caozuoForm\";\r\n");
      out.write("\t\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\t\tif (data == 'success') {\r\n");
      out.write("\t\t\t\talert('修改成功！');\r\n");
      out.write("\t\t\t\twindow.location.reload();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\talert('数据出错！');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse {\r\n");
      out.write("\t\t\tdocument.getElementById('accountName').value = \"\";\r\n");
      out.write("\t\t\tdocument.getElementById('accountEmail').value = \"\";\r\n");
      out.write("\t\t\tdocument.getElementById('accountPsw').value = \"\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction checkResetPswValue() {\r\n");
      out.write("\t\tif(!checkInput('newpsw',\"新密码\",\"16\",false)) return false;\r\n");
      out.write("\t\tif(!checkInput('comfirmpsw',\"确认密码\",\"16\",false)) return false;\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goChangepsw(ispass){\r\n");
      out.write("\t\tif (ispass) {\r\n");
      out.write("\t\t\tif(!checkResetPswValue()) return;\r\n");
      out.write("\t\t\tvar newpsw = document.getElementById('newpsw').value;\r\n");
      out.write("\t\t\tvar comfirmpsw = document.getElementById('comfirmpsw').value;\r\n");
      out.write("\t\t\tif (newpsw == comfirmpsw){\r\n");
      out.write("\t\t\t\tvar url = \"user/updateOfferUserPassword1.do\";\r\n");
      out.write("\t\t\t\tvar formId = \"caozuoForm\";\r\n");
      out.write("\t\t\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\t\t\tif (data == 'success') {\r\n");
      out.write("\t\t\t\t\talert('修改成功！');\r\n");
      out.write("\t\t\t\t\twindow.location.reload();\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\telse {\r\n");
      out.write("\t\t\t\t\talert('数据出错！');\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\talert('密码不一致，请重新输入！');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse {\r\n");
      out.write("\t\t\tdocument.getElementById('newpsw').value = \"\";\r\n");
      out.write("\t\t\tdocument.getElementById('comfirmpsw').value = \"\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goguwenstatus(status,id){\r\n");
      out.write("\t\tvar url = \"changeguwenStatus/user.do?status=\"+status+\"&id=\"+id;\r\n");
      out.write("\t\tvar formId = \"caozuoForm\";\r\n");
      out.write("\t\tvar data = ajaxSumbit(url, formId);\r\n");
      out.write("\t\tif (data == 'success'){\r\n");
      out.write("\t\t\tif (status == '0') {\r\n");
      out.write("\t\t\t\talert(\"已禁用成功！\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\talert(\"启用成功！\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse {\r\n");
      out.write("\t\t\talert(\"操作错误！\");\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tgoSearch();\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction addmessage(items){\r\n");
      out.write("\t\tvar me = \"<tr height='40px' style='border:1px #D2D2D2 solid;'>\"\r\n");
      out.write("\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>账户名称</font>\"\r\n");
      out.write("\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>邮箱</font>\"\r\n");
      out.write("\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>密码</font>\"\r\n");
      out.write("\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>类型</font>\"\r\n");
      out.write("\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>操作</font>\"\r\n");
      out.write("\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t+\"</tr>\";\r\n");
      out.write("\t\t\t//alert(items[0].type);\r\n");
      out.write("\t\tfor(var i in items){\r\n");
      out.write("\t\t\tvar caozuo = \"<a href='#' id='\"+items[i].id+\"' name='\"+items[i].address+\"' onclick='openWindow(this)'><font style='font-size:14px;' color='#00B38A'>修改密码</font></a>\";\r\n");
      out.write("\t\t\tif(items[i].type == '顾问'){//items[i].type == '管理员'\r\n");
      out.write("\t\t\t\tcaozuo = caozuo + \"&nbsp;<font style='font-size:14px;' color='#00B38A'>|</font>&nbsp;\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"<a href='#' id='\"+items[i].id+\"' name='quanxian' onclick='openWindow(this)'><font style='font-size:14px;' color='#00B38A'>设置权限</font></a>\"\r\n");
      out.write("\t\t\t\t\t\t\t\t+\"&nbsp;<font style='font-size:14px;' color='#00B38A'>|</font>&nbsp;\";\r\n");
      out.write("\t\t\t\tif(items[i].status == 4){\r\n");
      out.write("\t\t\t\t\tcaozuo = caozuo +\"<a href='#' id='\"+items[i].id+\"' onclick='goguwenstatus(0,\"+items[i].id+\")'><font style='font-size:14px;' color='#00B38A'>禁用</font></a>\"\r\n");
      out.write("\t\t\t\t}else{\r\n");
      out.write("\t\t\t\t\tcaozuo = caozuo +\"<a href='#' id='\"+items[i].id+\"' onclick='goguwenstatus(4,\"+items[i].id+\")'><font style='font-size:14px;' color='#00B38A'>启用</font></a>\"\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tme = me + \"<tr height='57px' style='border:1px #D2D2D2 solid;'>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>\"+items[i].name+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>\"+items[i].address+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>\"+items[i].password+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>\"+items[i].type+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t\t+\"<td class='textC'>\"\r\n");
      out.write("\t\t\t\t\t\t\t+\"<font style='font-size:14px;' color='#4F4F4F'>\"+caozuo+\"</font>\"\r\n");
      out.write("\t\t\t\t\t\t+\"</td>\"\r\n");
      out.write("\t\t\t\t\t+\"</tr>\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.getElementById(\"message\").innerHTML= me;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction addselect(items,selectId){\r\n");
      out.write("\t\tfor(var i in items){\r\n");
      out.write("\t\t\tdocument.getElementById(selectId).options.add(new Option(items[i].value,items[i].id));\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction goSaveType(){\r\n");
      out.write("\t\tvar id = document.getElementById(\"userId\").value;\r\n");
      out.write("\t\tvar url = \"manager/saveAccoutPageType.do?id=\"+id;\r\n");
      out.write("\t\tvar types = document.getElementById(\"types\").value;\r\n");
      out.write("\t\tvar data = ajaxSumbitNoform(url, types);\r\n");
      out.write("\t\tif(data == 'success'){\r\n");
      out.write("\t\t\talert(\"保存成功！\");\r\n");
      out.write("\t\t\twindow.location.reload();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction editType(id){\r\n");
      out.write("\t\tvar url = \"manager/accoutPageType.do\";\r\n");
      out.write("\t\tvar data = ajaxSumbitNoform(url, id);\r\n");
      out.write("\t\tdocument.getElementById(\"types\").value = data;\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("<style>\r\n");
      out.write("</style>\r\n");
      out.write("<body bgColor=\"#FFF\" onload=\"init()\">\r\n");
      out.write("\t<table style=\"width:100%;\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td style=\"padding:30px 20px;\" colspan=\"2\">\r\n");
      out.write("\t\t\t\t<font style=\"font-size:17px;\" color='#4F4F4F'>管理账号</font>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td style=\"padding:5px 20px;\">\r\n");
      out.write("\t\t\t\t<font style=\"font-size:14px;\" color='#4F4F4F'>已保存账户信息<font color=\"#979797\">（<span id=\"num\">2</span>条）</font></font>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td class=\"textR\" style=\"padding-right:40px;\">\r\n");
      out.write("\t\t\t\t<a href=\"#\" id=\"newaccount\" onclick=\"openWindow(this)\"><font style=\"font-size:14px;\" color=\"#00B38A\">新增账号</font></a>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td style=\"padding:5px 20px;\" colspan=\"2\">\r\n");
      out.write("\t\t\t\t<table style=\"width:100%;\" id=\"message\">\r\n");
      out.write("\r\n");
      out.write("<!-- \t\t\t\t\t<tr height=\"40px\" style=\"border:1px #666666 solid;\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<font size=\"2\">洋洋</font> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<font size=\"2\">172537643@qq.com</font> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<font size=\"2\">aiuwgf</font> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<font size=\"2\">飞顾问</font> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<font size=\"2\">修改密码|设置|禁用</font> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t</tr> -->\r\n");
      out.write("<!-- \t\t\t\t\t<tr height=\"40px\" style=\"border:1px #666666 solid;\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<font size=\"2\">洋洋</font> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<font size=\"2\">172537643@qq.com</font> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<font size=\"2\">aiuwgf</font> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<font size=\"2\">飞顾问</font> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t<td class=\"textC\"> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<a href=\"#\" onclick=\"openWindow(this)\" id=\"2\"><font size=\"2\">修改密码</font></a> -->\r\n");
      out.write("<!-- \t\t\t\t\t\t</td> -->\r\n");
      out.write("<!-- \t\t\t\t\t</tr> -->\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t<button class=\"btn btn-primary btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"display:none;\" id=\"new\"></button>\r\n");
      out.write("\t<form id=\"caozuoForm\">\r\n");
      out.write("\t<input type=\"hidden\" id=\"userId\" name=\"userId\"/>\r\n");
      out.write("\t<input type=\"hidden\" id=\"caozuotype\" name=\"caozuotype\"/>\r\n");
      out.write("\t<div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("\t    <div class=\"modal-dialog\">\r\n");
      out.write("\t        <div class=\"modal-content\" style=\"width:600px;display:none;\" id=\"newPage\">\r\n");
      out.write("\t            <div class=\"modal-header\">\r\n");
      out.write("\t                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("\t                <h4 class=\"modal-title\" id=\"myModalLabel\">新增账号</h4>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t            <div class=\"modal-body\">\r\n");
      out.write("\t            \t<table style=\"width:100%\">\r\n");
      out.write("\t            \t\t<tr>\r\n");
      out.write("\t            \t\t\t<td class=\"textR\" style=\"width:180px;padding:10px 10px;\">账号名称</td>\r\n");
      out.write("\t            \t\t\t<td><input id=\"accountName\" name=\"accountName\" type=\"text\" style=\"height:30px;width:300px;\"/></td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t\t<tr>\r\n");
      out.write("\t            \t\t\t<td class=\"textR\" style=\"width:180px;padding:10px 10px;\">邮箱</td>\r\n");
      out.write("\t            \t\t\t<td><input id=\"accountEmail\" name=\"accountEmail\" type=\"text\" style=\"height:30px;width:300px;\"/></td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t\t<tr>\r\n");
      out.write("\t            \t\t\t<td class=\"textR\" style=\"width:180px;padding:10px 10px;\">密码</td>\r\n");
      out.write("\t            \t\t\t<td><input id=\"accountPsw\" name=\"accountPsw\" type=\"password\" style=\"height:30px;width:300px;\"/></td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t\t<tr height=\"80px\">\r\n");
      out.write("\t            \t\t\t<td colspan=\"2\" class=\"textC\">\r\n");
      out.write("\t            \t\t\t\t<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"\" onclick=\"goSumbit(true)\" style=\"width:100px;background:#00B38A;color:#FFF;\">保存</button>\r\n");
      out.write("\t            \t\t\t\t<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" onclick=\"goSumbit(false)\" style=\"width:100px;background:#FFF;color:#00B38A;\">取消</button>\r\n");
      out.write("\t            \t\t\t</td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t</table>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t        <div class=\"modal-content\" style=\"width:600px;display:none;\" id=\"editPage\">\r\n");
      out.write("\t            <div class=\"modal-header\">\r\n");
      out.write("\t                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("\t                <h4 class=\"modal-title\" id=\"myModalLabel\">修改密码</h4>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t            <div class=\"modal-body\">\r\n");
      out.write("\t            \t<table style=\"width:100%\">\r\n");
      out.write("\t            \t\t<tr>\r\n");
      out.write("\t            \t\t\t<td class=\"textR\" style=\"width:180px;padding:10px 10px;\">邮箱</td>\r\n");
      out.write("\t            \t\t\t<td id =\"address\"></td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t\t<tr>\r\n");
      out.write("\t            \t\t\t<td class=\"textR\" style=\"width:180px;padding:10px 10px;\">新密码</td>\r\n");
      out.write("\t            \t\t\t<td><input id=\"newpsw\" name=\"newpsw\" type=\"password\" style=\"height:30px;width:300px;\"/></td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t\t<tr>\r\n");
      out.write("\t            \t\t\t<td class=\"textR\" style=\"width:180px;padding:10px 10px;\">确认密码</td>\r\n");
      out.write("\t            \t\t\t<td><input id=\"comfirmpsw\" name=\"comfirmpsw\" type=\"password\" style=\"height:30px;width:300px;\"/></td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t\t<tr height=\"80px\">\r\n");
      out.write("\t            \t\t\t<td colspan=\"2\" class=\"textC\">\r\n");
      out.write("\t            \t\t\t\t<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"\" onclick=\"goChangepsw(true)\" style=\"width:100px;background:#00B38A;color:#FFF;\">保存</button>\r\n");
      out.write("\t            \t\t\t\t<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" onclick=\"goChangepsw(false)\" style=\"width:100px;background:#FFF;color:#00B38A;\">取消</button>\r\n");
      out.write("\t            \t\t\t</td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t</table>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t        <div class=\"modal-content\" style=\"width:600px;display:none;\" id=\"quanxianPage\">\r\n");
      out.write("\t            <div class=\"modal-header\">\r\n");
      out.write("\t                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("\t                <h4 class=\"modal-title\" id=\"myModalLabel\">权限设置</h4>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t            <div class=\"modal-body\">\r\n");
      out.write("\t            \t<table style=\"width:100%\">\r\n");
      out.write("\t            \t\t<tr>\r\n");
      out.write("\t            \t\t\t<td class=\"textR\" style=\"width:180px;padding:10px 10px;\">类型</td>\r\n");
      out.write("\t            \t\t\t<td id =\"address\">\r\n");
      out.write("\t            \t\t\t\t<select style=\"height:30px;width:300px\" id=\"types\" name=\"types\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t\t<tr height=\"80px\">\r\n");
      out.write("\t            \t\t\t<td colspan=\"2\" class=\"textC\">\r\n");
      out.write("\t            \t\t\t\t<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" onclick=\"goSaveType()\" style=\"width:100px;background:#00B38A;color:#FFF;\">保存</button>\r\n");
      out.write("\t            \t\t\t\t<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" style=\"width:100px;background:#FFF;color:#00B38A;\">取消</button>\r\n");
      out.write("\t            \t\t\t</td>\r\n");
      out.write("\t            \t\t</tr>\r\n");
      out.write("\t            \t</table>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t</div>\r\n");
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
