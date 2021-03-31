/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.syscenterlife.utils;

/**
 *
 * @author LAB REDES
 */
import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class DBConn {

    public Connection con=null;
    public PreparedStatement ps=null;
    public ResultSet rs=null;
    public int i=0;

    public void getConexionDB() {
        try {
            if (con==null){
            DriverManager.registerDriver(new Driver());
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/echartstag", "root", "");
            
            System.out.println("conexion exitosa");
            }
            } catch (Exception e) {
                System.out.println("error de conexion"+e.getMessage());
        }

    }
    public void getCerrarConexion(){
        
        try {
            if(rs!=null){rs.close();}
            if(ps!=null){ps.close();}
            if(con!=null){con.close();}
                        
        } catch (Exception e) {
        }
    }
    
}
