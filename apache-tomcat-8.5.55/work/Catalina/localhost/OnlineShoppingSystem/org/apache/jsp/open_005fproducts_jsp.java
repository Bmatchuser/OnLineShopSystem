/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.55
 * Generated at: 2021-05-14 23:58:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.yl.dao.ProductDao;
import com.yl.vo.Products;

public final class open_005fproducts_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/E:/JspStudy/apache-tomcat-8.5.55/webapps/OnlineShoppingSystem/WEB-INF/lib/jstl-impl.jar!/META-INF/c.tld", Long.valueOf(1274158294000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-impl.jar", Long.valueOf(1620971542920L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.yl.dao.ProductDao");
    _jspx_imports_classes.add("com.yl.vo.Products");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP 只允许 GET、POST 或 HEAD。Jasper 还允许 OPTIONS");
      return;
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
      response.setContentType("text/html; charset=utf-8");
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
      out.write("\r\n");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->\r\n");
      out.write("    <title>游客访问</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap -->\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write(" \r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    <title>商品界面</title>\r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t<!--\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("\t-->\r\n");
      out.write("\t<style type=\"text/css\">\r\n");
      out.write("\t\tdiv{\r\n");
      out.write("\t\t\tfloat: left;\r\n");
      out.write("\t\t\tmargin: 10px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdiv dd{\r\n");
      out.write("\t\t\tmargin:0px;\r\n");
      out.write("\t\t\tfont-size:10px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdiv dd.dd_name{\r\n");
      out.write("\t\t\tcolor:blue;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdiv dd.dd_company{\r\n");
      out.write("\t\t\tcolor:#000;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("  \t\ta:HOVER {\r\n");
      out.write("\t\t\ttext-decoration: none;\r\n");
      out.write("\t\t}\r\n");
      out.write("  \t\ta:FOCUS {\r\n");
      out.write("\t\t\ttext-decoration: none;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tbody{\r\n");
      out.write("    \t\twidth: 100%;\r\n");
      out.write("    \t\tmargin: auto;\r\n");
      out.write("    \t}\r\n");
      out.write("\t</style>\r\n");
      out.write("\t\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("    <h1 align=\"center\">电子产品网上商城</h1>\r\n");
      out.write("    \r\n");
      out.write("    <hr>\r\n");
      out.write("    \r\n");
      out.write(" \t\r\n");
      out.write("    <center>\r\n");
      out.write("    \r\n");
      out.write("   \t\t<div class=\"container-fluid\">\r\n");
      out.write("   \t\t\t\r\n");
      out.write("   \t\t\r\n");
      out.write("   \t\t\t\r\n");
      out.write("   \t\t\t<div class=\"row\" style=\"background-color: red; width: 100%; text-align: center\">\r\n");
      out.write("   \t\t\t\t\r\n");
      out.write("   \t\t\t\t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/servlet/ProductsShowServlet?type=电脑办公&flag=1\" class=\"btn btn-default\" style=\"background-color: red;float: left;margin-left: 150px;color: white;border: none\">电脑办公</a>\r\n");
      out.write("\t\t\t \t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/servlet/ProductsShowServlet?type=手机数码&flag=1\" class=\"btn btn-default\" style=\"background-color: red;float: left;color: white;border: none\">手机数码</a>\r\n");
      out.write("\t\t\t \t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/servlet/ProductsShowServlet?type=蓝牙音箱&flag=1\" class=\"btn btn-default\" style=\"background-color: red;float: left;color: white;border: none\">蓝牙音箱</a>\r\n");
      out.write("\t\t\t \t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/servlet/ProductsShowServlet?type=蓝牙耳机&flag=1\" class=\"btn btn-default\" style=\"background-color: red;float: left;color: white;border: none\">蓝牙耳机</a>\r\n");
      out.write("   \t\t\t\t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/reg.jsp\" class=\"btn btn-default\" style=\"background-color: red;float: right;color: white;border: none\">注册</a>\r\n");
      out.write("   \t\t\t\t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/login.jsp\" class=\"btn btn-default\" style=\"background-color: red;float: right;color: white;border: none\">登录</a>\r\n");
      out.write("   \t\t\t</div>\r\n");
      out.write("   \t\t\t<div class=\"row\" style=\"margin-left: 100px;margin-right: 100px;\">\r\n");
      out.write("   \t\t\t\t");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("   \t\t\t</div>\r\n");
      out.write("   \t\t</div>\r\n");
      out.write("   \t\t\r\n");
      out.write("    </center>   \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("     \r\n");
      out.write("     <div m-padding=\"10px 0px 10px 0px\" p-padding=\"10px 0 10px 0\" css_animation_delay=\"0\" qfyuuid=\"qfy_column_text_shx3h\" data-anitime=\"0.7\" class=\"qfy-element qfy-text qfy-text-42518 qfe_text_column qfe_content_element  \" style=\"position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0;margin-bottom:0;padding-top:10px;padding-bottom:10px;padding-right:0;padding-left:0;border-radius:0px;border-top:1px solid #e2e2e2;border-bottom:1px solid #e2e2e2;border-left:0px solid #e2e2e2;border-right:0px solid #e2e2e2;width: 100%;text-align: center;\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t  版权所有2021 电子产品网上商城\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js\"></script>\r\n");
      out.write("    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  </body>\r\n");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /open_products.jsp(84,7) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/open_products.jsp(84,7) '${productList}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${productList}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /open_products.jsp(84,7) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("product");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t   \t\t\t<div  style=\"width: 150;margin-left: 25px;float: left;\" >\t\t\r\n");
            out.write("\t\t \t\t\t\t\t<a href=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("/servlet/ProductDetailServlet?id=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("&flag=1\"><img src=\"images/");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.picture}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" width=\"120\" height=\"150\" border=\"1\"/></a>\r\n");
            out.write("\t\t \t\t\t\t\t\r\n");
            out.write("\t\t \t\t\t\t\t<p><b>商品名：</b>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</p>\r\n");
            out.write("\t\t \t\t\t\t\t<p><b>销售商：</b>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.company}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</p>\r\n");
            out.write("\t\t \t\t\t\t\t<p><b>价格：</b>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.price}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</p>\r\n");
            out.write("\t\t   \t\t\t</div>\r\n");
            out.write("   \t\t\t\t");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}
