<%-- 
    Document   : demo
    Created on : Mar 16, 2020, 4:48:47 PM
    Author     : davidmp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0056)https://getbootstrap.com/docs/4.0/examples/navbar-fixed/ -->
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/resources/css/navbar-top-fixed.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/guide.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/prettify.css" rel="stylesheet">
  </head>

  <body class="guide">

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-light" style="background-color: #e3f2fd;">
      
	  <a class="navbar-brand" href="#" id="logo-focus" >
        <img alt="Spring" class="block" id="springlogo" src="<%=request.getContextPath()%>/resources/img/LogoEchartsTag2.png" />
      </a>
      
        <button class="navbar-toggler bg-secondary" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
	  
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="btn btn-outline-secondary my-2 my-sm-0" href="#">Why EchartsTag </a>
          </li>
          <li class="nav-item">
            <a class="btn btn-outline-secondary my-2 my-sm-0" href="#">Learn</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-outline-secondary" href="#">Projects</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-outline-secondary" href="#">Support</a>
          </li>		  
        </ul>
      </div>
    </nav>

    <main role="main" class="container">
     


        <div class="content">
        <pre class="prettyprint highlight"><code class="language-java" data-lang="java">package com.example.servingwebcontent;

        import org.springframework.stereotype.Controller;
        import org.springframework.ui.Model;
        import org.springframework.web.bind.annotation.GetMapping;
        import org.springframework.web.bind.annotation.RequestParam;

        @Controller
        public class GreetingController {

                @GetMapping("/greeting")
                public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name, Model model) {
                        model.addAttribute("name", name);
                        return "greeting";
                }

        }
        </code></pre>
        </div>


<div class="content">
        <pre class="prettyprint highlight"><code class="language-java" data-lang="java">package com.example.servingwebcontent;

        @Controller
        public class IndexControl {    
            protected final Log logger = LogFactory.getLog(getClass());

            @RequestMapping(value = {"/" }, method = RequestMethod.GET)    
            public ModelAndView inicio(){               
            Object[] dependencyNames={"Boxplot"};

            Object[][] datax={
            {850, 740, 900, 1070, 930, 850, 950, 980, 980, 880, 1000, 980, 930, 650, 760, 810, 1000, 1000, 960, 960},
            {960, 940, 960, 940, 880, 800, 850, 880, 900, 840, 830, 790, 810, 880, 880, 830, 800, 790, 760, 800},
            {800, 600, 600, 600, 400, 400, 200, 200, 200, 200, 600, 200, 100, 100, 100, 100, 100, 100, 50, 1},
            {890, 810, 810, 820, 800, 770, 760, 740, 750, 760, 910, 920, 890, 860, 880, 720, 840, 850, 850, 780},
            {890, 840, 780, 810, 760, 810, 790, 810, 820, 850, 870, 870, 810, 740, 810, 940, 950, 800, 810, 20},
            {850, 740, 900, 1070, 930, 850, 950, 980, 980, 880, 1000, 980, 930, 650, 760, 810, 1000, 1000, 960, 960}                        
            };

            Object[] dataValues={datax,datax};

            String idCharts="main"; 
            String categoryName="Mes"; 
            String chartTitle="Ventas por Meses"; 
            String boxPlotOrient="horizontal"; /*vertical,horizontal*/

            String[] legendNameX=new String[dataValues.length]; 
            for(int i=0; i<legendNameX.length; i++){
               legendNameX[i]="Results "+(i+1)+"";
            }
            JSONArray legendName=new JSONArray(legendNameX);        

                Map<String,Object> model=new HashMap<>();
                model.put("saludo", "Hola mundo");
                model.put("dependencyNames", dependencyNames);
                model.put("dataValues", dataValues);
                model.put("idCharts", idCharts);
                model.put("categoryName", categoryName);
                model.put("chartTitle", chartTitle);
                model.put("boxPlotOrient", boxPlotOrient);
                model.put("legendName", legendName);
                return new ModelAndView("index", model);
            }    
        }
        </code></pre>
        </div>



        <div class="content">
        <pre class="prettyprint highlight">
        <code class="language-html" data-lang="html">
        &lt;%@page contentType="text/html" pageEncoding="UTF-8"%&gt;
        &lt;%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %&gt;
        &lt;%@taglib uri="http://www.syscenterlife.com/echarts" prefix="echar" %&gt;
        &lt;!DOCTYPE html&gt;
        &lt;html&gt;
            &lt;head&gt;
                &lt;meta http-equiv="Content-Type" content="text/html; charset=UTF-8"&gt;
                &lt;title&gt;JSP Page&lt;/title&gt;
                &lt;echar:echartHeaderScript depencyNames="${dependencyNames}"   /&gt; 
            &lt;/head&gt;
        &lt;body&gt;
        &lt;echar:echartBoxplot idCharts="${idCharts}" dataValues="${dataValues}" legendName="${legendName}" /&gt;

        &lt;echar:echartBoxplot idCharts="main2" dataValues="${dataValues}" legendName="${legendName}" 
                             chartTitle="Ventas Por año" boxPlotOrient="vertical" height="750px" width="460px" categoryName="Mes" /&gt;        
        &lt;/body&gt;
        &lt;/html&gt;


        </code></pre>
        </div>
 
	  
      
    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.slim.min.js" ></script>
    <script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/run_prettify.js"></script>
  

</body></html>
