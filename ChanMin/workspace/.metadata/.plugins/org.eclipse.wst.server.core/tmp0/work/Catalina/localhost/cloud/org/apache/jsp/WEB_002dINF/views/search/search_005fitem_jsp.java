/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.21
 * Generated at: 2019-10-01 12:53:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.search;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class search_005fitem_jsp extends org.apache.jasper.runtime.HttpJspBase
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

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
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <title>Search :: Search Item</title>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/open-iconic-bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/animate.css\">\r\n");
      out.write("    \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/owl.carousel.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/owl.theme.default.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/magnific-popup.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/aos.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/ionicons.min.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/flaticon.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/icomoon.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/search.css\">\r\n");
      out.write("     \r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery-ui.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    <script>\r\n");
      out.write("    $(function(){\r\n");
      out.write("    \t\r\n");
      out.write("    \t$('#searchBtn').on('click',function(){\r\n");
      out.write("    \t\tvar keyWord = $('#itemWord').val();\r\n");
      out.write("    \t\tvar tag = '';\r\n");
      out.write("    \t\t$.ajax({\r\n");
      out.write("    \t\t\turl : \"/cloud/PythonServlet/searchGoee\",\r\n");
      out.write("    \t\t\ttype : 'get',\r\n");
      out.write("    \t\t\tdata : {\r\n");
      out.write("    \t\t\t\t\"keyWord\" : keyWord \r\n");
      out.write("    \t\t\t},\r\n");
      out.write("    \t\t\tsuccess : function(res){\r\n");
      out.write("    \t\t\t\t$.each(res,function(i,item){\r\n");
      out.write("    \t\t\t\t\tif(item!='finish'){\r\n");
      out.write("    \t\t\t\t\ttag += '<tr>'\r\n");
      out.write("    \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t//tag += '<td>'+'<img src =\"'+item+' \"> </td>'\t \t\r\n");
      out.write("    \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\ttag += '<td>'+'<img src =\"'+ item + '\"></td>'\r\n");
      out.write("    \t\t\t\t\ttag += '</tr>'\r\n");
      out.write("    \t\t\t\t\t}\r\n");
      out.write("    \t\t\t\t})\r\n");
      out.write("    \t\t\t\t$('#god').html(tag);\r\n");
      out.write("    \t\t\t}\r\n");
      out.write("    \t\t\t\r\n");
      out.write("    \t\t\t\r\n");
      out.write("    \t\t\t\r\n");
      out.write("    \t\t})\r\n");
      out.write("    \t\t\r\n");
      out.write("    \t})\r\n");
      out.write("    \t\r\n");
      out.write("    \t\r\n");
      out.write("    \r\n");
      out.write("    });\r\n");
      out.write("    </script>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body data-spy=\"scroll\" data-target=\".site-navbar-target\" data-offset=\"300\">\r\n");
      out.write("\t  \r\n");
      out.write("\t  <img alt=\"\" src=\":image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs%3D\">\r\n");
      out.write("   <nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target\" id=\"ftco-navbar\">\r\n");
      out.write("\t    <div class=\"container\">\r\n");
      out.write("\t      <a class=\"navbar-brand\" href=\"/cloud/home\">Mainlogo</a>\r\n");
      out.write("\t      <button class=\"navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("\t        <span class=\"oi oi-menu\"></span> Menu\r\n");
      out.write("\t      </button>\r\n");
      out.write("\t      <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\r\n");
      out.write("\t        <ul class=\"navbar-nav nav ml-auto\">\r\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"/cloud/home\" class=\"nav-link\"><span>Home</span></a></li>\r\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"/cloud/member/goPatent\" class=\"nav-link\"><span>특허 / 검색</span></a></li>\r\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"/cloud/board/boardListForm\" class=\"nav-link\"><span>Q & A 게시판</span></a></li>\r\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"/cloud/survey/surveyListForm\" class=\"nav-link\"><span>블라인드 테스트</span></a></li>\r\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"/cloud/funding/gofunding\" class=\"nav-link\"><span>크라우드 펀딩</span></a></li>\r\n");
      out.write("\t          \r\n");
      out.write("\t  \t\t\t ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t </ul>\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t  </nav>\r\n");
      out.write("\r\n");
      out.write("\t  <section class=\"hero-wrap hero-wrap-2\" style=\"background-image: url('images/about_10-1.jpg');\" data-stellar-background-ratio=\"0.5\">\r\n");
      out.write("      <div class=\"overlay\"></div>\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <div class=\"row no-gutters slider-text align-items-end justify-content-center\">\r\n");
      out.write("          <div class=\"col-md-9 ftco-animate pb-5 text-center\">\r\n");
      out.write("            <h1 class=\"mb-3 bread\">Search Item</h1>\r\n");
      out.write("            <p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"index\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span class=\"mr-2\"><a href=\"#\">검색 분류 <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>제품/서비스 검색 <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("<section class=\"ftco-section\" id=\"blog-section\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <div class=\"row justify-content-center mb-5 pb-5\">\r\n");
      out.write("          <div class=\"col-md-10 heading-section text-center ftco-animate\">\r\n");
      out.write("            <span class=\"subheading\"></span>\r\n");
      out.write("            <h2 class=\"mb-4\">제품/서비스 검색</h2>\r\n");
      out.write("            <p>실제 출시되어 있는 제품 및 서비스를 검색할 수 있습니다.</p><br>\r\n");
      out.write("            <hr class=\"hr_navy\">\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("   <div class=\"search-container\">\r\n");
      out.write("  <!-- <img alt=\"\" src=\"https://shopping-phinf.pstatic.net/main_8221695/82216959865.jpg?type=f140\"> --> \r\n");
      out.write("  <form action=\"\" method=\"get\" id=\"\">\r\n");
      out.write("      <label for=\"patent-word\" class=\"col-sm-2 col-form-label\">아이템검색</label>\r\n");
      out.write("      <input type=\"text\" class=\"patent-word\" id=\"itemWord\">&nbsp;&nbsp;&nbsp;\r\n");
      out.write("      <button type=\"button\" id=\"searchBtn\" class=\"btn btn-outline-primary btn-rounded waves-effect\">검색하기</button>\r\n");
      out.write("  </form>\r\n");
      out.write("  <hr class=\"hr_navy\">\r\n");
      out.write("   </div>\r\n");
      out.write("         <div class=\"\">\r\n");
      out.write("             <!--result;-->\r\n");
      out.write("             <table id=\"god\">\r\n");
      out.write("             \r\n");
      out.write("             </table>\r\n");
      out.write("         </div>\r\n");
      out.write("          </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("     <footer class=\"ftco-footer ftco-section\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <div class=\"row mb-5\">\r\n");
      out.write("          <div class=\"col-md\">\r\n");
      out.write("            <div class=\"ftco-footer-widget mb-4\">\r\n");
      out.write("              <h2 class=\"ftco-heading-2\">About <span>SupporterS</span></h2>\r\n");
      out.write("              <p>창업자가 궁금해하는 것, <br>필요로 하는 것, <br>필요로 할 것들을 최대한 지원하기 위해 만든 사이트입니다.</p>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-md\">\r\n");
      out.write("            <div class=\"ftco-footer-widget mb-4 ml-md-4\">\r\n");
      out.write("              <h2 class=\"ftco-heading-2\">바로가기</h2>\r\n");
      out.write("              <ul class=\"list-unstyled\">\r\n");
      out.write("                <li><a href=\"/cloud/home\"><span class=\"icon-long-arrow-right mr-2\"></span>Home</a></li>\r\n");
      out.write("                <li><a href=\"/cloud/member/goPatent\"><span class=\"icon-long-arrow-right mr-2\"></span>검색 및 특허 관련</a></li>\r\n");
      out.write("                <li><a href=\"/cloud/board/boardListForm\"><span class=\"icon-long-arrow-right mr-2\"></span>Q & A 게시판</a></li>\r\n");
      out.write("                <li><a href=\"/cloud/survey/surveyListForm\"><span class=\"icon-long-arrow-right mr-2\"></span>블라인드 테스트</a></li>\r\n");
      out.write("                <li><a href=\"/cloud/funding/fundingListForm\"><span class=\"icon-long-arrow-right mr-2\"></span>크라우드 펀딩</a></li>\r\n");
      out.write("                <li><a href=\"/cloud/home#contact-section\"><span class=\"icon-long-arrow-right mr-2\"></span>공식 연락처</a></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-md\">\r\n");
      out.write("             <div class=\"ftco-footer-widget mb-4\">\r\n");
      out.write("              <h2 class=\"ftco-heading-2\">검색 및 특허 관련</h2>\r\n");
      out.write("              <ul class=\"list-unstyled\">\r\n");
      out.write("                <li><a href=\"/cloud/member/searchGo\"><span class=\"icon-long-arrow-right mr-2\"> 특허 검색</span></a></li>\r\n");
      out.write("                <li><a href=\"/cloud/member/goPatent\"><span class=\"icon-long-arrow-right mr-2\"> 제품 검색</span></a></li>\r\n");
      out.write("                 <li><a href=\"/cloud/member/goPatent\"><span class=\"icon-long-arrow-right mr-2\"> 특허 출원 신청</span></a></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-md\">\r\n");
      out.write("            <div class=\"ftco-footer-widget mb-4\">\r\n");
      out.write("            \t<h2 class=\"ftco-heading-2\">찾아오는 길</h2>\r\n");
      out.write("            \t<div class=\"block-23 mb-0\">\r\n");
      out.write("\t              <ul>\r\n");
      out.write("\t                <li><span class=\"icon icon-map-marker\"></span><span class=\"text\">4th floor, 513, Yeongdong-daero, Gangnam-gu, Seoul, Republic of Korea</span></li>\r\n");
      out.write("\t                <li><a href=\"#\"><span class=\"icon icon-phone\"></span><span class=\"text\">+82 02 6000 0114</span></a></li>\r\n");
      out.write("\t                <li><a href=\"#\"><span class=\"icon icon-envelope\"></span><span class=\"text\">info@yourdomain.com</span></a></li>\r\n");
      out.write("\t              </ul>\r\n");
      out.write("\t            </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("    \r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  <!-- loader -->\r\n");
      out.write("  <div id=\"ftco-loader\" class=\"show fullscreen\"><svg class=\"circular\" width=\"48px\" height=\"48px\"><circle class=\"path-bg\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke=\"#eeeeee\"/><circle class=\"path\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke-miterlimit=\"10\" stroke=\"#F96D00\"/></svg></div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <script src=\"/cloud/resources/js/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/jquery-migrate-3.0.1.min.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/popper.min.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/jquery.waypoints.min.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/jquery.stellar.min.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/owl.carousel.min.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/aos.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/jquery.animateNumber.min.js\"></script>\r\n");
      out.write("  <script src=\"/cloud/resources/js/scrollax.min.js\"></script>\r\n");
      out.write("  \r\n");
      out.write("  <script src=\"/cloud/resources/js/main.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("  </body>\r\n");
      out.write("</html>");
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

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f0_reused = false;
    try {
      _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f0.setParent(null);
      // /WEB-INF/views/search/search_item.jsp(82,7) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId==null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t\t<li style=\"margin-left: 20px;\" class=\"nav-item cta\"><a\r\n");
          out.write("\t\t\t\t\t\thref=\"/cloud/member/gologin\" class=\"nav-link\">로그인</a></li>\r\n");
          out.write("\t\t\t\t\t<li style=\"margin-left: 20px;\" class=\"nav-item cta\"><a\r\n");
          out.write("\t\t\t\t\t\thref=\"/cloud/member/gosign\" class=\"nav-link\">회원가입</a></li>\r\n");
          out.write("\t\t\t\t");
          int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      _jspx_th_c_005fif_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f1_reused = false;
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent(null);
      // /WEB-INF/views/search/search_item.jsp(88,4) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId!=null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t\t<li style=\"margin-left: 20px;\" class=\"nav-item cta\">\r\n");
          out.write("\t\t\t\t\t<li class=\"nav-item\"><a href=\"/cloud/member/Mypage\" class=\"nav-link\"><span>마이페이지</span></a></li>\r\n");
          out.write("\t\t\t\t\t<a class=\"nav-link\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginType}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("님, 로그아웃 </a></li>\r\n");
          out.write("\t\t\t\t\t<!-- <li style=\"margin-left: 20px;\" class=\"nav-item cta\"><a\r\n");
          out.write("\t\t\t\t\t\thref=\"/cloud/member/logout\" class=\"nav-link\">로그아웃</a></li> -->\r\n");
          out.write("\t\t\t\t");
          int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      _jspx_th_c_005fif_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
    }
    return false;
  }
}
