<%-- 
    Document   : index
    Created on : Mar 11, 2020, 4:05:19 AM
    Author     : davidmp
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            Object[] dataNameEjeX = {"12a", "1a", "2a", "3a", "4a", "5a", "6a","7a", "8a", "9a","10a","11a","12p", "1p", "2p", "3p", "4p", "5p","6p", "7p", "8p", "9p", "10p", "11p"};
            Object[] dataNameEjeY = {"Domingo", "Lunes", "Martes","Miercoles", "Jueves", "viernes","Sabado"};
            JSONArray dataValues;
            Object[] echart3DColor={"#d94e5d","#eac736","#50a3ba"};
            Object[][] typeAndIntervalEjesXYZ={{"category","category","value"},                 
                                    {1,0,0}};
            Object[] dimen3DXY={200,80};
            String idCharts="main";
            
            double lightIntensity=0;//0.8
            String seriesTypeEchart="bar3D";  /*bar3D,line3D,surface,scatter3D*/                    
            double[] styleNormalEmphasis={1,1};/*0.4, 0.4*/

                 
            String urlx = request.getContextPath();
      
                     
            LinkedHashMap<String, Object> hmx = new LinkedHashMap();

            ArrayList<Object> arrayListG = new ArrayList();
            //String dataValues="";
            Object[] dataXYZ;  
        try {
            System.out.println("Ver!!!");
            
            //Class.forName("com.mysql.jdbc.Driver").newInstance();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = null;
            String sURL = "jdbc:mysql://localhost:3306/echartstag";
            con = DriverManager.getConnection(sURL,"root","");
            if(con!=null){
            System.out.println("SI conecta!!!");
            }else{
            System.out.println("No conecta!!!");
            }
            Statement stmt=con.createStatement();
          //PreparedStatement stmt = con.prepareStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM data3;");           
          
          System.err.println("data:"+rs.getRow());
            while (rs.next()){
            dataXYZ=new Object[3];            
            dataXYZ[0]=rs.getInt("hora");
            dataXYZ[1]=rs.getInt("dias");
            dataXYZ[2]=rs.getInt("cantidad");            
            arrayListG.add(dataXYZ);
            }
            //dataValues=gson.toJson(arrayListG);


        } catch (SQLException sqle) { 
          System.out.println("Error en la ejecución:" 
            + sqle.getErrorCode() + " " + sqle.getMessage());    
        }
            dataValues = new JSONArray(arrayListG);
           // out.print(dataValuesEjeBase);        
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
                    <echar3D:echartBar3D dataNameEjeX="<%=dataNameEjeX%>" height="200" width="600" dataNameEjeY="<%=dataNameEjeY%>" 
        dataValues="<%=dataValues%>" idCharts="main" dimen3DXY="<%=dimen3DXY%>" echart3DColor="<%=echart3DColor%>"
        lightIntensity="<%=lightIntensity%>" seriesTypeEchart="<%=seriesTypeEchart%>"  styleNormalEmphasis="<%=styleNormalEmphasis%>"   
                             typeAndIntervalEjesXYZ="<%=typeAndIntervalEjesXYZ%>"/> 
                             
                   
                </td>
            </tr>
            <tr>
                <td>
        <echar3D:echartBar3D dataNameEjeX="<%=dataNameEjeX%>" dataNameEjeY="<%=dataNameEjeY%>" 
        dataValues="<%=dataValues%>" idCharts="mainx" dimen3DXY="<%=dimen3DXY%>" echart3DColor="<%=echart3DColor%>"
        lightIntensity="<%=lightIntensity%>" seriesTypeEchart="surface"  styleNormalEmphasis="<%=styleNormalEmphasis%>"   
                             typeAndIntervalEjesXYZ="<%=typeAndIntervalEjesXYZ%>" />                      
                </td>
            </tr>
            <tr>
                <td>
        <echar3D:echartBar3D dataNameEjeX="<%=dataNameEjeX%>" dataNameEjeY="<%=dataNameEjeY%>" 
        dataValues="<%=dataValues%>" idCharts="mainy" dimen3DXY="<%=dimen3DXY%>" echart3DColor="<%=echart3DColor%>"
        lightIntensity="<%=lightIntensity%>" seriesTypeEchart="scatter3D"  styleNormalEmphasis="<%=styleNormalEmphasis%>"   
                             typeAndIntervalEjesXYZ="<%=typeAndIntervalEjesXYZ%>"/>                      
                </td>
            </tr>
            <tr>
                <td>
        <echar3D:echartBar3D dataNameEjeX="<%=dataNameEjeX%>" dataNameEjeY="<%=dataNameEjeY%>" 
        dataValues="<%=dataValues%>" idCharts="mainz" dimen3DXY="<%=dimen3DXY%>" echart3DColor="<%=echart3DColor%>"
        lightIntensity="<%=lightIntensity%>" seriesTypeEchart="line3D"  styleNormalEmphasis="<%=styleNormalEmphasis%>"   
                             typeAndIntervalEjesXYZ="<%=typeAndIntervalEjesXYZ%>"/>                      
                </td>
            </tr>
            <tr>
                <td>
                    <echar3D:echartBar3D dataNameEjeX="<%=dataNameEjeX%>" dataNameEjeY="<%=dataNameEjeY%>" 
                    dataValues="<%=dataValues%>" echart3DColor="<%=echart3DColor%>" idCharts="mainxy" 
                    typeAndIntervalEjesXYZ="<%=typeAndIntervalEjesXYZ%>" lightIntensity="0.8" />                      
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