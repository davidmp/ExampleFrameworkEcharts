<%-- 
    Document   : index
    Created on : Mar 11, 2020, 4:05:19 AM
    Author     : davidmp
--%>
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
            Object[][] dataValuesX={
                        {390,208,15,9,0.5},
                        {380,204,20,18,2},
                        {370,200,25,27,4.5},
                        {360,196,30,36,8},
                        {350,192,35,45,12.5},
                        {340,188,40,54,18},
                        {330,184,45,63,24.5},
                        {320,180,50,72,32},
                        {310,176,55,81,40.5},
                        {300,172,60,90,50},
                        {290,168,65,99,60.5},
                        {280,164,70,108,72},
                        {270,160,75,117,84.5},
                        {260,156,80,126,98},
                        {250,152,85,135,112.5},
                        {240,148,90,144,128},
                        {230,144,95,153,144.5},
                        {220,140,100,162,162},
                        {210,136,105,171,180.5},
                        {200,132,110,180,200},
                        {190,128,115,189,220.5},
                        {180,124,120,198,242},
                        {170,120,125,207,264.5},
                        {160,116,130,216,288},
                        {150,112,135,225,312.5},
                        {140,108,140,234,338},
                        {130,104,145,243,364.5},
                        {120,100,150,252,392}
                    };
            
            Object[][] indicadorData={
                            {"IE8-","IE9+","Safari","Firefox","Chrome"},
                            {400,400,400,400,400,400}
                            };
            
            String[] legendDataName=new String[dataValuesX.length];
            for (int i = 0; i < legendDataName.length; i++) {
                    legendDataName[i]=""+(2001+i);
                }
            String[] visualMapColors={"#3333FF", "yellow"};
            JSONArray dataValues=new JSONArray(dataValuesX);

            String seriesName="Presupuesto vs gasto x";
            String lineStyleType="dotted";/*'solid','dashed','dotted'*/
            String chartTitle="Cambio de uso compartido del navegador";
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
        <echar:echartRadarO2 idCharts="main" dataValues="<%=dataValues%>" indicadorData="<%=indicadorData%>"
        legendDataName="<%=legendDataName%>" seriesName="<%=seriesName%>" lineStyleType="<%=lineStyleType%>"
                             chartTitle="<%=chartTitle%>"  width="700px"   />
        <echar:echartRadarO2 idCharts="main2" dataValues="<%=dataValues%>" indicadorData="<%=indicadorData%>"
        legendDataName="<%=legendDataName%>" seriesName="<%=seriesName%>" lineStyleType="<%=lineStyleType%>"
                             chartTitle="<%=chartTitle%>"  width="700px" visualMapColors="<%=visualMapColors%>"   />
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