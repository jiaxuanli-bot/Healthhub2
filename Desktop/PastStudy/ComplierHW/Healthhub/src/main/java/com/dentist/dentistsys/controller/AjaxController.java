package com.dentist.dentistsys.controller;

import com.dentist.dentistsys.entity.blog;
import com.dentist.dentistsys.entity.user;
import com.dentist.dentistsys.service.BlogService;
import com.dentist.dentistsys.service.MailService;

import java.text.SimpleDateFormat;
import java.util.Date;
import com.dentist.dentistsys.service.UserService;
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


}