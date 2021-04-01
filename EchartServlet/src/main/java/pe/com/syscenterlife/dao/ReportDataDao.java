/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.syscenterlife.dao;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pe.com.syscenterlife.utils.DBConn;
import org.apache.log4j.Logger;

/**
 *
 * @author LAB REDES
 */
public class ReportDataDao extends DBConn{
  
    Logger logeeri=Logger.getLogger(ReportDataDao.class) ;

    public List<Map<String, Object>> reporteTurismoEntrada() {//list:return del mismo tipo
            List<Map<String, Object>> reporte = new ArrayList();
            try {
                getConexionDB();
                ps = con.prepareStatement(" SELECT  YEAR(CURRENT_DATE())-2 AS anho, r.* FROM (\n" +
                    "SELECT d.*, d2.cantidad2, d3.cantidad3, d4.cantidad4 FROM (\n" +
                    "SELECT Data2.zona, Data2.tipo, Data2.cantidad FROM Data2 WHERE anho=YEAR(CURRENT_DATE())-2 ) AS d LEFT JOIN (\n" +
                    "SELECT Data2.zona, Data2.tipo, Data2.cantidad AS cantidad2 FROM Data2 WHERE anho=YEAR(CURRENT_DATE())-3) AS d2 USING (zona, tipo) LEFT JOIN (\n" +
                    "SELECT Data2.zona, Data2.tipo, Data2.cantidad AS cantidad3 FROM Data2 WHERE anho=YEAR(CURRENT_DATE())-4) AS d3 USING (zona, tipo) LEFT JOIN (\n" +
                    "SELECT Data2.zona, Data2.tipo, Data2.cantidad AS cantidad4 FROM Data2 WHERE anho=YEAR(CURRENT_DATE())-5) AS d4 USING (zona, tipo)) AS r WHERE r.tipo = 'Ingreso'  ");
                rs = ps.executeQuery();
              reporte=resultSetToList(rs);
            } catch (SQLException e) {
                logeeri.info("Error en Reporte alumno..." + e.getMessage());
            }
            finally {
             getCerrarConexion();
            }
            return reporte;
        }
    
    
        private List<Map<String, Object>> resultSetToList(ResultSet rs) throws SQLException {
            ResultSetMetaData md = rs.getMetaData();
            int columns = md.getColumnCount();
            List<Map<String, Object>> rows = new ArrayList<>();
            while (rs.next()){
                Map<String, Object> row = new HashMap<>(columns);
                for(int i = 1; i <= columns; ++i){
                    row.put(md.getColumnName(i), rs.getObject(i));
                }
                rows.add(row);
            }
            return rows;
        }
    

    
}
