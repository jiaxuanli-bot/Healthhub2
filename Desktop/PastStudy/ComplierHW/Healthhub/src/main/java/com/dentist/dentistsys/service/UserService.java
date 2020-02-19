package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.user;
import com.dentist.dentistsys.entity.userExample;
import com.dentist.dentistsys.mapper.userMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UserService {
    @Autowired
    userMapper userMapper;

    userExample userExample;
    private ArrayList<user> arrayList = new ArrayList<user>();

    public user Sel(String id){
        return userMapper.selectByPrimaryKey(id);
   }

    public ArrayList<user> SelAll(){
        userExample = new userExample();
        userExample.createCriteria().andTypeNotEqualTo("UNpatient").andTypeNotEqualTo("UNdoctor").andTypeNotEqualTo("UNhygienist").andTypeNotEqualTo("admin");
        arrayList = (ArrayList<user>) userMapper.selectByExample(userExample);
        return  arrayList;
    }

    public ArrayList<user> SelectByType(String type){
        userExample = new userExample();
        userExample.createCriteria().andTypeEqualTo(type);
        arrayList = (ArrayList<user>) userMapper.selectByExample(userExample);
        return  arrayList;
    }

    public void Del(String id) { userMapper.deleteByPrimaryKey(id); }

    public void Ins(user user) { userMapper.insert(user); }

    public void Upd(user user) { userMapper.updateByPrimaryKey(user); }

    public void Upd(user user, userExample userExample) { userMapper.updateByExample(user, userExample); }

}



