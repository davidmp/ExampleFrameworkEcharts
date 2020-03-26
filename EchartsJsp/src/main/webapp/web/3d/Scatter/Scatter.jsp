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
  
    
  </head>

  <body class="guide">
<%
            String urlx = request.getContextPath();
            
            Object[][] data={{0,0,0,4},
{0,0,1,3.592148919875},
{0,0,2,3.22448878222222},
{0,0,3,2.9302638975},
{0,0,4,2.71957367308642},
{0,0,5,2.58100150462963},
{0,0,6,2.49552672},
{0,0,7,2.44485331475308},
{0,0,8,2.41487397925926},
{0,0,9,2.396393995},
{0,0,10,2.38506172839506},
{0,0,11,2.38158897609722},
{0,0,12,2.392544384},
{0,0,13,2.43097804474228},
{0,0,14,2.51532580503703},
{0,0,15,2.66445703125},
{0,0,16,2.88771569988477},
{0,0,17,3.17665011680144},
{0,0,18,3.51140804266666},
{0,0,19,3.86705150903137},
{0,0,20,4.21575637860082},
{0,0,21,4.53025310179166},
{0,0,22,4.7869869935144},
{0,0,23,4.96407019185082},
{0,0,24,5.04477862399999},
{0,0,25,5.0259490628215},
{0,0,26,4.91983828990946},
{0,0,27,4.75111999929166},
{0,0,28,4.5503944443786},
{0,0,29,4.34645502703755},
{0,0,30,4.15473333333333},
{0,0,31,3.98650942294547},
{0,0,32,3.82529690495473},
{0,0,33,3.67079788575},
{0,0,34,3.51992773715226},
{0,0,35,3.36809258937757},
{0,0,36,3.21014203733333},
{0,0,37,3.04143044062294},
{0,0,38,2.85964473863374},
{0,0,39,2.66806725904166},
{0,0,40,2.47980082304526},
{0,1,0,4},
{0,1,1,3.59893215799999},
{0,1,2,3.23754984374999},
{0,1,3,2.94990555555555},
{0,1,4,2.7499180478395},
{0,1,5,2.62605704},
{0,1,6,2.55676822018518},
{0,1,7,2.52063848765432},
{0,1,8,2.500676171875},
{0,1,9,2.4856549305679},
{0,1,10,2.47010246118672},
{0,1,11,2.45430298},
{0,1,12,2.44489401523919}
};

        %>

<%
        String idCharts="main"; 
        int[] grid3DBoxXYZ={100,100,100};
        String seriesTypeEchart="scatter3D";  /*line3D,surface,scatter3D*/
        JSONArray dataValues=new JSONArray(data);  
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
        <echar3D:echartScatter3D idCharts="main" dataValues="<%=dataValues %>" />    
        <echar3D:echartScatter3D idCharts="mainx" dataValues="<%=dataValues %>" seriesTypeEchart="line3D" />    
        <echar3D:echartScatter3D idCharts="mainy" dataValues="<%=dataValues %>" seriesTypeEchart="surface" />
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