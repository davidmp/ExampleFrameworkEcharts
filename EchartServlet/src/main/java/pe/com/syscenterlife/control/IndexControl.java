/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.syscenterlife.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import pe.com.syscenterlife.dao.ReportDataDao;


/**
 *
 * @author davidmp
 */
@WebServlet(name = "IndexControl", urlPatterns = {"/IndexControl"})
public class IndexControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        int opc = Integer.parseInt(request.getParameter("opc") == null ? "0" : request.getParameter("opc"));
        
        switch (opc) {           
                case 0:{
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
                    boolean[] seriesMarkPointMinMax ={false,false,false,false};
                    boolean[] seriesMarkLineMedia ={false,false,false,false};            
                    String[] seriesStackName ={"one","one","two","two"};            
                    String echartsOriented="horizontal";/*vertical,horizontal*/

                    /* TODO output your page here. You may use following sample code. */
                    request.getSession().setAttribute("dataValues", dataValues);
                    request.getSession().setAttribute("chartTitle", chartTitle);
                    request.getSession().setAttribute("legendDataName", legendDataName);
                    request.getSession().setAttribute("ejeDataX", ejeDataX);
                    request.getSession().setAttribute("ejeNameXY", ejeNameXY);
                    request.getSession().setAttribute("seriesMarkPointMinMax", seriesMarkPointMinMax);
                    request.getSession().setAttribute("seriesMarkLineMedia", seriesMarkLineMedia);
                    request.getSession().setAttribute("seriesStackName", seriesStackName);
                    request.getSession().setAttribute("echartsOriented", echartsOriented);


                    response.sendRedirect("web/Bar.jsp");
                }break;
                case 1:{
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
                request.getSession().setAttribute("idCharts", idCharts);
                request.getSession().setAttribute("dataValues", dataValues);
                request.getSession().setAttribute("legendName", legendName);
                
                
                response.sendRedirect("web/Bloxplot.jsp");
                
                }break;
                case 2:{
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


                request.getSession().setAttribute("dataValues", dataValuesX);
                request.getSession().setAttribute("chartTitle", chartTitle);
                request.getSession().setAttribute("legendDataName", legendDataName);
                request.getSession().setAttribute("serieCategoryName", serieCategoryName);
                request.getSession().setAttribute("serieSort", serieSort);
                request.getSession().setAttribute("serieSortX", serieSortX);

                response.sendRedirect("web/Funnel.jsp");
                }break;
                case 3:{
                ReportDataDao dao=new ReportDataDao();
                List<Map<String, Object>> data=dao.reporteAlumno();
                
                int tamano=data.size();
                System.out.println("VER:"+tamano);
                double[] dataValues1=new double[tamano];        
                double[] dataValues2=new double[tamano];        
                double[] dataValues3=new double[tamano];        
                double[] dataValues4=new double[tamano];        
                int contador=0, contAnho=0;
                String[] legendDataName=new String[4];
                String[] ejeDataX=new String[tamano];
                for (int i=0; i<data.size(); i++) {
                    System.out.print(" " + data.get(i).get("zona"));
                    if(contador==0){
                        legendDataName[contAnho++]=data.get(i).get("anho").toString(); 
                        legendDataName[contAnho++]=String.valueOf(Integer.parseInt(data.get(i).get("anho").toString())-1); 
                        legendDataName[contAnho++]=String.valueOf(Integer.parseInt(data.get(i).get("anho").toString())-2); 
                        legendDataName[contAnho++]=String.valueOf(Integer.parseInt(data.get(i).get("anho").toString())-3); 
                    }
                 dataValues1[contador]=Double.parseDouble(data.get(i).get("cantidad").toString());           
                 dataValues2[contador]=Double.parseDouble(data.get(i).get("cantidad2").toString());          
                 dataValues3[contador]=Double.parseDouble(data.get(i).get("cantidad3").toString());           
                 dataValues4[contador]=Double.parseDouble(data.get(i).get("cantidad4").toString());           
                 ejeDataX[contador]=data.get(i).get("zona").toString();         
                 contador=contador+1;                     
                }           
     
                    Object[] dataValues={dataValues1,dataValues2,dataValues3,dataValues4};         
                    String[] ejeNameXY={"Eje X","Eje Y"};           
                    boolean[] seriesMarkPointMinMax ={false,false,false,false};
                    boolean[] seriesMarkLineMedia ={false,false,false,false};              
                    String[] seriesStackName ={"one","two","tre","for"};            
                    String echartsOriented="horizontal";/*vertical,horizontal*/        
                    String chartTitle="Afluencia de Turistas por Zonas";
                    request.getSession().setAttribute("dataValues", dataValues);
                    request.getSession().setAttribute("chartTitle", chartTitle);
                    request.getSession().setAttribute("legendDataName", legendDataName);
                    request.getSession().setAttribute("ejeDataX", ejeDataX);
                    request.getSession().setAttribute("ejeNameXY", ejeNameXY);
                    request.getSession().setAttribute("seriesMarkPointMinMax", seriesMarkPointMinMax);
                    request.getSession().setAttribute("seriesMarkLineMedia", seriesMarkLineMedia);
                    request.getSession().setAttribute("seriesStackName", seriesStackName);
                    request.getSession().setAttribute("echartsOriented", echartsOriented);


                    response.sendRedirect("web/Bar.jsp");              
                
                } break;
        }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
