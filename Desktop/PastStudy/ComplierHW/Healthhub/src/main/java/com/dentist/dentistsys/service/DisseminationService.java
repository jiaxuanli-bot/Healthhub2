package com.dentist.dentistsys.service;

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
            dissemination.setDistype("des");
        dissemination.setDisid((String.valueOf(Integer.parseInt(arrayList.get(arrayList.size()-1).getDisid())+1)).toString());}
        disseminationMapper.insert(dissemination);
    }
    public ArrayList<dissemination> getdesseminationforNurse(){
        disseminationExample d = new disseminationExample();
        d.createCriteria().andDisgroupEqualTo("nurse").andDisstateEqualTo("1");
        arrayList = (ArrayList<dissemination>) disseminationMapper.selectByExample(d);
        return arrayList;
    }
    public void updateStateById(String id,String state,String aditional){
        disseminationExample d =new disseminationExample();
        d.createCriteria().andDisidEqualTo(id);
        ArrayList<dissemination> disseminations= (ArrayList<dissemination>) disseminationMapper.selectByExample(d);
        disseminations.get(0).setDistype(state);
        disseminations.get(0).setCiteinf(aditional);
        disseminationMapper.updateByExample(disseminations.get(0),d);
    }

    public ArrayList<dissemination> getBytype(String type){
        disseminationExample d=new disseminationExample();
        d.createCriteria().andDistypeEqualTo(type);
        arrayList = (ArrayList<dissemination>) disseminationMapper.selectByExample(d);
        return arrayList;
    }

    public ArrayList<dissemination> Searchdesseminations(String type,String Date,String Username,String Topic,String hour){
        disseminationExample d = new disseminationExample();
        disseminationExample.Criteria c =d.createCriteria();
        System.out.println("t "+type+" date "+Date+"name is"+Username+" Time"+Topic);
        if (Username.length() > 0) {
            c.andDisnameEqualTo(Username);
       }
        if (Topic.length() > 0) {
            c.andDistopicEqualTo(Topic);
        }
        if (type.length() > 0){
            if (type.equals("tpatient")){
                c.andDisgroupEqualTo("patient");
            }
            else if(type.equals("tnurse")){
                c.andDisgroupEqualTo("nurse");
            }
        }
        c.andDisidIsNotNull();
        arrayList = (ArrayList<dissemination>) disseminationMapper.selectByExample(d);
        if (Date.length() > 0) {
            ArrayList res = new ArrayList();
            for (int i = 0;i < arrayList.size(); i++) {
                if (arrayList.get(i).getDisdate().substring(0,2).equals(Date.substring(5,7))&&arrayList.get(i).getDisdate().substring(3,5).equals(Date.substring(8,10))&&arrayList.get(i).getDisdate().substring(6,10).equals(Date.substring(0,4))){
                    if (hour.length()>0){
                        if (hour.equals(arrayList.get(i).getDisdate().substring(11,13))){
                            res.add(arrayList.get(i));
                        }
                    }else {
                    res.add(arrayList.get(i));}
                }
            }
            return res;}
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
    public void appcite(String id){
        disseminationExample d = new disseminationExample();
        d.createCriteria().andDisidEqualTo(id);
        disseminationMapper.deleteByExample(d);
    }
    public void DeleteByID(String id){
        disseminationExample d=new disseminationExample();
        d.createCriteria().andDisidEqualTo(id);
        disseminationMapper.deleteByExample(d);
    }
}
