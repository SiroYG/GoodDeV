/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.21
 * Generated at: 2019-09-19 13:44:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1562034500000L));
    _jspx_dependants.put("jar:file:/C:/Users/창민/Documents/GitHub/GoodDeV/ChanMin/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/GoodDeV/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("    <!-- Required meta tags-->\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <meta name=\"description\" content=\"Colorlib Templates\">\r\n");
      out.write("    <meta name=\"author\" content=\"Colorlib\">\r\n");
      out.write("    <meta name=\"keywords\" content=\"Colorlib Templates\">\r\n");
      out.write("    <!-- Title Page-->\r\n");
      out.write("    <title>Sign In :: </title>\r\n");
      out.write("    <!-- Icons font CSS-->\r\n");
      out.write("    <link href=\"/cloud/resources/vendor/mdi-font/css/material-design-iconic-font.min.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("    <link href=\"/cloud/resources/vendor/font-awesome-4.7/css/font-awesome.min.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("    <!-- Font special for pages-->\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i\" rel=\"stylesheet\">\r\n");
      out.write("    <!-- Vendor CSS-->\r\n");
      out.write("    <link href=\"/cloud/resources/vendor/select2/select2.min.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("    <link href=\"/cloud/resources/vendor/datepicker/daterangepicker.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("    <!-- Main CSS-->\r\n");
      out.write("    <link href=\"/cloud/resources/css/Member.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("    <!-- script -->\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery-ui.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("    $(function(){\r\n");
      out.write("    \t\r\n");
      out.write("    \t\t$('#memberId').on('keyup',function(){\r\n");
      out.write("    \t\t\t\r\n");
      out.write("    \t\t\t\tvar memberId = $('#memberId').val();\r\n");
      out.write("    \t\t\t\t$.ajax({\r\n");
      out.write("  \t\t\t\t\t\turl : 'overlap',\r\n");
      out.write("  \t\t\t\t\t\ttype : 'get',\r\n");
      out.write("  \t\t\t\t\t\tdata : 'memberId='+memberId,\r\n");
      out.write("  \t\t\t\t\t\tsuccess : function(res){\r\n");
      out.write("\t\t\t\t\t\t\tif(res=='success'){\r\n");
      out.write("\t\t\t\t\t\t\t\t$('#overlap').html('해당아이디는 사용가능합니다.');\r\n");
      out.write("\t\t\t\t\t\t\t}else{\r\n");
      out.write("\t\t\t\t\t\t\t\t$('#overlap').html('해당아이디는 존재합니다.');\r\n");
      out.write("\t\t\t\t\t\t\t}  \t\t\t\t\t\t\r\n");
      out.write("  \t\t\t\t\t\t\t\r\n");
      out.write("  \t\t\t\t\t\t}\r\n");
      out.write("    \t\t\t\t\t\r\n");
      out.write("    \t\t\t\t})\r\n");
      out.write("  \r\n");
      out.write("    \t\t})\r\n");
      out.write("    \t\r\n");
      out.write("    });\r\n");
      out.write("\tfunction signupbtn(){\r\n");
      out.write("\t\t\tvar id =document.getElementById(\"memberId\");\r\n");
      out.write("\t\t\tvar pw =document.getElementById(\"pw\");\r\n");
      out.write("\t\t\tvar memberName =document.getElementById(\"memberName\");\r\n");
      out.write("\t\t\tvar email =document.getElementById(\"email\");\r\n");
      out.write("\t\t\tvar phoneNum =document.getElementById(\"phoneNum\");\r\n");
      out.write("\t\t\tvar memberType =document.getElementById(\"memberType\");\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif (id.value.length==0 || id.value ==\"\") {\r\n");
      out.write("\t\t\t\talert(\"ID를 입력해주세요.\");\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif (pw.value.length==0 || pw.value ==\"\") {\r\n");
      out.write("\t\t\t\t\talert(\"PW를 입력해주세요.\");\r\n");
      out.write("\t\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif (memberName.value.length==0 || memberName.value ==\"\") {\r\n");
      out.write("\t\t\t\talert(\"유저이름을 입력해주세요.\");\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\tif (email.value.length==0 || email.value ==\"\") {\r\n");
      out.write("\t\t\t\talert(\"이메일를 입력해주세요.\");\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif (phoneNum.value.length==0 || phoneNum.value ==\"\") {\r\n");
      out.write("\t\t\t\talert(\"핸드폰 번호를 입력해주세요.\");\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"#signin-form\").submit();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\r\n");
      out.write("    </script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"page-wrapper bg-red p-t-180 p-b-100 font-robo\">\r\n");
      out.write("        <div class=\"wrapper wrapper--w960\">\r\n");
      out.write("            <div class=\"card card-2\">\r\n");
      out.write("                <div class=\"card-heading-register\"></div>\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("                    <h2 class=\"title\">회원가입</h2>\r\n");
      out.write("                    <form action=\"signupform\" method=\"POST\" id=\"signin-form\">\r\n");
      out.write("                        <div class=\"input-group\"><input class=\"input--style-2\" type=\"text\" placeholder=\"아이디\" name=\"memberId\" id=\"memberId\">\r\n");
      out.write("                        \t\t\t\t\t\t\t<span id=\"overlap\"></span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"input-group\"> <input class=\"input--style-2\" type=\"password\" placeholder=\"비밀번호\" name=\"memberPw\" id=\"pw\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                         <div class=\"input-group\"><input class=\"input--style-2\" type=\"text\" placeholder=\"이름\" name=\"memberName\" id=\"memberName\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"input-group\"><input class=\"input--style-2\" type=\"text\" placeholder=\"이메일(abc123@def.com)\" name=\"email\" id=\"email\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"input-group\"> <input class=\"input--style-2\" type=\"text\" placeholder=\"연락처(010-1234-5678)\" name=\"phoneNum\" id=\"phoneNum\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"input-group\"><div class=\"rs-select2 js-select-simple select--no-search\">\r\n");
      out.write("                                <select name=\"memberType\" id=\"memberType\">\r\n");
      out.write("                                    <option value=\"client\" selected>일반회원</option>\r\n");
      out.write("                                    <option value=\"inventor\">창업자 / 창업희망자</option>\r\n");
      out.write("                                    <option\tvalue=\"enp\">특허 보유자(개인 / 기업)</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                                <div class=\"select-dropdown\"></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"p-t-30\">\r\n");
      out.write("                            <button class=\"btn btn--radius btn--green\" type=\"submit\" onclick=\"signupbtn()\">가입하기</button> &nbsp;\r\n");
      out.write("                            <a class=\"btn btn--radius btn--green\" href=\"/cloud/member/home\">취소</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- Jquery JS-->\r\n");
      out.write("    <script src=\"/cloud/resources/vendor/jquery/jquery.min.js\"></script>\r\n");
      out.write("    <!-- Vendor JS-->\r\n");
      out.write("    <script src=\"/cloud/resources/vendor/select2/select2.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/vendor/datepicker/moment.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/vendor/datepicker/daterangepicker.js\"></script>\r\n");
      out.write("    <!-- Main JS-->\r\n");
      out.write("    <script src=\"/cloud/resources/js/global.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
