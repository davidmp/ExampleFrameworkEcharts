<%-- 
    Document   : index
    Created on : Mar 11, 2020, 4:05:19 AM
    Author     : davidmp
--%>
<%@page import="pe.com.syscenterlife.echarts.util.EchartsUtilTag"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.syscenterlife.com/echarts" prefix="echar" %>
<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/webdocument/echarts/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/webdocument/echarts/css/navbar-top-fixed.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/webdocument/echarts/css/guide.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/webdocument/echarts/css/prettify.css" rel="stylesheet">
    <echar:echartHeaderScript  />
    
  </head>

  <body class="guide">
<%
            Object[] dataValuesEjeBasex = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio"};
            //Object[] dataValuesEjeBasex={"Car home DMP", "Todays headlines", "Baidu Post Bar", "Little Information", "WeChat", "Weibo", "Knowledge"};
            JSONArray dataValuesEjeBase = new JSONArray(dataValuesEjeBasex);
            Object[][] dataValues = {
                {300, -270, 340, 344, 300, 320, 10},
                {120, 102, 141, 174, 190, 250, 220},
                {-20.25, -32, -21, -34, -90, -130, -110},
                {-15, -32, -40, -34, -90, -130, -200},
                {100, 102, 141, 20, 190, 250, 220}
            };

            // Map<String,Object> hmx = new HashMap<>();
            LinkedHashMap<String, Object> hmx = new LinkedHashMap<>();
            hmx.put("cchar", dataValues[0]);
            hmx.put("php", dataValues[1]);
            hmx.put("java", dataValues[2]);
            hmx.put("python", dataValues[3]);
            hmx.put("r", dataValues[4]);
            JSONObject obj = new JSONObject(hmx);
            String[] elementNames = JSONObject.getNames(obj);

            Object[][] dataCategPropied = {{"cchar", "php", "java", "python", "r"},
            {"C##", "PHP", "Java", "Python", "R"},
            {"", "", "", "", ""},
            {"inside", "inside", "left", "inside", "inside"}};

            EchartsUtilTag objxs = new EchartsUtilTag();
            dataCategPropied = objxs.verifPositionData(elementNames, dataCategPropied);

            //Map<String,Object> element = new HashMap<>();
            LinkedHashMap<String, Object> element = new LinkedHashMap<>();
            element.put("id", new JSONArray(dataCategPropied[0]));
            element.put("Categoria", new JSONArray(dataCategPropied[1]));
            element.put("stack", new JSONArray(dataCategPropied[2]));
            element.put("position", new JSONArray(dataCategPropied[2]));

            JSONArray lisx;

            lisx = (JSONArray) element.get("Categoria");

            // System.out.println("json = " + lisx);
            //out.print(obj.get("LenguajeD"));
            //out.print(obj2.get("LenguajeD"));
        %>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-light" style="background-color: #e3f2fd;">
      
        <a class="navbar-brand" href="#" id="logo-focus" >
            <img alt="Spring" class="block" id="springlogo" src="<%=request.getContextPath()%>/webdocument/echarts/img/LogoEchartsTag2.png" />
        </a>
      
        <button class="navbar-toggler bg-secondary" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
	  
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="btn btn-outline-secondary my-2 my-sm-0" href="<%=request.getContextPath()%>">Home  <--|</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-outline-secondary my-2 my-sm-0" href="<%=request.getContextPath()%>/web/2d/principal.jsp">Echarts 2D</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-outline-secondary" href="<%=request.getContextPath()%>/web/3d/principal.jsp">Echarts 3D</a>
          </li>	  
        </ul>
      </div>
    </nav>

    <main role="main" class="container">

    <div class="content">
<echar:echartBar dataValuesEjeBase="<%=dataValuesEjeBase%>" dataLabel="<%=element%>" dataValues="<%=obj%>" idCharts="main" height="600px" width="600px" />
    </div>

    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=request.getContextPath()%>/webdocument/echarts/js/jquery-3.2.1.slim.min.js" ></script>
    <script src="<%=request.getContextPath()%>/webdocument/echarts/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/webdocument/echarts/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/webdocument/echarts/js/run_prettify.js"></script>
  

</body></html>