package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.disscussion;
import com.dentist.dentistsys.entity.disscussionExample;
import com.dentist.dentistsys.entity.dissemination;
import com.dentist.dentistsys.entity.disseminationExample;
import com.dentist.dentistsys.mapper.disseminationMapper;
import org.apache.ibatis.jdbc.Null;
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
        disscussion.setDistype("dis");
        disscussionMapper.insert(disscussion);
    }

    public void updateStateById(String id,String state){
        System.out.println(id);
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        ArrayList<disscussion> disscussions= (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        disscussions.get(0).setDistype(state);
        disscussionMapper.updateByExample(disscussions.get(0),d);
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

    public ArrayList<disscussion> getDisscussionByID(String id){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisnameEqualTo(id).andDisterminateIsNull();
        arrayList = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        return arrayList;
    }

    public ArrayList<disscussion> getByType(String type){
        disscussionExample d=new disscussionExample();
        d.createCriteria().andDistypeEqualTo(type);
        arrayList = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        return arrayList;
    }

    public ArrayList<disscussion> Searchdisscussions(String type,String Date,String Username,String Topic){
        disscussionExample d = new disscussionExample();
        if (Username.length() > 0) {
            System.out.println("2>0");
            d.createCriteria().andDisnameEqualTo(Username);
        }
        if (Topic.length() > 0) {
            System.out.println("3>0");
            d.createCriteria().andDistopicEqualTo(Topic);
        }
        if (type.length() > 0){
            System.out.println("4>0");
            if (type.equals("tpatient")){
                d.createCriteria().andDisgroupEqualTo("patient");
            }
            else if(type.equals("tnurse")){
                d.createCriteria().andDisgroupEqualTo("nurse");
            }
        }
        d.createCriteria().andDisidIsNotNull();
        arrayList = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);

        if (Date.length() > 0) {
        ArrayList res = new ArrayList();
        for (int i = 0;i < arrayList.size(); i++) {
//            System.out.println(Date);
//            System.out.println(arrayList.get(i).getDisdate().substring(0,2));
//            System.out.println(Date.substring(5,7));
//            System.out.println(arrayList.get(i).getDisdate().substring(3,5));
//            System.out.println(Date.substring(8,10));
//            System.out.println(arrayList.get(i).getDisdate().substring(6,10));
//            System.out.println(Date.substring(0,4));

            if (arrayList.get(i).getDisdate().substring(0,2).equals(Date.substring(5,7))&&arrayList.get(i).getDisdate().substring(3,5).equals(Date.substring(8,10))&&arrayList.get(i).getDisdate().substring(6,10).equals(Date.substring(0,4))){
                res.add(arrayList.get(i));
            }
        }
        return res;}
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
    public void appcite(String id){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        disscussionMapper.deleteByExample(d);
    }
    public void DeleteByID(String id){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        disscussionMapper.deleteByExample(d);
    }
    public void SetTerstatus(String id,String status){
        disscussionExample d = new disscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        ArrayList<disscussion> disscussions = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        if (status.length()>0) {
            disscussions.get(0).setDisterminate(status);
        }else {
            disscussions.get(0).setDisterminate(null);
        }
        disscussionMapper.updateByExample(disscussions.get(0),d);
    }
    public ArrayList<disscussion> getByID(String id){
        disscussionExample d =new disscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        ArrayList<disscussion> disscussions = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        //System.out.println(disscussions.get(0));
        return disscussions;
    }
    public ArrayList<disscussion> getByTer(String ter){
        disscussionExample d =new disscussionExample();
        d.createCriteria().andDisterminateEqualTo(ter);
        ArrayList<disscussion> disscussions = (ArrayList<disscussion>) disscussionMapper.selectByExample(d);
        //System.out.println(disscussions.get(0));
        return disscussions;
    }
}