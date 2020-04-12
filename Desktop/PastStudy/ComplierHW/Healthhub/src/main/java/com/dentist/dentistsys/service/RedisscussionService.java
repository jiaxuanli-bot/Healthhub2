package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.commentExample;
import com.dentist.dentistsys.entity.reDisscussion;
import com.dentist.dentistsys.entity.reDisscussionExample;
import com.dentist.dentistsys.mapper.reDisscussionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
@Service
public class RedisscussionService {
    @Autowired
    reDisscussionMapper reDisscussionMapper;
    reDisscussionExample reDisscussionExample;
    public String GetSize(){
        reDisscussionExample d= new reDisscussionExample();
         d.createCriteria();
        ArrayList<reDisscussion> reDisscussions = (ArrayList<reDisscussion>) reDisscussionMapper.selectByExample(d);
        System.out.println("size ssss+++++++");
        System.out.println(reDisscussions.size());
        if (reDisscussions.size()>0) {
            return reDisscussions.get(reDisscussions.size()-1).getDisid();
        }else {
            return "0";
        }
    }
    public ArrayList<reDisscussion> getAll(){
        reDisscussionExample d=new reDisscussionExample();
        d.createCriteria().andDisidIsNotNull();
        ArrayList<reDisscussion> reDisscussions = (ArrayList<reDisscussion>) reDisscussionMapper.selectByExample(d);
        return reDisscussions;
    }
    public void DeleteByID(String id){
        reDisscussionExample d =new reDisscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        reDisscussionMapper.deleteByExample(d);
    }
    public ArrayList<reDisscussion> getByType(String type){
        reDisscussionExample d=new reDisscussionExample();
        d.createCriteria().andDistypeEqualTo(type);
        ArrayList<reDisscussion> reDisscussions = (ArrayList<reDisscussion>) reDisscussionMapper.selectByExample(d);
        return reDisscussions;
    }
    public ArrayList<reDisscussion> GetReplyByID(String ID){
        reDisscussionExample d= new reDisscussionExample();
        d.createCriteria().andDisparentidEqualTo(ID);
        ArrayList<reDisscussion> comments =new ArrayList<reDisscussion>();
        comments = (ArrayList<reDisscussion>) reDisscussionMapper.selectByExample(d);
        return comments;
    }

    public void updateStateById(String id,String state){
        reDisscussionExample d =new reDisscussionExample();
        d.createCriteria().andDisidEqualTo(id);
        ArrayList<reDisscussion> reDisscussions= (ArrayList<reDisscussion>) reDisscussionMapper.selectByExample(d);
        reDisscussions.get(0).setDistype(state);
        reDisscussionMapper.updateByExample(reDisscussions.get(0),d);
    }
    public void ins(reDisscussion reDisscussion){
        reDisscussion.setDistype("1");
        reDisscussionExample =new reDisscussionExample();
        ArrayList<reDisscussion> arrayList =new ArrayList<reDisscussion>();
        reDisscussionExample.createCriteria().andDisdateIsNotNull();
        arrayList = (ArrayList<reDisscussion>) reDisscussionMapper.selectByExample(reDisscussionExample);
        if (arrayList.size()==0){
            reDisscussion.setDisid("0");
        } else{
            reDisscussion.setDisid((String.valueOf(Integer.parseInt(arrayList.get(arrayList.size()-1).getDisid())+1)).toString());
        }
        reDisscussion.setDistype("redis");
        reDisscussionMapper.insert(reDisscussion);
    }
}
