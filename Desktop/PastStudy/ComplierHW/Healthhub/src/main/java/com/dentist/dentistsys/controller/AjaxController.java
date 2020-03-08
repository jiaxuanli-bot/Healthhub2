package com.dentist.dentistsys.controller;

import com.dentist.dentistsys.entity.blog;
import com.dentist.dentistsys.entity.disscussion;
import com.dentist.dentistsys.entity.dissemination;
import com.dentist.dentistsys.entity.user;
import com.dentist.dentistsys.service.*;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.Data;
import java.util.Random;

import static com.dentist.dentistsys.service.PasswordService.getStringRandom;

@RestController
@RequestMapping("/ajax")
public class AjaxController {
    @Autowired
    private MailService mailService;
    @Autowired
    private UserService userservice;
    @Autowired
    private BlogService blogService;
    @Autowired
    private DisseminationService disseminationService;
    @Autowired
    private DisscussionService disscussionService;

    @RequestMapping(value = "/mail", method = {RequestMethod.GET})
    @ResponseBody
    public String getCheckCode(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        user user = userservice.Sel(id);
        String checkCode = String.valueOf(new Random().nextInt(899999) + 100000);
        String message = "您的注册验证码为："+checkCode;
        System.out.println(checkCode);
        try {
            System.out.println(user.getEmail());
            mailService.sendSimpleMail(user.getEmail()+"", "注册验证码", message);
        }catch (Exception e){
            return "";
        }
        return checkCode;
    }
    @RequestMapping(value = "/approve", method = {RequestMethod.POST})
    @ResponseBody
    public String Approve(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        user user = userservice.Sel(id);
        user.setType("1");
        String password = getStringRandom(8);
        String message = "Your password is："+password;
        user.setPassword(password);
        try {
            System.out.println(user.getEmail());
            mailService.sendSimpleMail(user.getEmail()+"", "RandomPassword", message);
        }catch (Exception e){
            System.out.println("occur worng in email");
        };
        userservice.Upd(user);
        return "1";
    }

    @RequestMapping(value = "/blog", method = {RequestMethod.POST})
    @ResponseBody
    public String SendBlog(HttpServletRequest request){
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-dd HH");
        String id=request.getParameter("id");
        String name =request.getParameter("name");
        String text = request.getParameter("text");
        blog blog =new blog();
        blog.setId(id);
        blog.setContext(text);
        blog.setSender(name);
        blog.setData(dateFormat.format(date));
        blogService.Ins(blog);
        return "1";
    }

    @RequestMapping(value = "/refuse", method = {RequestMethod.POST})
    @ResponseBody
    public String Refuse(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        userservice.Del(id);
        return "1";
    }
    @RequestMapping(value = "/admin/dissemination", method = {RequestMethod.POST})
    @ResponseBody
    public String insertDissemination(HttpServletRequest request){
        System.out.println("ajax dissemination");
        String time=request.getParameter("time");
        System.out.println(time);
        String username=request.getParameter("username");
        System.out.println(username);
        String message=request.getParameter("message");
        System.out.println(message);
        String topic=request.getParameter("topic");
        System.out.println(topic);
        String keyword=request.getParameter("keyword");
        System.out.println(keyword);
       String group=request.getParameter("group");
        System.out.println(group);
        String status=request.getParameter("status");
        dissemination dissemination=new dissemination();
        dissemination.setDisstate(status);
        dissemination.setDisdate(time);
        dissemination.setDisname(username);
        dissemination.setDismessage(message);
        dissemination.setDistopic(topic);
        dissemination.setDiskeyword(keyword);
        dissemination.setDisgroup(group);
        dissemination.setDisid(status);
        disseminationService.ins(dissemination);
        return "1";
    }
    @RequestMapping(value = "/approvedis", method = {RequestMethod.POST})
    @ResponseBody
    public String approvedis(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        disseminationService.approve(id);
        return "1";
    }
    @RequestMapping(value = "/refusedis", method = {RequestMethod.POST})
    @ResponseBody
    public String refusedis(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        disseminationService.DeleteByID(id);
        return "1";
    }

    @RequestMapping(value = "/approvedisc", method = {RequestMethod.POST})
    @ResponseBody
    public String approvedisc(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        disscussionService.approve(id);
        return "1";
    }
    @RequestMapping(value = "/refusedisc", method = {RequestMethod.POST})
    @ResponseBody
    public String refusedisc(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        disscussionService.DeleteByID(id);
        return "1";
    }
    @RequestMapping(value = "/admin/disscussion", method = {RequestMethod.POST})
    @ResponseBody
    public String insertDisscussion(HttpServletRequest request){
        System.out.println("ajax dissemination");
        String time=request.getParameter("time");
        System.out.println(time);
        String username=request.getParameter("username");
        System.out.println(username);
        String message=request.getParameter("message");
        System.out.println(message);
        String topic=request.getParameter("topic");
        System.out.println(topic);
        String keyword=request.getParameter("keyword");
        System.out.println(keyword);
        String group=request.getParameter("group");
        System.out.println(group);
        String status=request.getParameter("status");
        disscussion disscussion =new disscussion();
        disscussion.setDisdate(time);
        disscussion.setDisname(username);
        disscussion.setDismessage(message);
        disscussion.setDistopic(topic);
        disscussion.setDiskeyword(keyword);
        disscussion.setDisgroup(group);
        disscussion.setDisstate(status);
        disscussionService.ins(disscussion);
        //disseminationService.ins(dissemination);
        return "1";
    }
}