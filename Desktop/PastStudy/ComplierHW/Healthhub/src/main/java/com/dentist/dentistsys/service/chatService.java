package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.chat;
import com.dentist.dentistsys.entity.chatExample;
import com.dentist.dentistsys.mapper.chatMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class chatService {
    @Autowired
    chatMapper chatMapper;
    com.dentist.dentistsys.entity.chatExample chatExample;
    ArrayList<chat> chats;
    public void ins(chat chat){
        chatExample d= new chatExample();
        d.createCriteria().andIdIsNotNull();
        chats = (ArrayList<chat>) chatMapper.selectByExample(d);
        if (chats.size()==0){
            chat.setId("0");
        }else
            {
                chat.setId((String.valueOf(Integer.parseInt(chats.get(chats.size()-1).getId())+1)).toString());
            }
            chatMapper.insert(chat);
    }


    public void delById(String id){
        chatExample d =new chatExample();
        d.createCriteria().andIdEqualTo(id);
        chatMapper.deleteByExample(d);
    }
    public void setStatusByid(String id,String status){
        chatExample d = new chatExample();
        d.createCriteria().andIdEqualTo(id);
        chats = (ArrayList<chat>) chatMapper.selectByExample(d);
        chats.get(0).setStatus(status);
        d = new chatExample();
        d.createCriteria().andIdEqualTo(id);
        chatMapper.updateByExample(chats.get(0),d);
    }
    public ArrayList<chat> getByReceiver(String sender){
        chatExample d =new chatExample();
        d.createCriteria().andReceiverEqualTo(sender).andStatusEqualTo("3");
        chats = (ArrayList<chat>) chatMapper.selectByExample(d);
        return chats;
    }
    public ArrayList<chat> getByStatus(String status){
        chatExample d =new chatExample();
        d.createCriteria().andStatusEqualTo(status);
        chats = (ArrayList<chat>) chatMapper.selectByExample(d);
        return chats;
    }
    public ArrayList<chat> getAll(){
        chatExample d =new chatExample();
        d.createCriteria().andIdIsNotNull();
        chats = (ArrayList<chat>) chatMapper.selectByExample(d);
        return chats;
    }
}
