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
            Object[][] dataValuesX={
                        {"Access",60,30},
                        {"Consultation",40,10},
                        {"Order",20,5},
                        {"Click",80,50},
                        {"Display",100,80},
                    };

            String[] legendDataName=new String[dataValuesX.length];
            for (int i = 0; i < dataValuesX.length; i++) {
                    legendDataName[i]=dataValuesX[i][0].toString();
                }
            
            String chartTitle="Grafico de embudo";
            String[] serieCategoryName={"Esperado", "Real"};
            String[] serieLabelPosition={"outside", "inside"};
            double[] serieItemStyleOpacy={0.7, 0.5};
            
            String[] serieLabelFormatter={"{b}", "{c}%"};
            String[] serieSort={"ascending", "ascending"};/*ascending,descending*/
            String[] serieSortX={"ascending", "descending"};/*ascending,descending*/
            
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
        
        <echar:echartFunnel idCharts="main" dataValues="<%=dataValuesX%>" chartTitle="<%=chartTitle%>"
        legendDataName="<%=legendDataName%>" serieCategoryName="<%=serieCategoryName%>"/>
        <echar:echartFunnel idCharts="main1" dataValues="<%=dataValuesX%>" chartTitle="<%=chartTitle%>"
        legendDataName="<%=legendDataName%>" serieCategoryName="<%=serieCategoryName%>" serieSort="<%=serieSort%>" />
        <echar:echartFunnel idCharts="main2" dataValues="<%=dataValuesX%>" chartTitle="<%=chartTitle%>"
        legendDataName="<%=legendDataName%>" serieCategoryName="<%=serieCategoryName%>" serieSort="<%=serieSortX%>" />
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