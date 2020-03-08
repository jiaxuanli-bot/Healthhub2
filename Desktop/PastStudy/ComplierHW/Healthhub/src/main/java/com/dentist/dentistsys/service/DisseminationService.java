package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.blog;
import com.dentist.dentistsys.entity.blogExample;
import com.dentist.dentistsys.entity.dissemination;
import com.dentist.dentistsys.entity.disseminationExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class DisseminationService {
    ArrayList<dissemination> arrayList;
    @Autowired
    private com.dentist.dentistsys.mapper.disseminationMapper disseminationMapper;
    public void ins(dissemination dissemination){
        disseminationExample d =new disseminationExample();
        d.createCriteria().andDisdateIsNotNull();
        arrayList = (ArrayList<com.dentist.dentistsys.entity.dissemination>) disseminationMapper.selectByExample(d);
        if (arrayList.size()==0){
            dissemination.setDisid("0");
        }
        else {
        dissemination.setDisid((String.valueOf(Integer.parseInt(arrayList.get(arrayList.size()-1).getDisid())+1)).toString());}
        disseminationMapper.insert(dissemination);
    }
    public ArrayList<dissemination> getdesseminationforNurse(){
        disseminationExample d = new disseminationExample();
        d.createCriteria().andDisgroupEqualTo("nurse").andDisstateEqualTo("1");
        arrayList = (ArrayList<dissemination>) disseminationMapper.selectByExample(d);
        return arrayList;
    }
    public ArrayList<dissemination> getdesseminationforPatient(){
        disseminationExample d =new disseminationExample();
        d.createCriteria().andDisgroupEqualTo("patient").andDisstateEqualTo("1");
        arrayList = (ArrayList<dissemination>) disseminationMapper.selectByExample(d);
        return arrayList;

    }
    public ArrayList<dissemination> getAlldessemination(){
        disseminationExample d = new disseminationExample();
        d.createCriteria().andDisgroupIsNotNull().andDisstateEqualTo("1");
        arrayList = (ArrayList<dissemination>) disseminationMapper.selectByExample(d);
        return arrayList;
    }
    public ArrayList<dissemination> getUnUsefullDessemination(){
        disseminationExample d = new disseminationExample();
        d.createCriteria().andDisstateEqualTo("0");
        arrayList = (ArrayList<dissemination>) disseminationMapper.selectByExample(d);
        return arrayList;
    }
    public void approve(String id){
        disseminationExample d = new disseminationExample();
        d.createCriteria().andDisidEqualTo(id);
        ArrayList<dissemination> disseminations = (ArrayList<dissemination>) disseminationMapper.selectByExample(d);
        disseminations.get(0).setDisstate("1");
        disseminationMapper.updateByExample(disseminations.get(0),d);
    }
    public void DeleteByID(String id){
        disseminationExample d=new disseminationExample();
        d.createCriteria().andDisidEqualTo(id);
        disseminationMapper.deleteByExample(d);
    }
}
