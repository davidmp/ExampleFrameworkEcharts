<%-- 
    Document   : index
    Created on : Mar 11, 2020, 4:05:19 AM
    Author     : davidmp
--%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.syscenterlife.com/echarts3D" prefix="echar3D" %>
<%@taglib uri="http://www.syscenterlife.com/echarts"  prefix="echar" %>
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
        <echar:echartHeaderScript nivelFile="1" />
        <%
            String urlx = request.getContextPath();
        %>    
    
  </head>

  <body class="guide">
        <%
            
            Object[][] data={{0,0,5},{0,1,1},{0,2,0},{0,3,0},{0,4,0},{0,5,0},{0,6,0},{0,7,0},{0,8,0},{0,9,0},{0,10,0},{0,11,2},{0,12,4},{1,0,7},{1,1,0},{1,2,0},{1,3,0},{1,4,0},{1,5,0},{1,6,0},{1,7,0},{1,8,0},{1,9,0},{1,10,5},{1,11,2},{1,12,2},{2,0,1},{2,1,1},{2,2,0},{2,3,0},{2,4,0},{2,5,0},{2,6,0},{2,7,0},{2,8,0},{2,9,0},{2,10,3},{2,11,2},{2,12,1},{3,0,7},{3,1,3},{3,2,0},{3,3,0},{3,4,0},{3,5,0},{3,6,0},{3,7,0},{3,8,1},{3,9,0},{3,10,5},{3,11,4},{3,12,7}};
            String idCharts="main";    
            Object[] dataTagX={"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"};
            Object[] dataTagY={"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
            int[] z3DMinMax={0,60};
            String seriesTypeEchart="scatter3D";  /*bar3D,line3D,surface,scatter3D*/
            
            JSONArray dataValues= new JSONArray(data); 
            
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
        <echar3D:echartGrid3D idCharts="<%=idCharts%>" dataTagX="<%=dataTagX%>" dataTagY="<%=dataTagY%>"
        dataValues="<%=dataValues%>"  />
        
        <echar3D:echartGrid3D idCharts="mainX" dataTagX="<%=dataTagX%>" dataTagY="<%=dataTagY%>"
        dataValues="<%=dataValues%>" seriesTypeEchart="bar3D" color="#FF6600"  z3DMinMax="<%=z3DMinMax%>"  />
        
        <echar3D:echartGrid3D idCharts="mainY" dataTagX="<%=dataTagX%>" dataTagY="<%=dataTagY%>"
        dataValues="<%=dataValues%>" seriesTypeEchart="line3D" color="blue"   />
        
        <echar3D:echartGrid3D idCharts="mainZ" dataTagX="<%=dataTagX%>" dataTagY="<%=dataTagY%>"
        dataValues="<%=dataValues%>" seriesTypeEchart="surface" color="green"   />
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