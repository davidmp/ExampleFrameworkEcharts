<%-- 
    Document   : index
    Created on : Mar 11, 2020, 4:05:19 AM
    Author     : davidmp
--%>
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
    
    
  </head>

  <body class="guide">

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
            <a class="btn btn-outline-secondary my-2 my-sm-0" href="../../">Home  <--|</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-outline-secondary my-2 my-sm-0" id="2d" href="principal.jsp">Echarts 2D</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-outline-secondary" id="3d" href="../../web/3d/principal.jsp">Echarts 3D</a>
          </li>	  
        </ul>
      </div>
    </nav>

    <main role="main" class="container">

    <div class="content">
        <h3>Bienvenidos a EchartsTag de 2 Dimensiones</h3>
        <a type="button" class="btn btn-outline-warning btn-lg btn-block" id="2DBar" href="Bar/Bar.jsp" >Bar</a>
        <a type="button" class="btn btn-outline-warning btn-lg btn-block" id="2DBar" href="Bar/Bar2.jsp" >Bar2</a>
        <a type="button" class="btn btn-outline-warning btn-lg btn-block" id="2DBarSimple" href="Bar/BarSimple.jsp" >Bar Simple</a>
        <a type="button" class="btn btn-outline-info btn-lg btn-block" id="2DBoxplot" href="Boxplot/Boxplot.jsp" >Boxplot</a>
        <a type="button" class="btn btn-outline-warning btn-lg btn-block" id="2DFunnel" href="Funnel/Funnel.jsp" >Funnel</a>
        <a type="button" class="btn btn-outline-info btn-lg btn-block" id="2DLine" href="Line/Line.jsp" >Line</a>
        <a type="button" class="btn btn-outline-info btn-lg btn-block" id="2DLineArea" href="Line/LineArea.jsp" >LineArea</a>
        <a type="button" class="btn btn-outline-warning btn-lg btn-block" id="2DPie" href="Pie/Pie.jsp" >Pie</a>
        <a type="button" class="btn btn-outline-info btn-lg btn-block" id="2DRadar" href="Radar/Radar.jsp" >Radar</a>
        <a type="button" class="btn btn-outline-info btn-lg btn-block" id="2DRadarSimple" href="Radar/RadarOpc2.jsp" >Radar Simple</a>
        <a type="button" class="btn btn-outline-info btn-lg btn-block" id="2DRadarMultiple" href="Radar/RadarOpc3.jsp" >Radar Multiple</a>
        <a type="button" class="btn btn-outline-warning btn-lg btn-block" id="2DScatter" href="Scatter/Scatter.jsp" >Scatter</a>
    
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