/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.syscenterlife.dao;

import pe.com.syscenterlife.modelo.IViewData2;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import pe.com.syscenterlife.modelo.Data2;
/**
 *
 * @author David Mamani Pari
 */

@Repository
public interface Data2Repository extends JpaRepository<Data2, Integer>{
    Optional<Data2> findByZona(String zona);
    boolean existsByZona(String zona);  
    //@Query("select p from ServPersona p  where p.usuario=?1 and p.clave=?2")
    @Query("select d from Data2 d where tipo='Ingreso' and anho in ('2019', '2018', '2017', '2016') order by anho desc, zona asc")
    List<Data2> ingresoTuristas();
    
    @Query(value = " select CAST(YEAR(CURRENT_DATE())-2 AS CHAR) AS anho, r.*  FROM (\n" +
"SELECT d.*, d2.cantidad2, d3.cantidad3, d4.cantidad4 FROM (\n" +
"SELECT Data2.zona, Data2.tipo, Data2.cantidad FROM Data2 WHERE anho=YEAR(NOW())-2 ) AS d LEFT JOIN (\n" +
"SELECT Data2.zona, Data2.tipo, Data2.cantidad AS cantidad2 FROM Data2 WHERE anho=YEAR(NOW())-3) AS d2 USING (zona, tipo) LEFT JOIN (\n" +
"SELECT Data2.zona, Data2.tipo, Data2.cantidad AS cantidad3 FROM Data2 WHERE anho=YEAR(NOW())-4) AS d3 USING (zona, tipo) LEFT JOIN (\n" +
"SELECT Data2.zona, Data2.tipo, Data2.cantidad AS cantidad4 FROM Data2 WHERE anho=YEAR(NOW())-5) AS d4 USING (zona, tipo)) AS r WHERE r.tipo = 'Ingreso'   ", nativeQuery = true)
    List<IViewData2> ingresoTuristas2();
    
}
