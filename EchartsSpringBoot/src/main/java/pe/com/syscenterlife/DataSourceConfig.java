/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.syscenterlife;

import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author davidmp
 */
@Configuration 
@PropertySource("classpath:application.properties")
public class DataSourceConfig {
  
// PROPERTIES    
  @Value("${datasource.jndiname:DS}")   private String jndi;
  @Value("${datasource.driverClassName}")   private String driverClassName;
  @Value("${datasource.url}")   private String url;
  @Value("${datasource.username}")   private String username;
  @Value("${datasource.password}")   private String password;   
  
@Bean
  public DataSource dataSource() throws Exception {    
    DataSource ds;    
    try {    
      ds = dataSourceJNDI();    
    } catch (NamingException e) {    
      ds = dataSourceProperties();    
    }    
    return ds;    
  }    
  
  @Bean
  public JdbcTemplate jdbcTemplate(DataSource dataSource) {    
    return new JdbcTemplate(dataSource);    
  }    
    
  DataSource dataSourceProperties() throws SQLException {    
    return DataSourceBuilder.create() //    
        .driverClassName(driverClassName) //    
        .url(url) //    
        .username(username) //    
        .password(password) //            
        .build();    
  }
  
  DataSource dataSourceJNDI() throws NamingException {    
    return (DataSource) new InitialContext() //    
        .lookup(jndi);    
  }  
}
