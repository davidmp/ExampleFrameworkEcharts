/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.syscenterlife;

/**
 *
 * @author davidmp
 */
import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.servlet.ModelAndView;
import pe.com.syscenterlife.control.IndexControl;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = {WebAppConfig.class})
@WebAppConfiguration
public class IndexControlTests {
    @Autowired
    private IndexControl controller;

    @Test
    public void testHandleRequestView() {	
        ModelAndView modelAndView = controller.inicio();		
        assertEquals("hello.jsp", modelAndView.getViewName());
        
}
    
}