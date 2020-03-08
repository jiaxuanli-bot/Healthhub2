package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.disscussion;
import com.dentist.dentistsys.entity.disscussionExample;
import com.dentist.dentistsys.entity.dissemination;
import com.dentist.dentistsys.entity.disseminationExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class DisscussionService {
    ArrayList<disscussion> arrayList;
    @Autowired
    private com.dentist.dentistsys.mapper.disscussionMapper disscussionMapper;
    public void ins(disscussion disscussion){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisdateIsNotNull();
        arrayList = (ArrayList<com.dentist.dentistsys.entity.disscussion>) disscussionMapper.selectByExample(d);
        if (arrayList.size()==0){
            disscussion.setDisid("0");
        } else{
            disscussion.setDisid((String.valueOf(Integer.parseInt(arrayList.get(arrayList.size()-1).getDisid())+1)).toString());
        }

        disscussionMapper.insert(disscussion);
    }



    public ArrayList<disscussion> getDisscussionNurse(){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisgroupEqualTo("nurse").andDisstateEqualTo("1");
        arrayList = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        return arrayList;
    }
    public ArrayList<disscussion> getDisscussionPatient(){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisgroupEqualTo("patient").andDisstateEqualTo("1");
        arrayList = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        return arrayList;

    }
    public ArrayList<disscussion> getAlldissscussion(){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisgroupIsNotNull().andDisstateEqualTo("1");
        arrayList = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        return arrayList;
    }
    public ArrayList<disscussion> getUnUsefulldisscussion(){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisstateEqualTo("0");
        arrayList = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        return arrayList;
    }
    public void approve(String id){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        ArrayList<disscussion> disscussions = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        disscussions.get(0).setDisstate("1");
        disscussionMapper.updateByExample(disscussions.get(0),d);
    }
    public void DeleteByID(String id){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        disscussionMapper.deleteByExample(d);
    }
    public ArrayList<disscussion> getByID(String id){
        disscussionExample d =new disscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        ArrayList<disscussion> disscussions = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        //System.out.println(disscussions.get(0));
        return disscussions;
    }
}