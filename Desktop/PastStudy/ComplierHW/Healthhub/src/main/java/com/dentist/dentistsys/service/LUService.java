package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.LU;
import com.dentist.dentistsys.entity.LUExample;
import com.dentist.dentistsys.entity.userExample;
import com.dentist.dentistsys.mapper.LUMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class LUService {
    @Autowired
    LUMapper luMapper;

    LUExample luExample;
    private ArrayList<LU> lus = new ArrayList<LU>();

    public ArrayList<LU> selByID(String ID){
        luExample =new LUExample();
        luExample.createCriteria().andIdEqualTo(ID);
        lus = (ArrayList<LU>) luMapper.selectByExample(luExample);
        return lus;
    }
    public void ins(String ID){
        LU lu=new LU();
        lu.setId(ID);
        lu.setStatus("login");
        luMapper.insert(lu);
    }
    public void Del(String ID){
        luExample =new LUExample();
        luExample.createCriteria().andIdEqualTo(ID);
        luMapper.deleteByExample(luExample);
    }
}
