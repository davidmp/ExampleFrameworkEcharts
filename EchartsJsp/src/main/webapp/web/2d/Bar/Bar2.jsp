<%-- 
    Document   : index
    Created on : Mar 11, 2020, 4:05:19 AM
    Author     : davidmp
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            String chartTitle="Afluencia de Turistas por Zonas";
                       
            String query=" SELECT  YEAR(CURRENT_DATE())-2 AS anho, r.* FROM (\n" +
                    "SELECT d.*, d2.cantidad2, d3.cantidad3, d4.cantidad4 FROM (\n" +
                    "SELECT Data2.zona, Data2.tipo, Data2.cantidad FROM Data2 WHERE anho=YEAR(CURRENT_DATE())-2 ) AS d LEFT JOIN (\n" +
                    "SELECT Data2.zona, Data2.tipo, Data2.cantidad AS cantidad2 FROM Data2 WHERE anho=YEAR(CURRENT_DATE())-3) AS d2 USING (zona, tipo) LEFT JOIN (\n" +
                    "SELECT Data2.zona, Data2.tipo, Data2.cantidad AS cantidad3 FROM Data2 WHERE anho=YEAR(CURRENT_DATE())-4) AS d3 USING (zona, tipo) LEFT JOIN (\n" +
                    "SELECT Data2.zona, Data2.tipo, Data2.cantidad AS cantidad4 FROM Data2 WHERE anho=YEAR(CURRENT_DATE())-5) AS d4 USING (zona, tipo)) AS r WHERE r.tipo = 'Ingreso'  ";
               
            try {
                     Class.forName("com.mysql.cj.jdbc.Driver");
                     Connection con = null;
                     String sURL = "jdbc:mysql://localhost:3306/echartstag";
                     con = DriverManager.getConnection(sURL,"root","");
                     Statement stmt=con.createStatement();                     
                     ResultSet rs = stmt.executeQuery(query);  
                     int tamano=0;
                     while(rs.next()){tamano++;}
                 

                    rs = stmt.executeQuery(query);                       
                    double[] dataValues1=new double[tamano];        
                    double[] dataValues2=new double[tamano];        
                    double[] dataValues3=new double[tamano];        
                    double[] dataValues4=new double[tamano];   
                    String[] legendDataName=new String[4];   
                    int contador=0, contAnho=0;
                    String[] ejeDataX=new String[tamano];
                     while (rs.next()){
                            if(contador==0){
                                legendDataName[contAnho++]=rs.getString("anho"); 
                                legendDataName[contAnho++]=String.valueOf(Integer.parseInt(rs.getString("anho"))-1); 
                                legendDataName[contAnho++]=String.valueOf(Integer.parseInt(rs.getString("anho"))-2); 
                                legendDataName[contAnho++]=String.valueOf(Integer.parseInt(rs.getString("anho"))-3); 
                            }
                         dataValues1[contador]=rs.getDouble("cantidad");           
                         dataValues2[contador]=rs.getDouble("cantidad2");          
                         dataValues3[contador]=rs.getDouble("cantidad3");           
                         dataValues4[contador]=rs.getDouble("cantidad4");           
                         ejeDataX[contador]=rs.getString("zona");         
                         contador=contador+1;  
                     }                     
                    Object[] dataValues={dataValues1,dataValues2,dataValues3,dataValues4};
                   
                    String[] ejeNameXY={"Eje X","Eje Y"};           
                    boolean[] seriesMarkPointMinMax ={false,false,false,false};
                    boolean[] seriesMarkLineMedia ={false,false,false,false};            
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
<%
                 } catch (SQLException sqle) { 
                   System.out.println("Error en la ejecución:" 
                     + sqle.getErrorCode() + " " + sqle.getMessage());    
                 }   

%>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=request.getContextPath()%>/webdocument/echarts/js/jquery-3.2.1.slim.min.js" ></script>
    <script src="<%=request.getContextPath()%>/webdocument/echarts/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/webdocument/echarts/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/webdocument/echarts/js/run_prettify.js"></script>
  

</body></html>