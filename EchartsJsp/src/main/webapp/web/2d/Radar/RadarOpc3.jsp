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
    Object[][] dataValues1={{60,73,85,40}};
    Object[][] dataValues2={{85,90,90,95,95},{95,80,95,90,93}};
    Object[][] dataValues3={
        {2.6,5.9,9,26.4,28.7,70.7,75.6,82.2,48.7,18.8,6,2.3},
        {2,4.9,7,23.2,25.6,76.7,35.6,62.2,32.6,20,6.4,3.3}};

    Object[] dataValuesM={dataValues1,dataValues2,dataValues3};/*SI*/

    Object[][] indicadorPositionWH=new Object[2][dataValuesM.length]; /*SI*/
    indicadorPositionWH[0][0]="25%"; indicadorPositionWH[1][0]=200;
    indicadorPositionWH[0][1]="50%"; indicadorPositionWH[1][1]=300;
    indicadorPositionWH[0][2]="75%"; indicadorPositionWH[1][2]=200;

    double[] areaStyleOpacy= new double[dataValuesM.length]; /*SI*/
    areaStyleOpacy[0]=0.8;
    areaStyleOpacy[1]=0;
    areaStyleOpacy[2]=0.8;



    Object[][] indicadorData1={
    {"Brand","Content","Availability","function"},
    {100,100,100,100}
    };
    Object[][] indicadorData2={
    {"Appearance","take a picture","System","performance","screen"},
    {100,100,100,100,100}
    };
    Object[][] indicadorData3=new Object[2][dataValues3[0].length];
    for (int i = 0; i < 12; i++) {
        indicadorData3[0][i]=(i+1)+"month";
        indicadorData3[1][i]=100;
    }
    Object[] indicadorDataM={indicadorData1,indicadorData2,indicadorData3}; /*SI*/

    String[] legendDataName=new String[dataValues1.length+dataValues2.length+dataValues3.length]; /*SI*/
    legendDataName[0]="Some software";
    legendDataName[1]="A staple food phone";
    legendDataName[2]="A fruit phone";
    legendDataName[3]="Precipitation";
    legendDataName[4]="Evaporation";

    String chartTitle="Grafico de radar multiple";

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
<echar:echartRadarMultip idCharts="main" chartTitle="<%=chartTitle%>" areaStyleOpacy="<%=areaStyleOpacy%>"
indicadorDataM="<%=indicadorDataM%>" legendDataName="<%=legendDataName%>" indicadorPositionWH="<%=indicadorPositionWH%>"
                         dataValuesM="<%=dataValuesM%>"/> 
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