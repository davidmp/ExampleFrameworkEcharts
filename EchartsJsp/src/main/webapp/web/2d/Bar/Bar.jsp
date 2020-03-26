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
    <echar:echartHeaderScript  />
    
  </head>

  <body class="guide">
<% 
            String chartTitle="Soy un histograma";
                       
            double[] dataValues1={1.33,4.94,4.48,2.44,3.37,1.61,2.58,1.99,0.57,4.89};
            double[] dataValues2={-0.08,-0.22,-0.82,-0.51,-0.18,-0.54,-0.62,-0.61,-0.44,-0.58};
            double[] dataValues3={1.12,1.44,1.2,0.53,1.48,0.61,0.68,0.9,0.7,1.34};
            double[] dataValues4={0.45,0.96,0.76,0.6,0.84,0.95,0.47,0.88,0.83,0.98};

            Object[] dataValues={dataValues1,dataValues2,dataValues3,dataValues4};
            String[] legendDataName=new String[dataValues.length];            
            legendDataName[0]="bar";
            legendDataName[1]="bar2"; 
            legendDataName[2]="bar3"; 
            legendDataName[3]="bar4"; 
            
            String[] ejeDataX={"Categoría0","Categoría1","Categoría2","Categoría3","Categoría4","Categoría5","Categoría6",
                                "Categoría7","Categoría8","Categoría9"};            
            String[] ejeNameXY={"Eje X","Eje Y"};           
            String[] seriesMarkPointMinMax ={"yes","no","no","yes"};
            String[] seriesMarkLineMedia ={"yes","no","no","yes"};            
            String[] seriesStackName ={"one","one","two","two"};            
            String echartsOriented="horizontal";/*vertical,horizontal*/
            String x,y;
            if(echartsOriented.equals("horizontal")){
            x="xAxis"; y="yAxis";
            }else{ x="yAxis"; y="xAxis"; }            
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
        
        <echar:echartBarHistogram chartTitle="<%=chartTitle%>" dataValues="<%=dataValues%>" ejeDataX="<%=ejeDataX%>"
                                  idCharts="main" legendDataName="<%=legendDataName%>"/>
        <echar:echartBarHistogram chartTitle="<%=chartTitle%>" dataValues="<%=dataValues%>" ejeDataX="<%=ejeDataX%>"
        idCharts="main1" legendDataName="<%=legendDataName%>" echartsOriented="vertical"/>
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