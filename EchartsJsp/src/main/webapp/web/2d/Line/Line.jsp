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
            Object[] dataValues1={120,132,101,134,-90,230,210};
            Object[] dataValues2={220,182,191,234,290,330,310};
            Object[] dataValues3={150,232,201,154,190,330,410};
            Object[] dataValues4={320,332,301,334,390,330,320};
            Object[] dataValues5={820,932,901,934,1290,1330,1320};

            Object[] dataValues={dataValues1,dataValues2,dataValues3,dataValues4,dataValues5};
            String[] legendDataName=new String[dataValues.length];
            legendDataName[0]="Email marketing";
            legendDataName[1]="Publicidad afiliada";
            legendDataName[2]="Publicidad de video";
            legendDataName[3]="Acceso directo";
            legendDataName[4]="Motor de busqueda";
            String[] chartAxisXYCategory={"Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"};        
            String echartsOriented="vertical";/*vertical,horizontal*/
            boolean[] seriesMarkPointMinMax ={true,false,false,false,true};
            boolean[] seriesMarkLineMedia ={true,false,false,false,true};
 
            String scriptAdd="go = {exchangeXYdmp: function () {var option = myChart.getOption();var temp; temp = option.xAxis;option.xAxis = option.yAxis;option.yAxis = temp; myChart.setOption(option);}};";
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
        <echar:echartLine idCharts="main" dataValues="<%=dataValues%>"
        chartAxisXYCategory="<%=chartAxisXYCategory%>" legendDataName="<%=legendDataName%>" />
        <div>
            <input type="button" value="exchangeXY" onclick="go.exchangeXYdmp();">
        </div>
        <echar:echartLine idCharts="main2" dataValues="<%=dataValues%>"
        chartAxisXYCategory="<%=chartAxisXYCategory%>" legendDataName="<%=legendDataName%>" scriptAdd="<%=scriptAdd%>" />
        <div>
            <input type="button" value="exchangeXY" onclick="go.exchangeXYdmp();">
        </div>        
        <echar:echartLine idCharts="main3" dataValues="<%=dataValues%>"
        chartAxisXYCategory="<%=chartAxisXYCategory%>"  legendDataName="<%=legendDataName%>" scriptAdd="<%=scriptAdd%>"
        seriesMarkLineMedia="<%=seriesMarkLineMedia%>" seriesMarkPointMinMax="<%=seriesMarkPointMinMax%>"/>
        <echar:echartLine idCharts="main4" dataValues="<%=dataValues%>"
        chartAxisXYCategory="<%=chartAxisXYCategory%>" legendDataName="<%=legendDataName%>" echartsOriented="<%=echartsOriented%>" /> 
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