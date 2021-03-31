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

import pe.com.syscenterlife.dao.Data2Repository;
import pe.com.syscenterlife.modelo.IViewData2;

import pe.com.syscenterlife.modelo.Data2;

/**
 *
 * @author David Mamani Pari
 */
@Service
@Transactional
public class Data2Service {
    @Autowired
    Data2Repository data2Repository;

    public List<Data2> list(){
        return data2Repository.findAll();
    }

    public Optional<Data2> getOne(int id){
        return data2Repository.findById(id);
    }

    public Optional<Data2> getByZona(String zona){
        return data2Repository.findByZona(zona);
    }

    public void  save(Data2 producto){
        data2Repository.save(producto);
    }

    public void delete(int id){
        data2Repository.deleteById(id);
    }

    public boolean existsById(int id){
        return data2Repository.existsById(id);
    }

    public boolean existsByZona(String zona){
        return data2Repository.existsByZona(zona);
    }    
    public List<Data2> ingresoTuristas(){
        return data2Repository.ingresoTuristas();
    }    
    public List<IViewData2> ingresoTuristas2(){
        return data2Repository.ingresoTuristas2();
    }    
}
