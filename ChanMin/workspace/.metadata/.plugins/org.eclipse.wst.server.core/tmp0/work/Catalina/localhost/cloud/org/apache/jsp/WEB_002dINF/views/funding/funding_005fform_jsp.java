/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.21
 * Generated at: 2019-10-06 13:41:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.funding;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class funding_005fform_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/C:/Users/창민/Documents/GitHub/GoodDeV/ChanMin/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/GoodDeV/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt-1_0-rt.tld", Long.valueOf(1153352682000L));
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
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody;

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
    _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.release();
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
      out.write("\r\n");
      java.util.Date toDay = null;
      toDay = (java.util.Date) _jspx_page_context.getAttribute("toDay", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (toDay == null){
        toDay = new java.util.Date();
        _jspx_page_context.setAttribute("toDay", toDay, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <title>SupporterS :: Create Funding</title>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/open-iconic-bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/animate.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/owl.carousel.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/owl.theme.default.min.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/aos.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/ionicons.min.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/flaticon.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/icomoon.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/cloud/resources/css/funding.css\">\r\n");
      out.write("    \r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery-ui.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("     \t<script>\r\n");
      out.write("     \t $(function(){\r\n");
      out.write("     \t\t\r\n");
      out.write("     \t\t$('#fundBtn').on('click',function(){\r\n");
      out.write("     \t\t\tvar fundingTitle = $('#fundingTitle').val();\r\n");
      out.write("     \t\t\tvar fundingContents = $('#fundingContents').val();\r\n");
      out.write("     \t\t\tvar upload = $('#upload').val();\r\n");
      out.write("     \t\t\tvar itemGoalPrice = $('#itemGoalPrice').val();\r\n");
      out.write("     \t\t\tif(fundingTitle.length== 0||fundingTitle==''){\r\n");
      out.write("     \t\t\t\t\talert('제목을 반드시 입력하시오!');\r\n");
      out.write("     \t\t\t\t\treturn false;\r\n");
      out.write("     \t\t\t}\r\n");
      out.write("     \t\t\tif(fundingContents.length== 0||fundingContents==''){\r\n");
      out.write(" \t\t\t\t\talert('내용을 반드시  입력하시오!');\r\n");
      out.write(" \t\t\t\t\treturn false;\r\n");
      out.write(" \t\t\t\t}\t\r\n");
      out.write("     \t\t\tif(upload.length== 0||upload==''){\r\n");
      out.write(" \t\t\t\t\talert('파일을 반드시 첨부하시오!');\r\n");
      out.write(" \t\t\t\t\treturn false;\r\n");
      out.write(" \t\t\t\t}\t\r\n");
      out.write("     \t\t\tif(itemGoalPrice.length== 0||itemGoalPrice==''){\r\n");
      out.write(" \t\t\t\t\talert('목표금액을  반드시 입력하시오!');\r\n");
      out.write(" \t\t\t\t\treturn false;\r\n");
      out.write(" \t\t\t\t}\t\r\n");
      out.write("     \t\t\tif(isNaN(itemGoalPrice)){\r\n");
      out.write("     \t\t\t\talert('반드시 숫자로 입력하시오!');\r\n");
      out.write(" \t\t\t\t\treturn false;\r\n");
      out.write("     \t\t\t}\r\n");
      out.write("     \t\t\t$('#writeform').submit();\r\n");
      out.write("     \t\t})\r\n");
      out.write("     \t\t\r\n");
      out.write("     \t});\r\n");
      out.write(" \r\n");
      out.write("\t</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body data-spy=\"scroll\" data-target=\".site-navbar-target\" data-offset=\"300\">\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target\" id=\"ftco-navbar\">\r\n");
      out.write("\t    <div class=\"container\">\r\n");
      out.write("\t      <a class=\"navbar-brand\" href=\"/cloud/home\">SupporterS</a>\r\n");
      out.write("\t      <button class=\"navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("\t        <span class=\"oi oi-menu\"></span> Menu\r\n");
      out.write("\t      </button>\r\n");
      out.write("\t      <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\r\n");
      out.write("\t        <ul class=\"navbar-nav nav ml-auto\">\r\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"/cloud/home\" class=\"nav-link\"><span>Home</span></a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a href=\"/cloud/member/goPatent\" class=\"nav-link\"><span>특허 / 검색</span></a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a href=\"/cloud/board/boardListForm\" class=\"nav-link\"><span>Q & A 게시판</span></a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a href=\"/cloud/survey/goSurvey_list\" class=\"nav-link\"><span>블라인드 테스트</span></a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a href=\"/cloud/funding/fundingListForm\" class=\"nav-link\"><span>크라우드 펀딩</span></a></li>\r\n");
      out.write("\t  \t\t\t ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t </ul>\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t  </nav>\r\n");
      out.write("\r\n");
      out.write("    <section class=\"hero-wrap hero-wrap-2\" style=\"background-image: url('/cloud/resources/images/about_7.jpg');\" data-stellar-background-ratio=\"0.5\">\r\n");
      out.write("        <div class=\"overlay\"></div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row no-gutters slider-text align-items-end justify-content-center\">\r\n");
      out.write("                <div class=\"col-md-9 ftco-animate pb-5 text-center\">\r\n");
      out.write("                    <h1 class=\"mb-3 bread\">Crowd Funding</h1>\r\n");
      out.write("                    <p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"home\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span class=\"mr-2\"><a href=\"#\">크라우드 펀딩 <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>펀딩 진행하기 <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <section class=\"ftco-section\" id=\"blog-section\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row justify-content-center mb-5 pb-5\">\r\n");
      out.write("                <div class=\"col-md-10 heading-section text-center ftco-animate\">\r\n");
      out.write("                    <h2 class=\"mb-4\">크라우드 펀딩</h2>\r\n");
      out.write("                    <p>소비자와 함께 사업을 시작할 수 있습니다.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <form action=\"/cloud/funding/fundingWrite\" method=\"post\" id=\"writeform\" enctype=\"multipart/form-data\" >\r\n");
      out.write("            <div class=\"write_table\">\r\n");
      out.write("                <div class=\"form-group row\">\r\n");
      out.write("                    <label for=\"\" class=\"col-sm-2 col-form-label\"><span><b>작성자</b></span></label>\r\n");
      out.write("                    <div class=\"col-sm-10\">\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" name=\"memberId\" placeholder=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group row\">\r\n");
      out.write("                    <label for=\"\" class=\"col-sm-2 col-form-label\"><span><b>진행 시작 날짜</b></span></label>\r\n");
      out.write("                    <div class=\"col-sm-10\">\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"fundingStartDate\" id=\"startdate\" value=\"");
      if (_jspx_meth_fmt_005fformatDate_005f0(_jspx_page_context))
        return;
      out.write("\" readonly=\"readonly\" onchange=\"call()\">\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"form-group row\">\r\n");
      out.write("                    <label for=\"\" class=\"col-sm-2 col-form-label\"><span><b>진행 마감 날짜</b></span></label>\r\n");
      out.write("                    <div class=\"col-sm-10\">\r\n");
      out.write("                        <input type=\"date\" class=\"form-control\" name=\"fundingDueDate\" id=\"enddate\" value=\"");
      if (_jspx_meth_fmt_005fformatDate_005f1(_jspx_page_context))
        return;
      out.write("\" oninput=\"call()\" onchange=\"call()\" >\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" id=\"days\" size=\"6\">\r\n");
      out.write("                <div class=\"form-group row\">\r\n");
      out.write("                    <label for=\"\" class=\"col-sm-2 col-form-label\"><span><b>제목</b></span></label>\r\n");
      out.write("                    <div class=\"col-sm-10\">\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"fundingTitle\" id=\"fundingTitle\" placeholder=\"펀딩 타이틀\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"form-group row\">\r\n");
      out.write("                    <label for=\"\" class=\"col-sm-2 col-form-label\"><span><b>세부내용</b></span></label>\r\n");
      out.write("                    <div class=\"col-sm-10\">\r\n");
      out.write("                        <textarea rows=\"8\" cols=\"112\" name=\"fundingContents\" id=\"fundingContents\" class=\"form-control\"></textarea>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"form-group row\">\r\n");
      out.write("                    <label for=\"\" class=\"col-sm-2 col-form-label\"><span><b>파일 업로드</b></span></label>\r\n");
      out.write("                    <div class=\"col-sm-10\">\r\n");
      out.write("                    \r\n");
      out.write("                        <input type=\"file\" class=\"form-control\" name=\"upload\" id=\"upload\" placeholder=\"\" multiple>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group row\">\r\n");
      out.write("                    <label for=\"\" class=\"col-sm-2 col-form-label\"><span><b>펀딩 목표금액</b></span></label>\r\n");
      out.write("                    <div class=\"col-sm-10\">\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"itemGoalPrice\" id=\"itemGoalPrice\" placeholder=\"0,000,000\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("               \r\n");
      out.write("                <a id=\"fundBtn\" class=\"btns btn-3\"><span class=\"white\">등록하기</span></a> \r\n");
      out.write("                &nbsp;&nbsp; <a href=\"/cloud/funding/fundingListForm\" class=\"btns btn-3-red\"><span class=\"white\">취소</span></a>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </form>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <footer class=\"ftco-footer ftco-section\">\r\n");
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
      out.write("                <li><a href=\"/cloud/member/\"><span class=\"icon-long-arrow-right mr-2\"> 제품 검색</span></a></li>\r\n");
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
      out.write("<script>\r\n");
      out.write("function call(){\r\n");
      out.write("\t    var sdd = document.getElementById(\"startdate\").value;\r\n");
      out.write("\t    var edd = document.getElementById(\"enddate\").value;\r\n");
      out.write("\t    var ar1 = sdd.split('-');\r\n");
      out.write("\t    var ar2 = edd.split('-');\r\n");
      out.write("\t    var da1 = new Date(ar1[0], ar1[1], ar1[2]);\r\n");
      out.write("\t    var da2 = new Date(ar2[0], ar2[1], ar2[2]);\r\n");
      out.write("\t    var dif = da2 - da1;\r\n");
      out.write("\t    var cDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨\r\n");
      out.write("\t    var cMonth = cDay * 30;// 월 만듬\r\n");
      out.write("\t    var cYear = cMonth * 12; // 년 만듬\r\n");
      out.write("\t if(sdd && edd){\r\n");
      out.write("\r\n");
      out.write("\t    document.getElementById('days').value = parseInt(dif/cDay);\r\n");
      out.write("\t    var days =document.getElementById('days');\r\n");
      out.write("\t    var edd = document.getElementById(\"enddate\").value;\r\n");
      out.write("\t    if(days.value<0){\r\n");
      out.write("\t  \t  alert(\"종료일은 시작일보다 늦어야합니다.\");\r\n");
      out.write("\t  \t  $('#enddate').val('');\r\n");
      out.write("\t  \t  return\r\n");
      out.write("\t    }\r\n");
      out.write("\t }\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("     <!-- loader -->\r\n");
      out.write("  <div id=\"ftco-loader\" class=\"show fullscreen\"><svg class=\"circular\" width=\"48px\" height=\"48px\"><circle class=\"path-bg\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke=\"#eeeeee\"/><circle class=\"path\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke-miterlimit=\"10\" stroke=\"#6082cc\"/></svg></div>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery-migrate-3.0.1.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery.waypoints.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery.stellar.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/owl.carousel.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/aos.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery.animateNumber.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/bootstrap-datepicker.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/jquery.timepicker.min.js\"></script>\r\n");
      out.write("    <script src=\"/cloud/resources/js/scrollax.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"/cloud/resources/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body></html>\r\n");
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
      // /WEB-INF/views/funding/funding_form.jsp(80,7) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId==null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t  \t\t\t <li style=\"margin-left: 20px;\" class=\"nav-item cta\">\r\n");
          out.write("                    <div class=\"dropdown show\">\r\n");
          out.write("                        <a class=\"btn btn-primary py-3 px-4\" href=\"#\" role=\"button\" id=\"dropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
          out.write("                            <span class=\"member-btn\">로그인/회원가입</span>\r\n");
          out.write("                        </a>\r\n");
          out.write("\r\n");
          out.write("                        <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuLink\">\r\n");
          out.write("                            <a class=\"dropdown-item\" href=\"/cloud/member/gologin\"><span class=\"member-btn\">로그인</span></a>\r\n");
          out.write("                            <a class=\"dropdown-item\" href=\"/cloud/member/gosign\"><span class=\"member-btn\">회원가입</span></a>\r\n");
          out.write("                            <a class=\"dropdown-item\" href=\"/cloud/member/gofindid\"><span class=\"member-btn\">아이디/비밀번호 찾기</span></a>\r\n");
          out.write("                        </div>\r\n");
          out.write("                    </div>\r\n");
          out.write("                    </li>\r\n");
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
      // /WEB-INF/views/funding/funding_form.jsp(96,4) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId!=null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t<li style=\"margin-left: 20px;\" class=\"nav-item cta\">\r\n");
          out.write("\t\t\t\t<div class=\"dropdown show\">\r\n");
          out.write("                        <a class=\"btn btn-primary py-3 px-4\" href=\"#\" role=\"button\" id=\"dropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
          out.write("                            <span class=\"member-btn\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginType}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("님</span>\r\n");
          out.write("                        </a>\r\n");
          out.write("\r\n");
          out.write("                        <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuLink\">\r\n");
          out.write("                            <a class=\"dropdown-item\" href=\"/cloud/member/goMypage\">마이페이지</a>\r\n");
          out.write("                            <a class=\"dropdown-item\" href=\"/cloud/member/goupdate\">회원 정보 수정</a>\r\n");
          out.write("                            <a class=\"dropdown-item\" href=\"/cloud/member/logout\">로그아웃</a>\r\n");
          out.write("                        </div>\r\n");
          out.write("                    </div>\r\n");
          out.write("\t\t\t\t</li>\r\n");
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

  private boolean _jspx_meth_fmt_005fformatDate_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatDate
    org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag _jspx_th_fmt_005fformatDate_005f0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag) _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag.class);
    boolean _jspx_th_fmt_005fformatDate_005f0_reused = false;
    try {
      _jspx_th_fmt_005fformatDate_005f0.setPageContext(_jspx_page_context);
      _jspx_th_fmt_005fformatDate_005f0.setParent(null);
      // /WEB-INF/views/funding/funding_form.jsp(149,110) name = value type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatDate_005f0.setValue((java.util.Date) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${toDay}", java.util.Date.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      // /WEB-INF/views/funding/funding_form.jsp(149,110) name = pattern type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatDate_005f0.setPattern("yyyy-MM-dd");
      int _jspx_eval_fmt_005fformatDate_005f0 = _jspx_th_fmt_005fformatDate_005f0.doStartTag();
      if (_jspx_th_fmt_005fformatDate_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.reuse(_jspx_th_fmt_005fformatDate_005f0);
      _jspx_th_fmt_005fformatDate_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_fmt_005fformatDate_005f0, _jsp_getInstanceManager(), _jspx_th_fmt_005fformatDate_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_fmt_005fformatDate_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatDate
    org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag _jspx_th_fmt_005fformatDate_005f1 = (org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag) _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag.class);
    boolean _jspx_th_fmt_005fformatDate_005f1_reused = false;
    try {
      _jspx_th_fmt_005fformatDate_005f1.setPageContext(_jspx_page_context);
      _jspx_th_fmt_005fformatDate_005f1.setParent(null);
      // /WEB-INF/views/funding/funding_form.jsp(157,106) name = value type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatDate_005f1.setValue((java.util.Date) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${toDay}", java.util.Date.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      // /WEB-INF/views/funding/funding_form.jsp(157,106) name = pattern type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatDate_005f1.setPattern("yyyy-MM-dd");
      int _jspx_eval_fmt_005fformatDate_005f1 = _jspx_th_fmt_005fformatDate_005f1.doStartTag();
      if (_jspx_th_fmt_005fformatDate_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.reuse(_jspx_th_fmt_005fformatDate_005f1);
      _jspx_th_fmt_005fformatDate_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_fmt_005fformatDate_005f1, _jsp_getInstanceManager(), _jspx_th_fmt_005fformatDate_005f1_reused);
    }
    return false;
  }
}