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
Object[][] data={{0,0,4},
{0,1,3.57118459347656},
{0,2,3.19292786},
{0,3,2.90797322102855},
{0,4,2.738862329683},
{0,5,2.6820298414491},
{0,6,2.72005047139306},
{0,7,2.8331537018696},
{0,8,3.00351308153476},
{0,9,3.21589522954066},
{0,10,3.45806390397772},
{0,11,3.72224661257355},
{0,12,4.0069734576422},
{0,13,4.31669934626249},
{0,14,4.65482136064823},
{0,15,5.00560514550999},
{0,16,5.32879796874588},
{0,17,5.57711170105271},
{0,18,5.70632100419466},
{0,19,5.69155835323897},
{0,20,5.53462530642411},
{0,21,5.26350238197492},
{0,22,4.934131695817},
{0,23,4.62158567726095},
{0,24,4.39436833597234},
{0,25,4.29587363543124},
{0,26,4.33472644786223},
{0,27,4.48301883983358},
{0,28,4.68282700711285},
{0,29,4.86286884215472},
{0,30,4.96731276808481},
{0,31,4.96353228327126},
{0,32,4.82121911138732},
{0,33,4.53125717736886},
{0,34,4.11709429838556},
{0,35,3.63081356130541},
{0,36,3.14005518868041},
{0,37,2.71145076904924},
{0,38,2.39580783112686},
{0,39,2.21995807022463},
{0,40,2.18980968832455},
{0,41,2.29991504245282},
{0,42,2.53160462474591},
{0,43,2.85433200756905}};
%>

<%
            String idCharts="main";    
            String seriesTypeEchart="bar3D";  /*bar3D,line3D,surface,scatter3D*/
            JSONArray dataValues= new JSONArray(data); 
            double[] styleNormalEmphasis={0.8,0.4};/*0.2, 0.4*/
            int[] grid3DboxWidthDepth={200,80};
            boolean viewControlAutoRotate=false;
            double lightIntensity=0.8;
          
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
     <table>
        <tr>
            <td>
                <echar3D:echartBar3DStack  dataValues="<%=dataValues%>" idCharts="main" />
    
            </td>
        </tr>
        <tr>
            <td>
                <echar3D:echartBar3DStack  dataValues="<%=dataValues%>" seriesTypeEchart="scatter3D"  idCharts="main1" />
            </td>
        </tr>
        <tr>
            <td>
                <echar3D:echartBar3DStack  dataValues="<%=dataValues%>" seriesTypeEchart="line3D"  idCharts="main2" />
            </td>
        </tr>
        <tr>
            <td>
                <echar3D:echartBar3DStack  dataValues="<%=dataValues%>" seriesTypeEchart="surface"  idCharts="main3" />
            </td>
        </tr>
    </table>
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