/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.syscenterlife;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.DesiredCapabilities;

import org.testng.Assert;

import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
/**
 *
 * @author davidmp
 */

public class EchartsAutomatedFuntionTest {
    
    
    private WebDriver driver;
    
    @BeforeMethod
    public void setUP(){
        DesiredCapabilities caps=new DesiredCapabilities();
        System.setProperty("webdriver.chrome.driver", "D:\\TESTDRIVERS\\chromedriver.exe");
        driver=new ChromeDriver();
        driver.manage().window().maximize();
        driver.navigate().to("http://localhost:8080/EchartsJsp/");
            try {
                Thread.sleep(6000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
    }
    
    
    @Test
    public void test2DEchart(){
//     driver.findElement(By.name("userName")).sendKeys("user");
//     driver.findElement(By.name("password")).sendKeys("user");
     driver.findElement(By.id("2d")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("/html/body/main/div/h3")).getText().contains("Bienvenidos a EchartsTag de 2 Dimensiones"));
    }
    
    @Test
    public void test2DEchartBar(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DBar")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartBarSimple(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DBarSimple")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartBoxplot(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DBoxplot")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartFunnel(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DFunnel")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartLine(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DLine")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartLineArea(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DLineArea")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartPie(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DPie")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartRadar(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DRadar")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartRadarSimple(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DRadarSimple")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartRadarMultiple(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DRadarMultiple")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test2DEchartScatter(){
     driver.findElement(By.id("2d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("2DScatter")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas")).getTagName().contains("canvas"));
    }
    
    
    @Test
    public void test3DEchartBar(){
     driver.findElement(By.id("3d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("3DBar")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas[1]")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test3DEchartBarStack(){
     driver.findElement(By.id("3d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("3DBarStack")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas[1]")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test3DEchartBarSimple(){
     driver.findElement(By.id("3d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("3DBarSimple")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas[1]")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test3DEchartGrid(){
     driver.findElement(By.id("3d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("3DGrid")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas[1]")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test3DEchartLine(){
     driver.findElement(By.id("3d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("3DLine")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }               
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"mainx\"]/div[1]/canvas[1]")).getTagName().contains("canvas"));
    }
    
    @Test
    public void test3DEchartScatter(){
     driver.findElement(By.id("3d")).click();
        tiempoEspera(4000);
     driver.findElement(By.id("3DScatter")).click();
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }        
       Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"main\"]/div[1]/canvas[1]")).getTagName().contains("canvas"));
    }
    
    
    @AfterMethod
    public void tearDown(){
    driver.close();
    }
    
    public void tiempoEspera(int tiempo){
        try {
            Thread.sleep(tiempo);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }      
    }
    
}
