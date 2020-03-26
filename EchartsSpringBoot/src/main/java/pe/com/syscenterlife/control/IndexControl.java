/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.syscenterlife.control;


import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.JSONArray;
/**
 *
 * @author davidmp
 */
@Controller
public class IndexControl {    
    protected final Log logger = LogFactory.getLog(getClass());
        
    @RequestMapping(value = {"/bar" }, method = RequestMethod.GET)    
    public ModelAndView inicio(){             
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
      
        
        Map<String,Object> model=new HashMap<>();
        model.put("saludo", "Hola mundo");
        model.put("chartTitle", chartTitle);
        model.put("dataValues", dataValues);
        model.put("legendDataName", legendDataName);
        model.put("ejeDataX", ejeDataX);
        model.put("ejeNameXY", ejeNameXY);
        model.put("seriesMarkPointMinMax", seriesMarkPointMinMax);
        model.put("seriesMarkLineMedia", seriesMarkLineMedia);
        model.put("seriesStackName", seriesStackName);
        model.put("echartsOriented", echartsOriented);
        return new ModelAndView("bar", model);
    }    
    
    @RequestMapping(value = {"/" }, method = RequestMethod.GET)    
    public ModelAndView inicioBloxplot(){               
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
        return new ModelAndView("Bloxplot", model);
    }    
    
    @RequestMapping(value = {"/funnel" }, method = RequestMethod.GET)    
    public ModelAndView inicioFunnel(){
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
        
        Map<String,Object> model=new HashMap<>();
        model.put("saludo", "Hola mundo");
        model.put("dataValuesX", dataValuesX);
        model.put("legendDataName", legendDataName);
        model.put("chartTitle", chartTitle);
        model.put("serieCategoryName", serieCategoryName);
        model.put("serieLabelPosition", serieLabelPosition);
        model.put("serieItemStyleOpacy", serieItemStyleOpacy);
        model.put("serieLabelFormatter", serieLabelFormatter);
        model.put("serieSort", serieSort);
        model.put("serieSortX", serieSortX);
        
        return new ModelAndView("Funnel", model);
    }    
    @RequestMapping(value = {"/demo" }, method = RequestMethod.GET)    
    public ModelAndView inicioDemo(){
     
        Map<String,Object> model=new HashMap<>();
        model.put("saludo", "Hola mundo");        
        return new ModelAndView("demo", model);
    }    
}
