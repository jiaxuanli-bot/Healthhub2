package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.blog;
import com.dentist.dentistsys.entity.blogExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
@Service
public class BlogService {
    ArrayList<blog> arrayList;
    @Autowired
    private com.dentist.dentistsys.mapper.blogMapper blogMapper;
    public blog GetBlogByID(String Id){
        return blogMapper.selectByPrimaryKey(Id);
    }
    public ArrayList<blog> GetAll(){
       blogExample blogExample = new blogExample();
       blogExample.createCriteria().andIdIsNotNull();
       arrayList = (ArrayList<blog>) blogMapper.selectByExample(blogExample);
       return arrayList;
   }

    public ArrayList<blog> GetBlogbySeder(String sender){
        blogExample blogExample = new blogExample();
        blogExample.createCriteria().andSenderEqualTo(sender);
        arrayList = (ArrayList<blog>) blogMapper.selectByExample(blogExample);
        return  arrayList;
    }



    public String GetBlogId(){
       blogExample blogExample = new blogExample();
       blogExample.createCriteria().andIdIsNotNull();
       arrayList = (ArrayList<blog>) blogMapper.selectByExample(blogExample);
       String num = arrayList.get(arrayList.size()-1).getId();
       int i = Integer.parseInt(num);
       return String.valueOf(i);
   }
   public void Ins(blog blog){
        blogMapper.insert(blog);
   }

}