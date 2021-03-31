/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.syscenterlife.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pe.com.syscenterlife.dao.Data1Repository;
import pe.com.syscenterlife.modelo.Data1;

/**
 *
 * @author David Mamani Pari
 */
@Service
@Transactional
public class Data1Service {
    @Autowired
    Data1Repository data1Repository;

    public List<Data1> list(){
        return data1Repository.findAll();
    }

    public Optional<Data1> getOne(int id){
        return data1Repository.findById(id);
    }

    public Optional<Data1> getByMes(String mes){
        return data1Repository.findByMes(mes);
    }

    public void  save(Data1 producto){
        data1Repository.save(producto);
    }

    public void delete(int id){
        data1Repository.deleteById(id);
    }

    public boolean existsById(int id){
        return data1Repository.existsById(id);
    }

    public boolean existsByNombre(String mes){
        return data1Repository.existsByMes(mes);
    }    
}
